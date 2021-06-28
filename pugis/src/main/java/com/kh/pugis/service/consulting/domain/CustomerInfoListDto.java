package com.kh.pugis.service.consulting.domain;

import java.util.List;

public class CustomerInfoListDto
{
	List<CustomerInfo> l;
    public CustomerInfoListDto()
    {
    }

    public List<CustomerInfo> getSelecetedId()
    {
        return selecetedId;
    }

    public void setSelecetedId(List<CustomerInfo> selecetedId)
    {
        this.selecetedId = selecetedId;
    }

    private List<CustomerInfo> selecetedId;
}
