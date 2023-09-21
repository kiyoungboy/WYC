package com.WYC.myapp.farming.dao;

import java.util.ArrayList;
import java.util.List;

import com.WYC.myapp.farming.dto.AreaSiDoDto;
import com.WYC.myapp.farming.dto.AreaSiGunGuDto;
import com.WYC.myapp.farming.dto.CropCostDto;
import com.WYC.myapp.farming.dto.CropDto;
import com.WYC.myapp.farming.dto.PolicyDto;

public interface ICostRepository {
	public CropDto searchCrop(String searchName); // 농작물 조회
	public AreaSiGunGuDto searchSiGunGu(String searchSiGunGu);// 지역정보 조회
	public CropCostDto serachCost(int searchCost);// 농작물별 비용 조회
	public List<PolicyDto> showConditionList(int siGunGuCode, int age, int farmingPeriod);// 특정 조건의 정책 리스트 조회
	public List<PolicyDto> showList();// 전체 정책 리스트 조회
}
