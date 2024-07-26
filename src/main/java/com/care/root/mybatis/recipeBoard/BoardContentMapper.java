package com.care.root.mybatis.recipeBoard;

import com.care.root.file.vo.FileVO;
import com.care.root.recipeBoard.vo.RecipeVO;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BoardContentMapper {
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
