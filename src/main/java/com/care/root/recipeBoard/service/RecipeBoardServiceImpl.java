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
	public List<RecipeVO> selectRecipeList() {

		return mapper.selectRecipeList();

	}

	@Override
	public int listTotalCnt() {
		return mapper.listTotalCnt();
	}


}
