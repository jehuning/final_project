package com.kh.pugis.service.consulting.dao;

import com.kh.pugis.service.consulting.domain.Employee;

public interface EmpLoginDao
{
	public Employee login(Employee emp) throws Exception;
}
