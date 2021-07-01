package com.kh.pugis.service.consulting.service;

import com.kh.pugis.service.consulting.domain.*;
import java.util.List;

public interface RegularConsultService
{

    List selectCustomer(CustomerInfo customerinfo, PageInfo pageinfo);

   PageMoveInfo CustomerPageMove(CustomerInfo customerinfo, PageInfo pageinfo);

   String saveSchedule(RegularConsultSelectDate rcsd, CustomerInfoListDto cil);
}
