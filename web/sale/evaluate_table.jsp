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
                  <th>产品编号</th>
                  <th>产品种类</th>
                  <th>克重</th>
                  <th>幅宽</th>
                  <th>产能（M）</th>
                  <th>产能(KG)</th>
               >
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><input type="text" class="form-control" id="item_number" placeholder="产品编号" name="item_number"></td>
                  <td><input type="text" class="form-control" id="item_variety" placeholder="产品种类" name="item_variety"></td>
                   <td><input type="text" class="form-control" id="gram" placeholder="克重" name="gram"></td>
                  <td><input type="text" class="form-control" id="breadth" placeholder="幅宽" name="breadth"></td>
                  <td><input type="text" class="form-control" id="capacity_M" placeholder="产能（M）" name="capacity_M"></td>
                  <td><input type="text" class="form-control" id="capacity_KG" placeholder="产能（KG）" name="capacity_KG"></td>
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
                  <th>产品编号</th>
                  <th>产品种类</th>
                  <th>克重</th>
                  <th>幅宽</th>
                  <th>产能（M）</th>
                  <th>产能（KG）</th>
                </tr>
              </thead>
              <tbody>
               <s:iterator value="#session.manage" id="it">
             <tr> 
              <td> 
               <input type="checkbox" name="checkbox" value=<s:property value="#it.name"/>            
            </td>
              <td><s:property value="#it.item_number"/></td>
              <td><s:property value="#it.item_variety"/></td>
              <td><s:property value="#it.gram"/></td>
              <td><s:property value="#it.breadth"/></td>
              <td><s:property value="#it.capacity_M"/></td>
              <td><s:property value="#it.capacity_KG"/></td>
           </tr>
           </s:iterator>    
                
                
              </tbody>
            </table>
          </div> 
         <button type="submit" class="btn btn-default" >删除选择</button>  
       </form>
        </body>
        </html>


                