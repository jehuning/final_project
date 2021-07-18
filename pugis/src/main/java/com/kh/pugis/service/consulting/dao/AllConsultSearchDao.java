package com.kh.pugis.service.consulting.dao;

import java.util.List;

import com.kh.pugis.service.consulting.domain.Consult;
import com.kh.pugis.service.consulting.domain.ConsultScheduleDate;
import com.kh.pugis.service.consulting.domain.MarketingEventDate;

public interface AllConsultSearchDao
{
	List<MarketingEventDate> getMKConsult();
	List<Consult> allConsultSearch(ConsultScheduleDate csd);
	List<Consult> regularConsultSearch(ConsultScheduleDate csd);
	List<Consult> marketingConsultSearch(ConsultScheduleDate csd);
	List<Consult> specificMkConsultSearch(String condition);
    void executeConsult(Consult c);
}
