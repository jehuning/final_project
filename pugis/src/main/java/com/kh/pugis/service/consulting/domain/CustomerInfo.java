package com.kh.pugis.service.consulting.domain;


public class CustomerInfo
{
	String customer_id;
    String customer_name;
    String customer_birth;
    String customer_address;
    String customer_phone;
    String customer_gender;
    String customer_grade;
    
    public CustomerInfo()
    {
    }

    public String getCustomer_id()
    {
        return customer_id;
    }

    public void setCustomer_id(String customer_id)
    {
        this.customer_id = customer_id;
    }

    public String getCustomer_name()
    {
        return customer_name;
    }

    public void setCustomer_name(String customer_name)
    {
        this.customer_name = customer_name;
    }

  
    public String getCustomer_birth() {
		return customer_birth;
	}

	public void setCustomer_birth(String customer_birth) {
		this.customer_birth = customer_birth;
	}

	public String getCustomer_address()
    {
        return customer_address;
    }

    public void setCustomer_address(String customer_address)
    {
        this.customer_address = customer_address;
    }


    public String getCustomer_phone() {
		return customer_phone;
	}

	public void setCustomer_phone(String customer_phone) {
		this.customer_phone = customer_phone;
	}


    public String getCustomer_gender() {
		return customer_gender;
	}

	public void setCustomer_gender(String customer_gender) {
		this.customer_gender = customer_gender;
	}

	public String getCustomer_grade()
    {
        return customer_grade;
    }

    public void setCustomer_grade(String customer_grade)
    {
        this.customer_grade = customer_grade;
    }

   
}
