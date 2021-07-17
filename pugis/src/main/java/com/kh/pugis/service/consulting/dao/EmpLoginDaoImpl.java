package com.kh.pugis.service.consulting.dao;

import com.kh.pugis.service.consulting.domain.Employee;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EmpLoginDaoImpl implements EmpLoginDao
{
	@Autowired SqlSession sql;
	
	@Override
	public Employee login(Employee emp) throws Exception {
		
		return sql.selectOne("Employee.login", emp);
	}
   
}
