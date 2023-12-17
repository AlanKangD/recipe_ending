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
import java.util.*;

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
	@PostMapping(value = "recipe/recipeBoardWrite")
	public String recipeBoardOneFile(MultipartHttpServletRequest mul) {

		RecipeVO recipeVO = new RecipeVO();

		////////////// first Step start //////////////
		// Enumeration 획득
		Enumeration<String> enu = mul.getParameterNames();

		Map map = new HashMap();

		while(enu.hasMoreElements()) {
			String name = (String)enu.nextElement();
			String value = mul.getParameter(name);
			map.put(name, value);
		}

		if(mul.getFile("imageFile") != null) {
			String changeFileName = fileService.fileProcess(mul.getFile("imageFile"));
			recipeVO.setRecipeFileName(changeFileName);   // 파일 이름 변환 오리지널 이름은 파일 테입르에서 조회가능
		}

		if (map != null) {  // 1 Step 레시피 등록
			recipeVO.setRecipeName((String) map.get("recipeName"));
			recipeVO.setRecipeExplanation((String) map.get("recipeExplanation"));
			recipeVO.setRecipeType((String) map.get("recipeType"));
			recipeVO.setRecipeTip((String) map.get("recipeTip"));
			recipeVO.setRecipePerson((String) map.get("recipePerson"));
			recipeVO.setRecipeTime((String) map.get("recipeTime"));
			rs.insertFisrtStep(recipeVO);
		}

		//////////////first step ok //////////////


		///////////// secound step start /////////

		String[] recipeEtc =  mul.getParameterValues("recipeEtc");

		String[] ingredient = mul.getParameterValues("recipeEtcIngredient");
		String[] quantity = mul.getParameterValues("recipeEtcQuantity");
		int checkPoint = 0;
		for(int i=0; i < ingredient.length; i++) {
			if(ingredient[i].equals("startPoint")){  //startPoint 가 시작되면 추가 재료영역이 있는 flag값
				checkPoint++;
				continue;
			}
			recipeVO.setRecipeEtc(recipeEtc[checkPoint]);
			recipeVO.setRecipeEtcIngredient(ingredient[i]);
			List result = splitCheckType(quantity[i]);
			recipeVO.setRecipeEtcQuantity((String) result.get(0));
			recipeVO.setRecipeEtcType((String) result.get(1));

			rs.insertSecountStep(recipeVO);
		}

		///////////// secound step end /////////

		/*
		for(int i=0; i < recipeEtcIngredient.size(); i++) {
			List checkSplit = new ArrayList();
			String splitText = (String) recipeEtcQuantity.get(i);
			System.out.println("############3 " + splitText);

			RecipeVO RecipeEtcVO = new RecipeVO();
			RecipeEtcVO.setRecipeEtcIngredient((String) recipeEtcIngredient.get(i));
			RecipeEtcVO.setRecipeEtcQuantity((String) recipeEtcQuantity.get(i));


			//rs.insertSecountStep(RecipeEtcVO);

		}

		///////////////secount step end /////////////



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
*/
		// recipe 재료 영역 등록 start   recipeEtcIngredient recipeEtcQuantity
		/*List test = (List) mul.getParameterNames();
		System.out.println("################## :: " + test);*/

		/*List recipeEtcIngredienttest = mul.get  recipeEtcQuantity -> {String[2]@6996} ["재료 수량1", "재료 수량2"]
ta
		for(int i = 0; i < )*/


		//////////////////////////////////////////////////////////////////////////////////////////

		//mapper.insertContent(contentVO);

		return  "redirect:recipeBoard";
	}



	@RequestMapping("recipe/recipeList.do")
	public String recipeList() {
		return "recipe/recipeList";
	}


	// g , T , t , ml , l , kg
	public List splitCheckType(String text) {
		List resultList = new ArrayList();
		String[] whiteList = {"g","T" ,"t" ,"ml" ,"L" ,"kg", "개"};
		for(int i=0; i < whiteList.length; i++) {
			if(text.indexOf(whiteList[i]) > 0){
				String substring = text.substring(0, text.indexOf(whiteList[i]));
				resultList.add(substring);
				resultList.add(whiteList[i]);
				return resultList;
			};
		}
		return null;
	}
}
