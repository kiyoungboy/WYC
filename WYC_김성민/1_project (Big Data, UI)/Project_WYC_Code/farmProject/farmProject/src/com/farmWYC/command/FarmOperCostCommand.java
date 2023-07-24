package com.farmWYC.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.farmWYC.dao.FarmCostDao;

public class FarmOperCostCommand implements FarmCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String selectCrop = (String) request.getAttribute("selectCrop");
		String selectArea = (String) request.getAttribute("selectArea");
		
		FarmCostDao dao = new FarmCostDao();
		
		int operCost = dao.getOperCost(selectCrop, selectArea);
		System.out.println("FarmOperCostCommand : " + operCost);
		request.setAttribute("operCost", operCost);
	}

}
