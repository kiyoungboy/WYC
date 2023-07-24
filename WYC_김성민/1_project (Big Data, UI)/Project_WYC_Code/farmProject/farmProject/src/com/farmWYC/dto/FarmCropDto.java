package com.farmWYC.dto;

public class FarmCropDto {
	int crop_num;
	String crop_name;
	String crop_eng;
	
	public FarmCropDto() {
	}
	
	public FarmCropDto(int crop_num, String crop_name, String crop_eng) {
		this.crop_num = crop_num;
		this.crop_name = crop_name;
		this.crop_eng = crop_eng;
	}

	public int getCrop_num() {
		return crop_num;
	}

	public void setCrop_num(int crop_num) {
		this.crop_num = crop_num;
	}

	public String getCrop_name() {
		return crop_name;
	}

	public void setCrop_name(String crop_name) {
		this.crop_name = crop_name;
	}

	public String getCrop_eng() {
		return crop_eng;
	}

	public void setCrop_eng(String crop_eng) {
		this.crop_eng = crop_eng;
	}
	
	
}
