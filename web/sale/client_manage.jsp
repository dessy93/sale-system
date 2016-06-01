<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
         <link href="../res/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>

      <form role="form" action="../show_manage" method="post" >

       <div class="table-responsive">
            <table class="table table-striped table-hover" id="myTable">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>客户</th>
                  <th>地址</th>
                  <th>联系人</th>
                  <th>电话</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><input type="text" class="form-control" id="identity" placeholder="ID" name="identity"></td>
                  <td><input type="text" class="form-control" id="client" placeholder="客户" name="client"></td>
                   <td><input type="text" class="form-control" id="address" placeholder="地址" name="address"></td>
                  <td><input type="text" class="form-control" id="contact" placeholder="联系人" name="contact"></td>
                  <td><input type="text" class="form-control" id="tel" placeholder="电话" name="tel"></td>
                </tr>
                
              </tbody>
            </table>
          </div> 
    
          <button type="submit" class="btn btn-default">提交</button>
         

        </form>
<form role="form" action="delete.action" method="post" >
 <div class="table-responsive">
            <table class="table table-striped table-hover" id="myTable">
              <thead>
                <tr>
                  <th>操作</th>
                  <th>ID</th>
                  <th>客户</th>
                  <th>地址</th>
                  <th>联系人</th>
                  <th>电话</th>
                </tr>
              </thead>
              <tbody>
                <s:iterator value="#session.manage" id="it">
             <tr> 
              <td> 
               <input type="checkbox" name="checkbox" value=<s:property value="#it.name"/>         
            </td>
              <td><s:property value="#it.identity"/></td>
              <td><s:property value="#it.client"/></td>
              <td><s:property value="#it.address"/></td>
              <td><s:property value="#it.contact"/></td>
              <td><s:property value="#it.tel"/></td>
           </tr>
           </s:iterator> 
              </tbody>
            </table>
          </div> 
         <button type="submit" class="btn btn-default" >删除选择</button>  
       </form>
        </body>
        </html>


                