package com.kh.pugis.service.consulting.dao;

import com.kh.pugis.service.consulting.domain.Employee;

public interface EmpInfoDao
{

    Employee empInfoSummary();

    Employee empInfoSpecific();
}
