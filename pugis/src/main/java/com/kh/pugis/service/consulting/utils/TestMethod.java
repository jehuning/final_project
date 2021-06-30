package com.kh.pugis.service.consulting.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class TestMethod {
	public void scheduleT(){
		int wn = 5;
		int pn = 17;
		RandomNumberList rnl = new RandomNumberList();
		List<Integer> rdI  = new ArrayList<Integer>();
		rdI = rnl.randomNumberList();
		
		
		int rdPerDay = pn/wn; //하루당 스케줄 배치 기본 인원수 //3
    	int extraRd = pn%wn; //하루에 1명씩 더 배치되는 날의 수 //2
    	HashMap<String,List<String>> scheduleMap = new HashMap<String,List<String>>();
		for(int i = 0; i < wn; i++){
//			List<String> l = new ArrayList<String>();
			
			if(0 <= i && i <extraRd){ // i=0, 1
				for(int j = i*(rdPerDay+1);j<(i+1)*(rdPerDay+1);j++){
					System.out.println("1인추가배치구간:"+j);
//					l.add(cList.get(rdI.get(j)));
				}
			}else{
				for(int j = extraRd*(rdPerDay+1)+(i-extraRd)*(rdPerDay);j<extraRd*(rdPerDay+1)+(i-extraRd+1)*(rdPerDay);j++){
					System.out.println("기본배치구간:"+j);
//					l.add(cList.get(rdI.get(j)));
				}
			}
			System.out.println("현재인덱스:"+i);
//			scheduleMap.put(workDayList.get(i), l);
		}
	}
}
