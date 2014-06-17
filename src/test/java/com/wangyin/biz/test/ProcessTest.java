/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.biz.test;

import org.activiti.engine.*;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 蒋鲁宾
 * @version v 0.1 2014/6/5 10:37 Exp $$
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class ProcessTest {

    @Autowired
    private RepositoryService repositoryService;
    @Autowired
    private RuntimeService runtimeService;
    @Autowired
    private TaskService taskService;
    @Autowired
    private HistoryService historyService;


    public void monthtest() {
        //部署流程定义
        repositoryService.createDeployment().addClasspathResource("VacationRequest.bpmn20.xml").deploy();
        //启动流程实例
        String procId = runtimeService.startProcessInstanceByKey("vacationRequest").getId();
        //获得第一个任务
        List<Task> tasks = taskService.createTaskQuery().taskCandidateGroup("sales").list();
        for (Task task : tasks) {
            System.out.println("Following task is available for sales group:" + task.getName());
            //认领任务这里由foozie认领，因为fozzie是sales组的成员
            taskService.claim(task.getId(), "fozzie");
        }
        //查看fozzie现在是否能够获取到该任务
        tasks = taskService.createTaskQuery().taskAssignee("fozzie").list();
        for (Task task : tasks) {
            System.out.println("Task for fozzie:" + task.getName());
            //执行(完成)任务
            taskService.complete(task.getId());
        }
        //现在fozzie的可执行任务数就为0了
        System.out.println("Numberoftasksforfozzie:" +
                taskService.createTaskQuery().taskAssignee("fozzie").count());
        //获得第二个任务tasks=
        taskService.createTaskQuery().taskCandidateGroup("management").list();
        for (Task task : tasks) {
            System.out.println("Followingtaskisavailableforaccountancygroup:" + task.getName());
            //认领任务这里由kermit认领，因为kermit是management组的成员
            taskService.claim(task.getId(), "kermit");
        }
        //完成第二个任务结束流程
        for (Task task : tasks) {
            taskService.complete(task.getId());
        }
        //核实流程是否结束,输出流程结束时间
        HistoricProcessInstance historicProcessInstance = historyService.createHistoricProcessInstanceQuery().processInstanceId(procId).singleResult();
        System.out.println("Processinstanceendtime:" + historicProcessInstance.getEndTime());
    }

    @Test
    public void va() {
        //部署流程定义
        repositoryService.createDeployment().addClasspathResource("VacationRequest.bpmn20.xml").deploy();
        System.out.println("Number of process definitions: " + repositoryService.createProcessDefinitionQuery().count());
        Map<String, Object> variables = new HashMap<String, Object>();
        variables.put("employeeName", "Kermit");
        variables.put("numberOfDays", new Integer(4));
        variables.put("vacationMotivation", "I'm really tired!");
        ProcessInstance processInstance = runtimeService.startProcessInstanceByKey("vacationRequest", variables);
        System.out.println("Number of process instances: " + runtimeService.createProcessInstanceQuery().count());
        // Fetch all tasks for the management group
        List<Task> tasks = taskService.createTaskQuery().taskCandidateGroup("management").list();
        for (Task task : tasks) {
            System.out.println("Task available: " + task.getName());
        }

    }


//    public static void main(String[] args) {
//
//        ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
//        RepositoryService repositoryService = processEngine.getRepositoryService();
//        repositoryService.createDeployment()
//                .addClasspathResource("VacationRequest.bpmn20.xml")
//                .deploy();
//
//        System.out.println("Number of process definitions: " + repositoryService.createProcessDefinitionQuery().count());
//    }
}
