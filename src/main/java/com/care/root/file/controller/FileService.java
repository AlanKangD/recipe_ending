package com.care.root.file.controller;

import org.springframework.web.multipart.MultipartFile;

public interface FileService {

    public String fileProcess(MultipartFile file);

}
