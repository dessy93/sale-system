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
                  <th>品名</th>
                  <th>规格</th>
                  <th>日期</th>
                  <th>经手人</th>
                  <th>单位</th>
                  <th>数量</th>
                  <th>厂商</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><input type="text" class="form-control" id="produce_name" placeholder="品名" name="produce_name"></td>
                  <td><input type="text" class="form-control" id="specificatiom" placeholder="规格" name="specification"></td>
                   <td><input type="text" class="form-control" id="date" placeholder="日期" name="date"></td>
                  <td><input type="text" class="form-control" id="man" placeholder="经手人" name="man"></td>
                  <td><input type="text" class="form-control" id="unit" placeholder="单位" name="unit"></td>
                  <td><input type="text" class="form-control" id="number" placeholder="数量" name="number"></td>
                  <td><input type="text" class="form-control" id="company" placeholder="厂商" name="company"></td>
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
                  <th>品名</th>
                  <th>规格</th>
                  <th>日期</th>
                  <th>经手人</th>
                  <th>单位</th>
                  <th>数量</th>
                  <th>厂商</th>
                </tr>
              </thead>
              <tbody>
                <s:iterator value="#session.manage" id="it">
             <tr> 
              <td> 
               <input type="checkbox" name="checkbox" value=<s:property value="#it.name"/>           
            </td>
              <td><s:property value="#it.produce_name"/></td>
              <td><s:property value="#it.specification"/></td>
              <td><s:property value="#it.date"/></td>
              <td><s:property value="#it.man"/></td>
              <td><s:property value="#it.unit"/></td>
              <td><s:property value="#it.number"/></td>
              <td><s:property value="#it.company"/></td>
           </tr>
           </s:iterator>     
          
                
              </tbody>
            </table>
          </div> 
         <button type="submit" class="btn btn-default" >删除选择</button>  
       </form>
        </body>
        </html>


                