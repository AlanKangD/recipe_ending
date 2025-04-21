package com.care.root.file.controller;

import com.care.root.mybatis.file.StaticFileInputMapper;
import com.care.root.file.vo.FileVO;
import org.apache.commons.net.ftp.FTPClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Random;
import org.apache.commons.net.ftp.FTP;
@Primary
@Service
public class FileServiceImpl implements FileService{

    @Autowired
    StaticFileInputMapper fileInputMapper;

    
    public static final String IMAGE_REPO = "/Users/alankang/Documents/images/imagerepo";

    @Override
    public String fileProcess(MultipartFile file, String type) throws IOException {
        // MultipartFile file = mul.getFile("file");

        String randomCode = generateRandomCode(10);

        String fileName = file.getOriginalFilename();
        String ext = fileName.substring(fileName.lastIndexOf("."));
        SimpleDateFormat fo = new SimpleDateFormat("yyyyMMddHHmmss-"); //format 형식 설정
        Calendar calendar = Calendar.getInstance(); //현재시간 받아오기
        String sysFileName = fo.format(calendar.getTime()); //현재시간을 보기 편하게 format을 해주고 값넣고
        System.out.println("######## " + ext);
        randomCode +=  ext;
        sysFileName += randomCode;
        InputStream inputStream = file.getInputStream();

        FTPClient ftpClient = new FTPClient();
        try {

            ftpClient.connect("qkqtodn1.ipdisk.co.kr", 21);
            ftpClient.login("kno12350", "ehddnjs4140");
            ftpClient.enterLocalPassiveMode();
            ftpClient.setFileType(FTP.BINARY_FILE_TYPE);


            boolean cd1 = ftpClient.changeWorkingDirectory("/HDD1");
            System.out.println("📂 HDD1 접근: " + cd1);

            boolean cd2 = ftpClient.changeWorkingDirectory("/HDD1/upload");
            System.out.println("📂 HDD1/upload 접근: " + cd2);

            boolean success = ftpClient.storeFile( "/HDD1/upload/" + sysFileName, inputStream);


            int replyCode = ftpClient.getReplyCode();
            System.out.println("📨 서버 응답 코드: " + replyCode);



            if (!success) {
                throw new IOException("FTP 파일 업로드 실패");
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        } finally {
            inputStream.close();
            if (ftpClient.isConnected()) {
                ftpClient.logout();
                ftpClient.disconnect();
            }
        }


        // Random 객체 생성
        if(file.getSize() != 0) { //같은 의미로 if( !file.isEmpty() ) 입니다.
            File saveFile = new File(IMAGE_REPO + "/" + sysFileName); //파일의 최종 경로라고 생각하면됩니다.
            try {
                file.transferTo(saveFile); //파일을 저장하는 명령문
            } catch (IllegalStateException | IOException e) {
                e.printStackTrace();
            }
        }else {

        }
        FileVO vo = new FileVO();
        vo.setFileOriginalName(file.getOriginalFilename());
        vo.setFileChangeName(sysFileName);
        vo.setFileSize(String.valueOf(file.getSize()));
        vo.setFileType(file.getContentType());
        vo.setFileRegType(type);

        fileInputMapper.insertFileDB(vo);

        return sysFileName;

    }

    @Override
    public void fileDelete(int recipeNo) {

    }

    public static String generateRandomCode(int length) {
        // 랜덤 숫자 배열
        String characters = "0123456789";

        StringBuilder randomCode = new StringBuilder(length);
        Random random = new Random();
        for (int i = 0; i < length; i++) {
            int index = random.nextInt(characters.length());
            char randomChar = characters.charAt(index);
            randomCode.append(randomChar);
        }

        return randomCode.toString();
    }
}