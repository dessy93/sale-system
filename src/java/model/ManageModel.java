/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ivan93
 */
public class ManageModel {
    
private String name;
private String basic_salary;
private String post_salary;
private String seniority_salary;
private String overtime_pay;
private String full_attendance_bonus; 
private String high_temperature_allowance;
private String telephone_fee;

  public ManageModel(String name, String basic_salary, String post_salary, String seniority_salary, String overtime_pay, String full_attendance_bonus, String high_temperature_allowance, String telephone_fee) {
        this.name = name;
        this.basic_salary = basic_salary;
        this.post_salary = post_salary;
        this.seniority_salary = seniority_salary;
        this.overtime_pay = overtime_pay;
        this.full_attendance_bonus = full_attendance_bonus;
        this.high_temperature_allowance = high_temperature_allowance;
        this.telephone_fee = telephone_fee;
    }

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

  
    

    
}
