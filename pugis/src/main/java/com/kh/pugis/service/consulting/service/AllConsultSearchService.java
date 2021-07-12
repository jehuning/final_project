package com.kh.pugis.service.consulting.service;

import java.util.List;

import com.kh.pugis.service.consulting.domain.Consult;
import com.kh.pugis.service.consulting.domain.ConsultScheduleDate;

public interface AllConsultSearchService
{

	List<Consult> consultSearch(String condition, ConsultScheduleDate csd);

    
    void executeConsult();
}
