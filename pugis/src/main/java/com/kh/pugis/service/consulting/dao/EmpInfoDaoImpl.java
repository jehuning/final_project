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

    public Employee empInfoSummary(Employee e)
    {
        System.out.println(e.getEmp_id());
        return sqlSession.selectOne("Employee.getSummary", e.getEmp_id());
    }

    public Employee empInfoSpecific(Employee e)
    {
        return  sqlSession.selectOne("Employee.getSpecific", e.getEmp_id());
    }
   
}
