package com.kh.pugis.service.consulting.dao;

import com.kh.pugis.service.consulting.domain.Commute;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CommuteDaoImpl
    implements CommuteDao
{

	 @Autowired
    private SqlSession sqlSession;

    public void startWork(Commute c)
    {
      sqlSession.insert("Commute.insertStartTime", c);
    }

    public void leaveWork(Commute c)
    {
    	sqlSession.update("Commute.updateLeaveTime", c);
    }

    public List<Commute> commuteHistory(HashMap<String,String> hm)
    {
    	return sqlSession.selectList("Commute.selectHistory", hm);
    	
    }

}
