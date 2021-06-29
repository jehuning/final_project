package com.kh.pugis.service.consulting.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class RandomNumberList {
	public void randomNumberList(){
		Random rd = new Random();
		List<Integer> rdI = new ArrayList<Integer>();
		int pn = 10;
		
		for(int i =0; i <pn;i++){
			if(rdI.size()==0){
				rdI.add(rd.nextInt(pn));
			}else{
				Boolean chk = false;
				int n;
				do{
					n=rd.nextInt(pn);
				}while(rdI.contains(n));
				rdI.add(n);
			}
			
	}
		for(int r : rdI){
			System.out.println(r);
		}
	}
	
}
