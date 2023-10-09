package com.care.root.recipeBoard.service;

import com.care.root.recipeBoard.mapper.BoardContentMapper;
import com.care.root.recipeBoard.mapper.StaticFileInputMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Primary
@Service
public class RecipeBoardServiceImpl implements RecipeBoardService{
	@Autowired
	StaticFileInputMapper fileMapper;
	@Autowired
	BoardContentMapper mapper;

	@Override
	public void staticFileInput(MultipartHttpServletRequest mul) {
		

		
		
		
	}


	
	
	
}
