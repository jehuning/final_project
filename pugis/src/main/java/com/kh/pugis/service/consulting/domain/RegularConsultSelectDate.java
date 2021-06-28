package com.kh.pugis.service.consulting.domain;


public class RegularConsultSelectDate
{

    public RegularConsultSelectDate()
    {
    }

    public String getStart_date()
    {
        return start_date;
    }

    public void setStart_date(String start_date)
    {
        this.start_date = start_date;
    }

    public String getFinish_date()
    {
        return finish_date;
    }

    public void setFinish_date(String finish_date)
    {
        this.finish_date = finish_date;
    }

    String start_date;
    String finish_date;
}
