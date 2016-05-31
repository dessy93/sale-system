/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;
import com.opensymphony.xwork2.ActionContext;
import java.sql.*;
import com.opensymphony.xwork2.ActionSupport;
import dao.Dao;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import model.ManageModel;
/**
 *
 * @author ivan93
 */
public class ManageAction extends ActionSupport{
private Dao dao = new Dao();

private String name;
private String basic_salary;
private String post_salary;
private String seniority_salary;
private String overtime_pay;
private String full_attendance_bonus; 
private String high_temperature_allowance;
private String telephone_fee;

    public String getCheckbox() {
        return checkbox;
    }

    public void setCheckbox(String checkbox) {
        this.checkbox = checkbox;
    }
    
    private String checkbox;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBasic_salary() {
        return basic_salary;
    }

    public void setBasic_salary(String basic_salary) {
        this.basic_salary = basic_salary;
    }

    public String getPost_salary() {
        return post_salary;
    }

    public void setPost_salary(String post_salary) {
        this.post_salary = post_salary;
    }

    public String getSeniority_salary() {
        return seniority_salary;
    }

    public void setSeniority_salary(String seniority_salary) {
        this.seniority_salary = seniority_salary;
    }

    public String getOvertime_pay() {
        return overtime_pay;
    }

    public void setOvertime_pay(String overtime_pay) {
        this.overtime_pay = overtime_pay;
    }

    public String getFull_attendance_bonus() {
        return full_attendance_bonus;
    }

    public void setFull_attendance_bonus(String full_attendance_bonus) {
        this.full_attendance_bonus = full_attendance_bonus;
    }

    public String getHigh_temperature_allowance() {
        return high_temperature_allowance;
    }

    public void setHigh_temperature_allowance(String high_temperature_allowance) {
        this.high_temperature_allowance = high_temperature_allowance;
    }

    public String getTelephone_fee() {
        return telephone_fee;
    }

    public void setTelephone_fee(String telephone_fee) {
        this.telephone_fee = telephone_fee;
    }
    
    public void test(){
        System.out.println("name is:"+name);
    }
    
    
    public String salary_manage() throws SQLException {
String sql = "insert into salary_manage(name,basic_salary,post_salary,seniority_salary,overtime_pay,full_attendance_bonus,high_temperature_allowance,telephone_fee) values('"+ getName()+"','"+ getBasic_salary() + "','"+ getPost_salary() +"','"+ getSeniority_salary() +"','"+ getOvertime_pay() +"','"+ getFull_attendance_bonus() +"','"+ getHigh_temperature_allowance() +"','"+ getTelephone_fee() +"')";
//System.out.println("regist username is:"+getUsername()+getPassword1());
int i = dao.executeUpdate(sql);

showlist();

if (i > -1) {
    System.out.println("success");
return "success";
}
 System.out.println("error");
return "error";
}
    
public String showlist() throws SQLException{

     List<ManageModel> manage_list = new ArrayList<ManageModel>();
     
      System.out.println("into show");
  String sql = "select * from salary_manage order by  id  desc"; 
  ResultSet rs = dao.executeQuery(sql);
  while(rs.next()){
  manage_list.add(new ManageModel(rs.getString("name"),rs.getString("basic_salary"),rs.getString("post_salary"),rs.getString("seniority_salary"),rs.getString("overtime_pay"),rs.getString("full_attendance_bonus"),rs.getString("high_temperature_allowance"),rs.getString("telephone_fee")));
     
  }
     Map session = ActionContext.getContext().getSession();
    session.put("manage", manage_list);
    
    
    return "success";
  
}


public String delete() throws SQLException{
    String ncheckbox=checkbox+',';
   String[] data = ncheckbox.split("/,");
    System.out.println("checkbox is:" + ncheckbox);
    for (int i = 0 ; i <data.length ; i++ ) {
      System.out.println("--"+data[i].trim()); 
      String sql = "delete from salary_manage where name= '" + data[i].trim() +"'";
       System.out.println("sql is:" + sql);
       int j = dao.executeUpdate(sql);
    }
    
  showlist();
    return "success";

}

}
