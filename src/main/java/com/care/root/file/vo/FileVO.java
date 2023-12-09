package com.care.root.file.vo;

import java.sql.Date;

public class FileVO {
	private int fileNo;    // 파일 seq
	private String fileOriginalName;  // 파일 기존 이름
	private String fileChangeName;    // 파일 서버 저장 이름
	private String fileSize;    // 파일 사이즈
	private String fileType;   // 파일 확장자 및 파일 type
	private Date fileDt;    // 파일 등록일

	public int getFileNo() {
		return fileNo;
	}

	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}

	public String getFileOriginalName() {
		return fileOriginalName;
	}

	public void setFileOriginalName(String fileOriginalName) {
		this.fileOriginalName = fileOriginalName;
	}

	public String getFileChangeName() {
		return fileChangeName;
	}

	public void setFileChangeName(String fileChangeName) {
		this.fileChangeName = fileChangeName;
	}

	public String getFileSize() {
		return fileSize;
	}

	public void setFileSize(String fileSize) {
		this.fileSize = fileSize;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public Date getFileDt() {
		return fileDt;
	}

	public void setFileDt(Date fileDt) {
		this.fileDt = fileDt;
	}
}
