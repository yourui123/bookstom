<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="../Css/style.css" />
    <script type="text/javascript" src="../Js/jquery.js"></script>
    <script type="text/javascript" src="../Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="../Js/bootstrap.js"></script>
    <script type="text/javascript" src="../Js/ckform.js"></script>
    <script type="text/javascript" src="../Js/common.js"></script>

    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }


    </style>
</head>
<body>
<form  method="post" class="definewidth m20" id=formset>
<table class="table table-bordered table-hover m10">
    <tr>
        <td width="10%" class="tableleft">上级</td>
        <td>
            <select name="fp_id" id="power">
            </select>
        </td>
    </tr>
    <tr>
        <td class="tableleft">名称</td>
        <td><input type="text" name="pname"/></td>
    </tr>
    <tr>
        <td class="tableleft">url</td>
        <td><input type="text" name="url"/></td>
    </tr>
    <tr>
        <td class="tableleft"></td>
        <td>
            <button  class="btn btn-primary" type="button" id="seave">保存</button> &nbsp;&nbsp;<button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
        </td>
    </tr>
</table>
</form>
</body>
</html>
<script>
    $(function () {       
		$('#backid').click(function(){
				window.location.href="index.jsp";
		 });
		$('#seave').click(function(){
			
			$.ajax({
				
				type: "POST",
				url:"/seavepower", 
				data:$('#formset').serialize(), //要发送的是ajaxFrm表单中的数据
				
				error: function(request) {
				alert("发送请求失败！");
				},
				success: function(data) {
					alert(data)
					window.location.href="/Menu/index.jsp";
			
				}
				});
	 });
		
			
	            $.ajax({  
	                url: "/poweroption",    //后台webservice里的方法名称  
	                type: "get",  
	                dataType: "json",  
	                contentType: "application/json",  
	                traditional: true,  
	                success: function (data) {  
	                    
	                        var jsonObj =data;  
	                        var optionstring = "";  
	                        for (var j = 0; j < jsonObj.length; j++) {  
	                            optionstring += "<option value=\"" + jsonObj[j].pid + "\" >" + jsonObj[j].pname + "</option>";  
	                        }  
	                        $("#power").html("<option value='0'>根节点</option> "+optionstring);  
	                     
	                },  
	                error: function (msg) {  
	                    alert("出错了！");  
	                }  
	            });            
	      
   

    });
</script>