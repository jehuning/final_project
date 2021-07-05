package com.kh.pugis.service.consulting.dao;

import com.kh.pugis.service.consulting.domain.Employee;
import java.io.PrintStream;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EmpInfoDaoImpl
    implements EmpInfoDao
{

	 @Autowired
	 private SqlSession sqlSession;

    public void setSqlSession(SqlSession sqlSession)
    {
        this.sqlSession = sqlSession;
    }

    public Employee empInfoSummary()
    {
        Employee ee = new Employee();
        System.out.println((new StringBuilder("SqlSession ===> ")).append(sqlSession).toString());
        return (Employee)sqlSession.selectOne("Employee.getEmployeeListById", "cs1");
    }

    public Employee empInfoSpecific()
    {
        return null;
    }
   
}