package com.kh.pugis.service.consulting.service;

import java.util.List;

import com.kh.pugis.service.consulting.domain.Consult;
import com.kh.pugis.service.consulting.domain.ConsultScheduleDate;
import com.kh.pugis.service.consulting.domain.MarketingEventDate;

public interface AllConsultSearchService
{
	List<MarketingEventDate> getMKConsult();
	List<Consult> consultSearch(String condition, ConsultScheduleDate csd);
	
    
    void executeConsult(Consult c);
}
