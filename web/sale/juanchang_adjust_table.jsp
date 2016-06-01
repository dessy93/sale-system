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
                  <th>棉品</th>
                  <th>克重</th>
                  <th>幅宽</th>
                  <th>调整后卷长</th>
                  <th>调整后重量</th>
                  <th>内袋颜色</th>
                  <th>内袋尺寸</th>
                  <th>外袋尺寸</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><input type="text" class="form-control" id="cotton_goods" placeholder="棉品" name="cotton_goods"></td>
                  <td><input type="text" class="form-control" id="gram" placeholder="克重" name="gram"></td>
                   <td><input type="text" class="form-control" id="breadth" placeholder="幅宽" name="breadth"></td>
                  <td><input type="text" class="form-control" id="adjusted_roll" placeholder="调整后卷长" name="adjusted_roll"></td>
                  <td><input type="text" class="form-control" id="adjusted_weight" placeholder="调整后重量" name="adjusted_weight"></td>
                  <td><input type="text" class="form-control" id="innerbag_color" placeholder="内袋颜色" name="innerbag_color"></td>
                  <td><input type="text" class="form-control" id="innerbag_size" placeholder="内袋尺寸" name="innerbag_size"></td>
                  <td><input type="text" class="form-control" id="outerbag_size" placeholder="外袋尺寸" name="outerbag_size"></td>
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
                  <th>棉品</th>
                  <th>克重</th>
                  <th>幅宽</th>
                  <th>调整后卷长</th>
                  <th>调整后重量</th>
                  <th>内袋颜色</th>
                  <th>内袋尺寸</th>
                  <th>外袋尺寸</th>
                </tr>
              </thead>
              <tbody>
               <s:iterator value="#session.manage" id="it">
             <tr> 
              <td> 
               <input type="checkbox" name="checkbox" value=<s:property value="#it.name"/>            
            </td>
              <td><s:property value="#it.cotton_goods"/></td>
              <td><s:property value="#it.gram"/></td>
              <td><s:property value="#it.breadth"/></td>
              <td><s:property value="#it.adjusted_roll"/></td>
              <td><s:property value="#it.adjusted_weight"/></td>
              <td><s:property value="#it.innerbag_color"/></td>
              <td><s:property value="#it.innerbag_size"/></td>
              <td><s:property value="#it.outerbag_size"/></td>
           </tr>
           </s:iterator>     
          
                
              </tbody>
            </table>
          </div> 
         <button type="submit" class="btn btn-default" >删除选择</button>  
       </form>
        </body>
        </html>


                