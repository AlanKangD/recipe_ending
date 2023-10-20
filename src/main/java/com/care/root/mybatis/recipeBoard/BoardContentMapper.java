package com.care.root.mybatis.recipeBoard;

import com.care.root.file.vo.FileVO;
import com.care.root.recipeBoard.vo.RecipeVO;
import org.springframework.stereotype.Repository;

@Repository
public interface BoardContentMapper {
	public void insertFisrtStep(RecipeVO vo);


}
