package com.care.root.recipeBoard.controller;

import com.care.root.recipeBoard.vo.FileVO;
import com.care.root.recipeBoard.service.RecipeBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.File;
import java.util.List;

@Controller
public class RecipeBoardController {
	
	/*@Autowired
	RecipeBoardService rs;*/
	public static final String IMAGE_REPO = "/user/Documents/images";
	@GetMapping("recipe/recipeBoard")
	public String recipeBoardList() {
		
		return "recipe/recipeBoard";
	}

	@RequestMapping(value = "recipe/index.do" , method = RequestMethod.GET)
	public String recipeIndex() {
		return "recipe/recipeIndex";
	}
	
	@GetMapping("recipe/recipeBoardWrite.do")
	public String recipeBoardWrite() {
		
		return "recipe/recipeBoardWriteForm";
	}
	@Transactional
	@PostMapping("recipe/recipeBoardWrite")
	public String recipeBoardOneFile(MultipartHttpServletRequest mul, @RequestParam("multiFile") List<MultipartFile> multiFileList) {
		// STATIC DB INSERT just one data
		System.out.println("controller title : " +mul.getParameter("title"));
		System.out.println("controller recipeExplanation : " +mul.getParameter("recipeExplanation"));
		MultipartFile file = mul.getFile("image_file_name");
		System.out.println("controller file1 : "  +file.getOriginalFilename());
		System.out.println("controller getSize : "  +file.getSize());
		System.out.println("controller getContentType : "  +file.getContentType());
		System.out.println("controller recipeTip : " +mul.getParameter("recipeTip"));

		//////////////////////////////////////////////////////////////////////////////////////////


		// NOT STATIC DATA dont no data Amount
		System.out.println("controller ingredient : " +mul.getParameter("ingredient"));
		System.out.println("controller ingredientAmount : " +mul.getParameter("ingredientAmount"));

		System.out.println("controller content : " +mul.getParameter("content"));
		System.out.println("controller multiFileList : " + multiFileList);
		for(int i=0; i < multiFileList.size(); i++) {
			System.out.println("multifile :: " + i +"번째 : " +  multiFileList.get(i).getOriginalFilename());
		}

		//////////////////////////////////////////////////////////////////////////////////////////




		//mapper.insertContent(contentVO);
		if(file.getSize() != 0  ) {
			File saveFile = new File(IMAGE_REPO + "/" + file.getOriginalFilename()); //파일의 최종 경로라고 생각하면됩니다.
/*
			File saveFile1 = new File(IMAGE_REPO + "/" + file1.getOriginalFilename()); //파일의 최종 경로라고 생각하면됩니다.
*/
			FileVO fileVO  = new FileVO();
			/*try {
			*//*	file.transferTo(saveFile); //파일을 저장하는 명령문
				file1.transferTo(saveFile1); //파일을 저장하는 명령문
				file2.transferTo(saveFile2); //파일을 저장하는 명령문
				fileVO.setFileseq(1);
				fileVO.setFile1(file.getOriginalFilename());
				fileVO.setFile2(file1.getOriginalFilename());
				fileVO.setFile3(file2.getOriginalFilename());*//*

			//	mapper.insertFile(fileVO);
			} catch (IllegalStateException) {

			}
		}else {

		}
		*/
		}

		return  "redirect:recipeBoard";
	}

	@GetMapping("recipe/recipeList.do")
	public String recipeList() {
		return "recipe/recipeList";
	}

	@GetMapping("recipe/template.do")
	public String template() {
		return "recipe/template";
	}
	
}
