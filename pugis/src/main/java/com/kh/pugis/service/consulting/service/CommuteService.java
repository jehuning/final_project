// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CommuteService.java

package com.kh.pugis.service.consulting.service;

import java.util.List;

import com.kh.pugis.service.consulting.domain.Commute;

public interface CommuteService
{

    void startWork(Commute c);

    void leaveWork(Commute c);

    List<Commute> commuteHistory(Commute c);
}
