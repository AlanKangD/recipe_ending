package com.care.root.file.controller;

import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

public interface FileService {

    public String fileProcess(MultipartFile file, String type) throws IOException;

    public void fileDelete(int recipeNo);

}
