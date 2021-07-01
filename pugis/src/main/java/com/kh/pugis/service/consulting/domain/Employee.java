package com.kh.pugis.service.consulting.domain;


public class Employee
{

    public Employee()
    {
    }

    public String getEmp_id()
    {
        return emp_id;
    }

    public void setEmp_id(String emp_id)
    {
        this.emp_id = emp_id;
    }

    public String getEmp_name()
    {
        return emp_name;
    }

    public void setEmp_name(String emp_name)
    {
        this.emp_name = emp_name;
    }

    public String getDept_id()
    {
        return dept_id;
    }

    public void setDept_id(String dept_id)
    {
        this.dept_id = dept_id;
    }

    public String getDept_name()
    {
        return dept_name;
    }

    public void setDept_name(String dept_name)
    {
        this.dept_name = dept_name;
    }

    public String getJob_id()
    {
        return job_id;
    }

    public void setJob_id(String job_id)
    {
        this.job_id = job_id;
    }

    public String getJob_name()
    {
        return job_name;
    }

    public void setJob_name(String job_name)
    {
        this.job_name = job_name;
    }

    String emp_id;
    String emp_name;
    String dept_id;
    String dept_name;
    String job_id;
    String job_name;
    String email_address;
}
