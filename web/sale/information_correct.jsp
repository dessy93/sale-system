<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <tr>
                  <td>
                    <label>
                      <input type="checkbox" name="checkbox" value="checkbox"/>
                    </label>
                  </td>
                  <td>1,001</td>
                  <td>1,001</td>
                  <td>Lorem</td>
                  <td>ipsum</td>
                  <td>dolor</td>
                </tr>
              </tbody>
            </table>
          </div> 
         <button type="submit" class="btn btn-default" onclick="delrow()">删除选择</button>  
        </body>
        </html>


                