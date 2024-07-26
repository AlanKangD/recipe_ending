package com.care.root.file.controller;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

@Controller
public class FileController {
    public static final String IMAGE_REPO = "/Users/alankang/Documents/images/imagerepo/";

    @GetMapping("/showImage.do")
    public ResponseEntity<byte[]> view(String fileName) throws Exception {

        //파일객체를 만들어 이미지를 접근하는 경로와 파라미터로 받은 파이이름을 넣어줘서 객체선언
        File file= new File(IMAGE_REPO + fileName);

        //응답을 보낼때 http부분을 커스텀 마이징 해서 보내기 위하여 byte타입의 ResponseEntity 선언
        ResponseEntity<byte[]> result = null;

        try {
            //HttpHeaders 선언
            HttpHeaders header = new HttpHeaders();

            //HttpHeaders의 Content-type는 클라이언트에게 보낼 문서가 어떤종류의 문서인지 문서종류에 대한 정의
            //probeContentType()은 파일의 확장자를 이용하여 MIME타입을 알려줌
            header.add("Content-type", Files.probeContentType(file.toPath()));

            //FileCopyUtils.copyToByteArray 는 대상 파일을 복사하여 Byte 배열로 반환해주는 클래스임.
            //HttpStatus.OK는 이작업이 잘 완료 되었다면 200 ok 사인을 보내라!
            result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);

        }catch (IOException e) {
            e.printStackTrace();
        }

        //마지막에 http정의 해준 부분을 넣어줌
        return result;
    }
}
