package com.kh.pugis.service.consulting.domain;


public class Schedule
{

    public Schedule()
    {
    }

    String schedule_date;
    String Schedule_dept;
    String emp_id;
    String Schedule_name;
	public String getSchedule_date() {
		return schedule_date;
	}
	public void setSchedule_date(String schedule_date) {
		this.schedule_date = schedule_date;
	}
	public String getSchedule_dept() {
		return Schedule_dept;
	}
	public void setSchedule_dept(String schedule_dept) {
		Schedule_dept = schedule_dept;
	}
	public String getSchedule_name() {
		return Schedule_name;
	}
	public void setSchedule_name(String schedule_name) {
		Schedule_name = schedule_name;
	}
	public String getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}
    
    
}
