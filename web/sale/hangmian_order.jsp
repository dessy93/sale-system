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
                  <th>客户</th>
                  <th>订单号</th>
                  <th>产品编号</th>
                  <th>克重</th>
                  <th>花型</th>
                  <th>颜色</th>
                  <th>订单总数</th>
                  <th>送货地址</th>
                  <th>联系人</th>
                  <th>下单日期</th>
                  <th>最后交期</th>
                  <th>业务员</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><input type="text" class="form-control" id="client" placeholder="客户" name="client"></td>
                  <td><input type="text" class="form-control" id="order_number" placeholder="订单号" name="order_number"></td>
                  <td><input type="text" class="form-control" id="item_number" placeholder="产品编号" name="item_number"></td>
                  <td><input type="text" class="form-control" id="gram" placeholder="克重" name="gram"></td>
                  <td><input type="text" class="form-control" id="flower_type" placeholder="花型" name="flower_type"></td>
                  <td><input type="text" class="form-control" id="color" placeholder="颜色" name="color"></td>
                  <td><input type="text" class="form-control" id="number" placeholder="订单总数" name="number"></td>
                  <td><input type="text" class="form-control" id="address" placeholder="送货地址" name="address"></td>
                  <td><input type="text" class="form-control" id="contact" placeholder="联系人" name="contact"></td>
                  <td><input type="text" class="form-control" id="order_date" placeholder="下单日期" name="order_date"></td>
                  <td><input type="text" class="form-control" id="final_date" placeholder="最后交期" name="final_date"></td>
                  <td><input type="text" class="form-control" id="salesman" placeholder="业务员" name="salesman"></td>
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
                  <th>客户</th>
                  <th>订单号</th>
                  <th>产品编号</th>
                  <th>克重</th>
                  <th>花型</th>
                  <th>颜色</th>
                  <th>订单总数</th>
                  <th>送货地址</th>
                  <th>联系人</th>
                  <th>下单日期</th>
                  <th>最后交期</th>
                  <th>业务员</th>
                </tr>
              </thead>
              <tbody>
                 <s:iterator value="#session.manage" id="it">
             <tr> 
              <td> 
               <input type="checkbox" name="checkbox" value=<s:property value="#it.name"/>      
            </td>
    <td><s:property value="#it.client"/></td>
    <td><s:property value="#it.order_number"/></td>
    <td><s:property value="#it.item_number"/></td>
    <td><s:property value="#it.gram"/></td>
    <td><s:property value="#it.flower_type"/></td>
    <td><s:property value="#it.color"/></td>
    <td><s:property value="#it.number"/></td>
    <td><s:property value="#it.address"/></td>  
    <td><s:property value="#it.contact"/></td>
    <td><s:property value="#it.order_date"/></td>
    <td><s:property value="#it.final_date"/></td>
    <td><s:property value="#it.salesman"/></td>
           </tr>
           </s:iterator> 
              </tbody>
            </table>
          </div> 
         <button type="submit" class="btn btn-default" >删除选择</button>  
       </form>
        </body>
        </html>


                