package com.care.root.recipeBoard.service;

import com.care.root.recipeBoard.vo.RecipeVO;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.util.List;

public interface RecipeBoardService {

	public void insertFisrtStep(RecipeVO vo);

	public void insertSecountStep(RecipeVO vo);

	public void insertThirdStep(RecipeVO vo);

	public List<RecipeVO> selectRecipeList();
	public int listTotalCnt();
}
