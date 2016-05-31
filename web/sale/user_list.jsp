<%-- 
    Document   : user_list
    Created on : 2016-5-19, 13:50:59
    Author     : ivan93
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
         <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>序列号</th>
                  <th>用户名</th>
                  <th>权限</th>

                </tr>
              </thead>
              <tbody>

<%
    int s=1;
%>                
                    
<s:iterator value="#session.key" id="it">
<tr>
    <td><%=s%></td>   
    <td><s:property value="#it.username"/></td>
    <td><s:property value="#it.isCheck"/></td>
    
<%
    s++;
%>    
</tr>
</s:iterator>               
              </tbody>
            </table>            
             <s:debug></s:debug>
          </div>
    </body>
</html>
