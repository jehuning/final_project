package com.kh.pugis.service.consulting.utils;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

public class CalcWorkDay {
	public List<String> calcWorkDay(){
	    String startDate = "2021-02-08".replaceAll("-","");	//2020-01-23 (목)
	    String endDate = "2021-03-05".replaceAll("-", "");	//2020-01-28 (화)
    	List<String> workDayList = new ArrayList<String>();

	    //실제 공휴일을 구한다.
	    //List<HashMap<String,Object>> holidayList = holidayService.selectNationalHolDtList(holidayVO);
	    List<HashMap<String,Object>> holidayList = new ArrayList<HashMap<String, Object>>();
	    HashMap<String, Object> holidayMap = new HashMap<String, Object>();
	    
	    holidayMap.put("holidayDt", "20200101");	//신정
	    holidayList.add(holidayMap);

	    holidayMap = new HashMap<String, Object>();
	    holidayMap.put("holidayDt", "20210211");	//설날연휴
	    holidayList.add(holidayMap);

	    holidayMap = new HashMap<String, Object>();
	    holidayMap.put("holidayDt", "20210212");	//설날
	    holidayList.add(holidayMap);

	    holidayMap = new HashMap<String, Object>();
	    holidayMap.put("holidayDt", "20210213");	//설날연휴
	    holidayList.add(holidayMap);


	    holidayMap = new HashMap<String, Object>();
	    holidayMap.put("holidayDt", "20200301");	//삼일절
	    holidayList.add(holidayMap);

	    SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
	    try{
			Calendar start = Calendar.getInstance();
	        start.setTime(sdf.parse(startDate)); //시작일 날짜 설정

	      	Calendar end = Calendar.getInstance();
	      	end.setTime(sdf.parse(endDate)); //종료일 날짜 설정


			int workingDays = 0;
	    	int holDays = 0;
	    	Boolean flag = false;
	      	while (!start.after(end)) {//첫날부터 마지막날까지 index날짜가 증가
	      		int day = start.get(Calendar.DAY_OF_WEEK);	 //주말인지 구한다. 1이면 일요일 7이면 토요일
	      		
	      		if ((day != Calendar.SATURDAY) && (day != Calendar.SUNDAY)){//평일인지
	      			for(int i=0;i<holidayList.size();i++){
	      				flag = !(holidayList.get(i).get("holidayDt").equals(sdf.format(start.getTime())));	//실제 공휴일 날짜 설정
			      		//공휴일 리스트에 있는지
	      				if(!flag){
	      						
			      				 break;//공휴일리스트에 있으면 멈춰
			      			 }
	      				
	      			}
	      			if(flag){
	      				//index 날짜가 공휴일이 아니면
	      				workDayList.add(sdf.format(start.getTime()));
	      			}
	      		}	
		    start.add(Calendar.DATE, 1); //index 하루씩 증가문
		}
	    System.out.printf("최종일수 %d", workingDays-holDays); //평일 수 - 평일인 공휴일수
	    
				
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return workDayList;
	}
}
