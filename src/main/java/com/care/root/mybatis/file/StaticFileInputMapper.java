package com.care.root.mybatis.file;

import com.care.root.file.vo.FileVO;
import org.springframework.stereotype.Repository;

@Repository
public interface StaticFileInputMapper {
	public void insertFileDB(FileVO vo);

}
