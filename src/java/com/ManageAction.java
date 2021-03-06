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
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import model.ManageModel;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
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
private String checkbox;
private File filename;
    public File getFilename() {
        return filename;
    }

    public void setFilename(File filename) {
        this.filename = filename;
    }

 

    public String getCheckbox() {
        return checkbox;
    }

    public void setCheckbox(String checkbox) {
        this.checkbox = checkbox;
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

public String upload() throws IOException, SQLException{
    FileOutputStream fos = null;
     FileInputStream fis = null;
       int i;
       int flag=0;
        Sheet sheet1,sheet2,sheet3,sheet4,sheet5;
        Workbook book;
        Cell cell1,cell2,cell3,cell4,cell5,cell6,cell7,cell8;
    String realpath = ServletActionContext.getServletContext().getRealPath("/excel");
    System.out.println("Filename" + getFilename());
        //D:\apache-tomcat-6.0.18\webapps\struts2_upload\images
        System.out.println("realpath: "+realpath);
        if (getFilename() != null) {
            flag=1;
            File savefile = new File(new File(realpath), "manage.xls");
            if (!savefile.getParentFile().exists())
                savefile.getParentFile().mkdirs();
            FileUtils.copyFile(getFilename(), savefile);
            ActionContext.getContext().put("message", "文件上传成功");
            setFilename(null);
        }
       
//       System.out.println(name);
//       System.out.println(FileContent);
     
       
       if(flag == 1)
    try { 
            //t.xls为要读取的excel文件名
            book= Workbook.getWorkbook(new File(realpath+"\\manage.xls")); 
            
            //获得第一个工作表对象(ecxel中sheet的编号从0开始,0,1,2,3,....)
            sheet1=book.getSheet(0); 
//            sheet2=book.getSheet(1); 
//            sheet3=book.getSheet(2); 
//            sheet4=book.getSheet(3); 
//            sheet5=book.getSheet(4); 
            //获取左上角的单元格
            cell1=sheet1.getCell(0,0);
//            cell2=sheet2.getCell(1,0);
//            cell3=sheet3.getCell(2,0);
//            cell4=sheet4.getCell(3,0);
//            cell5=sheet5.getCell(4,0);
            System.out.println("标题："+cell1.getContents()); 
            
            i=1;
            while(true)
            {
                //获取每一行的单元格 
                cell1=sheet1.getCell(0,i);//（列，行）
                cell2=sheet1.getCell(1,i);//（列，行）
                cell3=sheet1.getCell(2,i);//（列，行）
                cell4=sheet1.getCell(3,i);//（列，行）
                cell5=sheet1.getCell(4,i);//（列，行）
                cell6=sheet1.getCell(5,i);//（列，行）
                cell7=sheet1.getCell(6,i);//（列，行）
                cell8=sheet1.getCell(7,i);//（列，行）
                
                if("".equals(cell1.getContents())==true)    //如果读取的数据为空
                    break;
                
                String sql = "insert into salary_manage(name,basic_salary,post_salary,seniority_salary,overtime_pay,full_attendance_bonus,high_temperature_allowance,telephone_fee) values('"+ cell1.getContents()+"','"+ cell2.getContents() + "','"+ cell3.getContents() +"','"+ cell4.getContents() +"','"+ cell5.getContents() + "','"+ cell6.getContents() + "','"+ cell7.getContents() + "','"+ cell8.getContents() +"')";
//System.out.println("regist username is:"+getUsername()+getPassword1());
              int k = dao.executeUpdate(sql);
                System.out.println(cell1.getContents() + cell2.getContents()); 
                i++;
            }
            book.close(); 
        }
        catch(Exception e)  { } 
        showlist();
    return "success";
}

 private void close(FileOutputStream fos, FileInputStream fis) {
        if (fis != null) {
            try {
                fis.close();
            } catch (IOException e) {
                System.out.println("FileInputStream关闭失败");
                e.printStackTrace();
            }
        }
        if (fos != null) {
            try {
                fos.close();
            } catch (IOException e) {
                System.out.println("FileOutputStream关闭失败");
                e.printStackTrace();
            }
        }
    }

}
