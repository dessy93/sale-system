<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
        
        <link href="res/fileinput.css" rel="stylesheet">
        <link href="js/fileinput.js" rel="stylesheet">
        
    </head>
    <body>
                <form method="post" action="upload_I_C.action" enctype="multipart/form-data">
   <h4 class="modal-title" id="myModalLabel">请选择Excel文件</h4> 
  <input type="text" size="20" name="upfile" id="upfile" style="border:1px dotted #ccc"> 
  <input type="button" value="浏览" onclick="path.click()" style="border:1px solid #ccc;background:#fff">
  <input type="file" id="path" style="display:none" onchange="upfile.value=this.value" name="filename">

<button type="submit" class="btn btn-default"> 上传</button>
</form>
    <hr>
      <form role="form" action="man_manage.action" method="post" >

       <div class="table-responsive">
            <table class="table table-striped table-hover" id="myTable">
              <thead>
                <tr>
                  <th>员工姓名</th>
                  <th>性别</th>
                  <th>出生年月</th>
                  <th>身份证号</th>
                  <th>联系电话</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><input type="text" class="form-control" id="name" placeholder="员工姓名" name="name"></td>
                  <td><input type="text" class="form-control" id="sex" placeholder="性别" name="sex"></td>
                   <td><input type="text" class="form-control" id="birthday" placeholder="出生年月" name="birthday"></td>
                  <td><input type="text" class="form-control" id="identity" placeholder="身份证号" name="identity"></td>
                  <td><input type="text" class="form-control" id="tel" placeholder="联系电话" name="tel"></td>
                </tr>
                
              </tbody>
            </table>
          </div> 
    
          <button type="submit" class="btn btn-default">提交</button>
         

        </form>
        
    <hr/>
    
            <form role="form" action="delete_I_C.action" method="post" >

 <div class="table-responsive">
            <table class="table table-striped table-hover" id="myTable">
              <thead>
                <tr>
                  <th>操作</th>
                  <th>员工姓名</th>
                  <th>性别</th>
                  <th>出生年月</th>
                  <th>身份证号</th>
                  <th>联系电话</th>
                </tr>
              </thead>
              <tbody>
                  <s:iterator value="#session.Imanage" id="it">
<tr> 
    <td>
       
        <input type="checkbox" name="checkbox" value=<s:property value="#it.name"/>/>             
     </td>
    <td><s:property value="#it.name"/></td>
    <td><s:property value="#it.sex"/></td>
    <td><s:property value="#it.birthday"/></td>
    <td><s:property value="#it.identity"/></td>
    <td><s:property value="#it.tel"/></td>

  
</tr>
</s:iterator> 

              </tbody>
               
            </table>
          </div> 
         <button type="submit" class="btn btn-default" onclick="delrow()">删除选择</button>  
          </form>
        

         <s:debug></s:debug>
        </body>
        
        </html>


                