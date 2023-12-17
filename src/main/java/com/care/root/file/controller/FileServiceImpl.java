package com.care.root.file.controller;

import com.care.root.mybatis.file.StaticFileInputMapper;
import com.care.root.file.vo.FileVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Random;
@Primary
@Service
public class FileServiceImpl implements FileService{

    @Autowired
    StaticFileInputMapper fileInputMapper;

    
    public static final String IMAGE_REPO = "/Users/alankang/Documents/images/imagerepo";

    @Override
    public String fileProcess(MultipartFile file) {
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

        fileInputMapper.insertFileDB(vo);

        return sysFileName;

    }

    public static String generateRandomCode(int length) {
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