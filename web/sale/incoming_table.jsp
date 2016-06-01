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
                  <th>订单号</th>
                  <th>来料单号</th>
                  <th>颜色</th>
                  <th>单位</th>
                  <th>数量</th>
                  <th>入库人</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><input type="text" class="form-control" id="order_number" placeholder="订单号" name="order_number"></td>
                  <td><input type="text" class="form-control" id="incoming_number" placeholder="来料单号" name="incoming_number"></td>
                  <td><input type="text" class="form-control" id="color" placeholder="颜色" name="color"></td>
                  <td><input type="text" class="form-control" id="unit" placeholder="单位" name="unit"></td>
                  <td><input type="text" class="form-control" id="number" placeholder="数量" name="number"></td>
                  <td><input type="text" class="form-control" id="income_man" placeholder="入库人" name="income_man"></td>
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
                  <th>订单号</th>
                  <th>来料单号</th>
                  <th>颜色</th>
                  <th>单位</th>
                  <th>数量</th>
                  <th>入库人</th>
                </tr>
              </thead>
              <tbody>
                <s:iterator value="#session.manage" id="it">
             <tr> 
              <td> 
               <input type="checkbox" name="checkbox" value=<s:property value="#it.name"/>            
            </td>
              <td><s:property value="#it.order_number"/></td>
              <td><s:property value="#it.incoming_number"/></td>
               <td><s:property value="#it.color"/></td>
              <td><s:property value="#it.unit"/></td>
              <td><s:property value="#it.number"/></td>
              <td><s:property value="#it.income_man"/></td>
           </tr>
           </s:iterator>        

          
                
              </tbody>
            </table>
          </div> 
         <button type="submit" class="btn btn-default" >删除选择</button>  
       </form>
        </body>
        </html>


                