package com.kh.pugis.service.consulting.dao;

import com.kh.pugis.service.consulting.domain.Commute;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CommuteDaoImpl
    implements CommuteDao
{

	 @Autowired
    private SqlSession sqlSession;

    public void startWork()
    {
        Commute c = new Commute();
    }

    public void leaveWork()
    {
    }

    public void commuteHistory()
    {
    }

}
