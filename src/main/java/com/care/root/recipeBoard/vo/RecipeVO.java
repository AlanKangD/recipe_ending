package com.care.root.recipeBoard.vo;

import java.sql.Date;

public class RecipeVO {

    // recipe master

    private int recipeNo;           // 레시피 No

    private String recipeType;      // 레시피 타입

    private String recipeName;      // 레시피 명

    private Date recipeRegDt;       // 레시피 등록일

    private String recipeDisplay;   // 레시피 전시 여부

    private String recipeDel;       // 레시피 삭제여부

    //////////////////////////////

    // Recipe Detail

    private int  recipeDetailNo;    // 레시피 상세 No

    private String recipeDetailContent;  // 레시피 내용

    private String recipeDetailImageName; // 레시피 이미지 이름

    private String recipeDetailTip;       // 영엵 레시피 Tip

    private String recipeDetailDt;        // 레시피 등록일

    //////////////////////////////

    // Recipe Etc

    private int recipeEtcNo;          // 레시피 기타 No

    private String recipeEtcIngredient;  // 레시피 재료명

    private String recipeEtcQuantity;    // 레시피 재료 수량

    private String recipeEtcType;       // 레시피 재료 계량 Type

    private Date recipeEtcDt;           // 레시피 재료 등록일

    //////////////////////////////


    public int getRecipeNo() {
        return recipeNo;
    }

    public void setRecipeNo(int recipeNo) {
        this.recipeNo = recipeNo;
    }

    public String getRecipeType() {
        return recipeType;
    }

    public void setRecipeType(String recipeType) {
        this.recipeType = recipeType;
    }

    public String getRecipeName() {
        return recipeName;
    }

    public void setRecipeName(String recipeName) {
        this.recipeName = recipeName;
    }

    public Date getRecipeRegDt() {
        return recipeRegDt;
    }

    public void setRecipeRegDt(Date recipeRegDt) {
        this.recipeRegDt = recipeRegDt;
    }

    public String getRecipeDisplay() {
        return recipeDisplay;
    }

    public void setRecipeDisplay(String recipeDisplay) {
        this.recipeDisplay = recipeDisplay;
    }

    public String getRecipeDel() {
        return recipeDel;
    }

    public void setRecipeDel(String recipeDel) {
        this.recipeDel = recipeDel;
    }

    public int getRecipeDetailNo() {
        return recipeDetailNo;
    }

    public void setRecipeDetailNo(int recipeDetailNo) {
        this.recipeDetailNo = recipeDetailNo;
    }

    public String getRecipeDetailContent() {
        return recipeDetailContent;
    }

    public void setRecipeDetailContent(String recipeDetailContent) {
        this.recipeDetailContent = recipeDetailContent;
    }

    public String getRecipeDetailImageName() {
        return recipeDetailImageName;
    }

    public void setRecipeDetailImageName(String recipeDetailImageName) {
        this.recipeDetailImageName = recipeDetailImageName;
    }

    public String getRecipeDetailTip() {
        return recipeDetailTip;
    }

    public void setRecipeDetailTip(String recipeDetailTip) {
        this.recipeDetailTip = recipeDetailTip;
    }

    public String getRecipeDetailDt() {
        return recipeDetailDt;
    }

    public void setRecipeDetailDt(String recipeDetailDt) {
        this.recipeDetailDt = recipeDetailDt;
    }

    public int getRecipeEtcNo() {
        return recipeEtcNo;
    }

    public void setRecipeEtcNo(int recipeEtcNo) {
        this.recipeEtcNo = recipeEtcNo;
    }

    public String getRecipeEtcIngredient() {
        return recipeEtcIngredient;
    }

    public void setRecipeEtcIngredient(String recipeEtcIngredient) {
        this.recipeEtcIngredient = recipeEtcIngredient;
    }

    public String getRecipeEtcQuantity() {
        return recipeEtcQuantity;
    }

    public void setRecipeEtcQuantity(String recipeEtcQuantity) {
        this.recipeEtcQuantity = recipeEtcQuantity;
    }

    public String getRecipeEtcType() {
        return recipeEtcType;
    }

    public void setRecipeEtcType(String recipeEtcType) {
        this.recipeEtcType = recipeEtcType;
    }

    public Date getRecipeEtcDt() {
        return recipeEtcDt;
    }

    public void setRecipeEtcDt(Date recipeEtcDt) {
        this.recipeEtcDt = recipeEtcDt;
    }
}
