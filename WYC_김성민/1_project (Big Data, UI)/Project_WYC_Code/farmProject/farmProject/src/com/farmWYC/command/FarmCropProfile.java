package com.farmWYC.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.farmWYC.dao.FarmDao;
import com.farmWYC.dto.FarmCropAreaDto;
import com.farmWYC.dto.FarmCropProfileDto;

public class FarmCropProfile implements FarmCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String selectCrop = (String) request.getAttribute("selectCrop");
		System.out.println("FarmCropProfile Service : "+selectCrop);
		
		FarmDao dao = new FarmDao();
		FarmCropProfileDto cropProfile = dao.getCropProfile(selectCrop);
		ArrayList<String> cropProfileList = new ArrayList<String>();

		String cropName = cropProfile.getCropName();
		String cropKor = cropProfile.getCropKor();
		String cropVariety = cropProfile.getCropVariety();
		String cropGrow = cropProfile.getCropGrow();
		String cropSpecial = cropProfile.getCropSpecial();
		
		cropProfileList.add(cropName);
		cropProfileList.add(cropKor);
		cropProfileList.add(cropVariety);
		cropProfileList.add(cropGrow);
		cropProfileList.add(cropSpecial);
		
		request.setAttribute("cropProfileList", cropProfileList);
		
	}

}
