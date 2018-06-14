package com.youtx.rent.task;

import com.youtx.rent.task.service.AutoTaskService;

import javax.annotation.Resource;

public class AutoTask {
    @Resource
    private AutoTaskService autoTaskService;

    public void autoTaskServiceRun(){
        autoTaskService.autoInterface ();
    }
}
