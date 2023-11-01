package com.care.root.recipeBoard.controller;

import com.care.root.file.controller.FileService;
import com.care.root.file.controller.FileServiceImpl;
import com.care.root.file.vo.FileVO;
import com.care.root.recipeBoard.service.RecipeBoardService;
import com.care.root.recipeBoard.vo.RecipeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.File;
import java.util.List;

@Controller
public class RecipeBoardController {
	
	@Autowired
	RecipeBoardService rs;

	@Autowired
	FileService fileService;

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
	//@Transactional
	@PostMapping("recipe/recipeBoardWrite")
	public String recipeBoardOneFile(MultipartHttpServletRequest mul,
									 @RequestParam("multiFile") List<MultipartFile> multiFileList,
									 @RequestParam("recipeDetailContent") List<?> recipeDetailContent,
									 @RequestParam("recipeDetailTip") List<?> recipeDetailTip,
									 @RequestParam("recipeEtcIngredient") List<?> recipeEtcIngredient,
									 @RequestParam("recipeEtcQuantity") List<?> recipeEtcQuantity
									 ) {

		// STATIC DB INSERT just one list data
		System.out.println("controller title : " +mul.getParameter("recipeName"));
		System.out.println("controller recipeType : " +mul.getParameter("recipeType"));
		System.out.println("controller recipeExplanation : " +mul.getParameter("recipeExplanation"));


		MultipartFile file = mul.getFile("image_file_name");
		System.out.println("controller file1 : "  + file.getOriginalFilename());
		System.out.println("controller getSize : "  +file.getSize());
		System.out.println("controller getContentType : "  +file.getContentType());

		RecipeVO RecipeVO = new RecipeVO();
		RecipeVO.setRecipeName(mul.getParameter("recipeName"));
		RecipeVO.setRecipeExplanation(mul.getParameter("recipeExplanation"));
		RecipeVO.setRecipeType(mul.getParameter("recipeType"));
		RecipeVO.setRecipeFileName(file.getOriginalFilename());
		fileService.fileProcess(mul.getFile("image_file_name"));
		rs.insertFisrtStep(RecipeVO);

		//////////////first step ok //////////////


		// NOT STATIC DATA dont no data Amount
		System.out.println("controller ingredient : " +mul.getParameter("ingredient"));
		System.out.println("controller ingredientAmount : " +mul.getParameter("ingredientAmount"));

		System.out.println("controller content : " +mul.getParameter("content"));
		System.out.println("controller multiFileList : " + multiFileList);
		for(int i=0; i < multiFileList.size(); i++) {
			System.out.println("multifile :: " + i +"번째 : " +  multiFileList.get(i).getOriginalFilename());
		}

		System.out.println("recipeDetailContent" + recipeDetailContent);
		System.out.println("recipeDetailTip" + recipeDetailTip);
		System.out.println("recipeEtcIngredient" + recipeEtcIngredient);
		System.out.println("recipeEtcQuantity" + recipeEtcQuantity);

		// recipe 재료 영역 등록 start   recipeEtcIngredient recipeEtcQuantity
		List test = (List) mul.getParameterNames();
		/*List recipeEtcIngredienttest = mul.get  recipeEtcQuantity -> {String[2]@6996} ["재료 수량1", "재료 수량2"]
ta
		for(int i = 0; i < )*/



		//////////////////////////////////////////////////////////////////////////////////////////




		//mapper.insertContent(contentVO);
		if(file.getSize() != 0  ) {
			//File saveFile = new File(IMAGE_REPO + "/" + file.getOriginalFilename()); //파일의 최종 경로라고 생각하면됩니다.
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


	
	
}
