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
                  <th>日期</th>
                  <th>供应商</th>
                  <th>规格</th>
                  <th>平均重量</th>
                  <th>库存数量</th>
                  <th>库存重量</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><input type="text" class="form-control" id="date" placeholder="日期" name="date"></td>
                  <td><input type="text" class="form-control" id="supplier" placeholder="供应商" name="supplier"></td>
                  <td><input type="text" class="form-control" id="specification" placeholder="规格" name="specification"></td>
                  <td><input type="text" class="form-control" id="average_weight" placeholder="平均重量" name="average_weight"></td>
                  <td><input type="text" class="form-control" id="stock_quantity" placeholder="库存数量" name="stock_quantity"></td>
                  <td><input type="text" class="form-control" id="stock_weight" placeholder="库存重量" name="stock_weight"></td>
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
                  <th>日期</th>
                  <th>供应商</th>
                  <th>规格</th>
                  <th>平均重量</th>
                  <th>库存数量</th>
                  <th>库存重量</th>
                </tr>
              </thead>
              <tbody>
            <s:iterator value="#session.manage" id="it">
            <tr> 
             <td>
              <input type="checkbox" name="checkbox" value=<s:property value="#it.name"/>            
             </td>
            <td><s:property value="#it.date"/></td>
            <td><s:property value="#it.supplier"/></td>
            <td><s:property value="#it.specification"/></td>
            <td><s:property value="#it.average_weight"/></td>
            <td><s:property value="#it.stock_quantity"/></td>
            <td><s:property value="#it.stock_weight"/></td>
  
           </tr>
          </s:iterator>       
          
                
              </tbody>
            </table>
          </div> 
         <button type="submit" class="btn btn-default" >删除选择</button> 
         </form> 
        </body>
        </html>


                