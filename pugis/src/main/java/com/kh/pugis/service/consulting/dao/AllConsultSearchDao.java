package com.kh.pugis.service.consulting.dao;

import java.util.List;

import com.kh.pugis.service.consulting.domain.Consult;
import com.kh.pugis.service.consulting.domain.ConsultScheduleDate;

public interface AllConsultSearchDao
{

	List<Consult> allConsultSearch(ConsultScheduleDate csd);
	List<Consult> regularConsultSearch(ConsultScheduleDate csd);
	List<Consult> marketingConsultSearch(ConsultScheduleDate csd);
    void executeConsult();
}
