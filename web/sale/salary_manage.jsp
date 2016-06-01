<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
         <!--<link href="../res/bootstrap.min.css" rel="stylesheet">-->
    </head>
    <body>
        
        <form method="post" action="upload_manage.action" enctype="multipart/form-data">
   <h4 class="modal-title" id="myModalLabel">请选择Excel文件</h4> 
  <input type="text" size="20" name="upfile" id="upfile" style="border:1px dotted #ccc"> 
  <input type="button" value="浏览" onclick="path.click()" style="border:1px solid #ccc;background:#fff">
  <input type="file" id="path" style="display:none" onchange="upfile.value=this.value" name="filename">

<button type="submit" class="btn btn-default"> 上传</button>
</form>
    <hr/>
    

      <form role="form" action="show_manage.action" method="post" >

       <div class="table-responsive">
            <table class="table table-striped table-hover" id="myTable">
              <thead>
                <tr>
                  <th>员工姓名</th>
                  <th>基本工资</th>
                  <th>岗位工资</th>
                   <th>工龄工资</th>
                  <th>加班</th>
                  <th>全勤奖</th>
                  <th>高温补贴</th>                 
                  <th>话费补贴</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><input type="text" class="form-control" id="name" placeholder="员工姓名" name="name"></td>
                  <td><input type="text" class="form-control" id="basic_salary" placeholder="基本工资" name="basic_salary"></td>
                   <td><input type="text" class="form-control" id="post_salary" placeholder="岗位工资" name="post_salary"></td>
                  <td><input type="text" class="form-control" id="seniority_salary" placeholder="工龄工资" name="seniority_salary"></td>
                  <td><input type="text" class="form-control" id="overtime_pay" placeholder="加班工资" name="overtime_pay"></td>
                  <td><input type="text" class="form-control" id="full_attendance_bonus" placeholder="全勤奖" name="full_attendance_bonus"></td>
                  <td><input type="text" class="form-control" id="high_temperature_allowance" placeholder="高温补贴" name="high_temperature_allowance"></td>
                  <td><input type="text" class="form-control" id="telephone_fee" placeholder="话费补贴" name="telephone_fee"></td>
                </tr>
                
              </tbody>
            </table>
          </div> 
    
          <button type="submit" class="btn btn-default">提交</button>
         

        </form>
    
      <hr/>  
      
      <form role="form" action="delete.action" method="post" >

 <div class="table-responsive">
            <table class="table table-striped table-hover" id="myTable">
              <thead>
                <tr>
                  <th>操作</th>
                  <th>员工姓名</th>
                  <th>基本工资</th>
                  <th>岗位工资</th>
                  <th>工龄工资</th>
                  <th>加班</th>
                  <th>全勤奖</th>
                  <th>高温补贴</th>
                  <th>话费补贴</th>
                </tr>
              </thead>
              <tbody>
                  
           <s:iterator value="#session.manage" id="it">
<tr> 
    <td>
       
        <input type="checkbox" name="checkbox" value=<s:property value="#it.name"/>/>             
     </td>
    <td><s:property value="#it.name"/></td>
    <td><s:property value="#it.basic_salary"/></td>
    <td><s:property value="#it.post_salary"/></td>
    <td><s:property value="#it.seniority_salary"/></td>
    <td><s:property value="#it.overtime_pay"/></td>
    <td><s:property value="#it.full_attendance_bonus"/></td>
    <td><s:property value="#it.high_temperature_allowance"/></td>
    <td><s:property value="#it.telephone_fee"/></td>
    
  
</tr>
</s:iterator> 
           
              </tbody>
            </table>
          </div> 
            
        <button type="submit" class="btn btn-default">删除选择</button>       
             </form>
         <s:debug></s:debug>
        </body>
        </html>


                