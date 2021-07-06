package com.kh.pugis.service.consulting.dao;

import java.util.HashMap;
import java.util.List;

import com.kh.pugis.service.consulting.domain.Commute;

public interface CommuteDao
{

     void startWork(Commute c);

     void leaveWork(Commute c);

     List<Commute> commuteHistory(HashMap<String,String> hm);
}
