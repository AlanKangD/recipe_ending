package com.care.root.recipeBoard.service;

import com.care.root.recipeBoard.vo.RecipeVO;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface RecipeBoardService {

	public void insertFisrtStep(RecipeVO vo);

	public void insertSecountStep(RecipeVO vo);
}
