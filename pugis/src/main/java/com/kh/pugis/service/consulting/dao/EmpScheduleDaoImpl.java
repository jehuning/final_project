package com.kh.pugis.service.consulting.dao;

import com.kh.pugis.service.consulting.domain.*;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EmpScheduleDaoImpl
    implements EmpScheduleDao
{

	@Autowired
    private SqlSession sqlSession;

    public void scheduleCalendar()
    {
        Schedule s = new Schedule();
    }

    public void empSchedule()
    {
    }

    public void depSchedule()
    {
        Schedule s = new Schedule();
        MarketingConsult mc = new MarketingConsult();
        RegularConsult rc = new RegularConsult();
    }
    
}
