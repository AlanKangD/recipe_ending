package com.care.root.recipeBoard.service;

import com.care.root.recipeBoard.vo.RecipeVO;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.util.List;

public interface RecipeBoardService {

	public void insertFisrtStep(RecipeVO vo);

	public void insertSecountStep(RecipeVO vo);

	public void insertThirdStep(RecipeVO vo);

	public List<RecipeVO> selectRecipeList(RecipeVO search);
	public int listTotalCnt(RecipeVO search);
	public List<RecipeVO> selectRecipe(String recipeNo);
	public List<RecipeVO> selectRecipeEtc(String recipeNo);
	public void recipeDel(String recipeNo);

	public List categoryList();
	public List timelist();
}
