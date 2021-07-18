package com.kh.pugis.service.consulting.domain;


public class ConsultScheduleDate
{

    public ConsultScheduleDate()
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
    
    public String getConsult_code() {
		return consult_code;
	}

	public void setConsult_code(String consult_code) {
		this.consult_code = consult_code;
	}

	String consult_code;
    String start_date;
    String finish_date;
}
