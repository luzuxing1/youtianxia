package com.youtx.rent.task.service;

import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class AutoTaskService {
    /**
     * 执行定时任务逻辑
     */
    public void autoInterface(){
        System.out.println ("the task of every time ,Now Time："+new Date ());
    }
}
