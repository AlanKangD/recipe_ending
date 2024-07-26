package com.care.root.recipeBoard.service;

import com.care.root.mybatis.recipeBoard.BoardContentMapper;
import com.care.root.recipeBoard.vo.RecipeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import java.util.List;

@Primary
@Service
public class RecipeBoardServiceImpl implements RecipeBoardService{

	@Autowired
	BoardContentMapper mapper;

	@Override
	public void insertFisrtStep(RecipeVO vo) {
		mapper.insertFisrtStep(vo);
	}

	@Override
	public void insertSecountStep(RecipeVO vo) {
		mapper.insertSecountStep(vo);
	}

	@Override
	public void insertThirdStep(RecipeVO vo) {
		mapper.insertThirdStep(vo);
	}

	@Override
	public List<RecipeVO> selectRecipeList(RecipeVO search) {

		return mapper.selectRecipeList(search);

	}

	@Override
	public int listTotalCnt(RecipeVO search) {
		return mapper.listTotalCnt(search);
	}

	@Override
	public List<RecipeVO> selectRecipe(String recipeNo) {
		return mapper.selectRecipe(recipeNo);
	}

	@Override
	public List<RecipeVO> selectRecipeEtc(String recipeNo) {
		return mapper.selectRecipeEtc(recipeNo);
	}

	@Override
	public void recipeDel(String recipeNo) {
		mapper.recipeDel(recipeNo);
	}

	@Override
	public List categoryList() {
		return mapper.categoryList();
	}

	@Override
	public List timelist() {
		return mapper.timelist();
	}


}
