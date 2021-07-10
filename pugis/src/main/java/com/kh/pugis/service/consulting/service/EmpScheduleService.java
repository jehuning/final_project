
package com.kh.pugis.service.consulting.service;

import java.util.List;

import com.kh.pugis.service.consulting.domain.Employee;
import com.kh.pugis.service.consulting.domain.Schedule;

public interface EmpScheduleService
{

    void scheduleCalendar();

    List<Schedule> empSchedule(Schedule s);

    List<Schedule> deptSchedule(Schedule s);
}
