package com.kh.pugis.service.consulting.dao;

import com.kh.pugis.service.consulting.domain.*;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AllConsultSearchDaoImpl
    implements AllConsultSearchDao
{

	 @Autowired
    private SqlSession sqlSession;

    public List<Consult> allConsultSearch(ConsultScheduleDate csd)
    {
       
        return sqlSession.selectList("Consult.allSearch", csd);
    }
    public List<Consult> regularConsultSearch(ConsultScheduleDate csd)
    {
       
        return sqlSession.selectList("Consult.regularSearch", csd);
    }
    public List<Consult> marketingConsultSearch(ConsultScheduleDate csd)
    {
       
        return sqlSession.selectList("Consult.marketingSearch", csd);
    }

    public void executeConsult()
    {
    }

}
