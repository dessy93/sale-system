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
import model.UserModel;
/**
 *
 * @author ivan93
 */
public class UserAction extends ActionSupport{
private Dao dao = new Dao();
private String username;
private String password;
private String password1;
public String getUsername() {
return username;
}
public void setUsername(String username) {
this.username = username;
}
public String getPassword() {
return password;
}
public void setPassword(String password) {
this.password = password;
}

public String getPassword1() {
return password1;
}
public void setPassword1(String password1) {
this.password1 = password1;
}
public String login() {
String sql = "select * from tb_user where username='" + getUsername()+"' and password ='"+getPassword()+"'";
ResultSet rS = dao.executeQuery(sql);

try {
if (rS.next()) {
return "loginin";
}
return "loginout";
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
return "loginout";
}
}
public String regist() {
String sql = "insert into tb_user(username,password) values('"+ getUsername()+"','"+ getPassword() + "')";
//System.out.println("regist username is:"+getUsername()+getPassword1());
int i = dao.executeUpdate(sql);

if (i > -1) {
return "success";
}
return "error";
}

public String showlist() throws SQLException{
    List<String> name_list = new ArrayList<String>();
     List<String> permission_list = new ArrayList<String>();
     List<List<String>> mylist= new ArrayList<List<String>>();
      List<UserModel> user_list = new ArrayList<UserModel>();
     
     HashMap<String,String> name_permission = new HashMap<String,String>();
      System.out.println("into show");
  String sql = "select * from tb_user"; 
  ResultSet rs = dao.executeQuery(sql);
  while(rs.next()){
  //    System.out.println("username:"+rs.getString("username"));
      name_list.add(rs.getString("username"));
      permission_list.add(rs.getString("isCheck"));
      name_permission.put(rs.getString("username"), rs.getString("isCheck"));
      user_list.add(new UserModel(rs.getString("username"),rs.getString("isCheck")));
  }
  
//  ActionContext ct=ActionContext.getContext();
//    ct.put("box", name_list);
     Map session = ActionContext.getContext().getSession();
     mylist.add(name_list);
     mylist.add(permission_list);
    session.put("key", user_list);
    
    
    return "success";
  
}

public String test(){
    return  "success";
}


}
