<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="../Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="../Css/style.css" />
    <script type="text/javascript" src="../Js/jquery.js"></script>
    <script type="text/javascript" src="../Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="../Js/bootstrap.js"></script>
    <script type="text/javascript" src="../Js/ckform.js"></script>
    <script type="text/javascript" src="../Js/common.js"></script>
    <link href="http://cdn.bootcss.com/bootstrap-table/1.9.1/bootstrap-table.min.css" rel="stylesheet"/>

    <script src="http://cdn.bootcss.com/bootstrap-table/1.9.1/bootstrap-table.min.js"></script>

    <script src="http://cdn.bootcss.com/bootstrap-table/1.9.1/locale/bootstrap-table-zh-CN.min.js"></script>
 

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

<form class="form-inline definewidth m20" action="index.jsp" method="get" id="form">
    菜单名称：
    <input type="text" name="pname" id="pname"class="abc input-default" placeholder="" value="">&nbsp;&nbsp;  
    <button class="btn btn-primary" id=query type="submit">查询</button>&nbsp;&nbsp; <button type="button" class="btn btn-success" id="addnew">新增菜单</button>
</form>
<table class="table table-bordered table-hover definewidth m10" id="table">
	    
</table>
</body>
</html>
<script>
    $(function () {
    	
    	$("#form").submit(function(){
    		$("#pname").val(encodeURI($("#pname").val()));
    	})
        

		$('#addnew').click(function(){

				window.location.href="/Menu/add.jsp";
		 });
		alert(decodeURI(getUrlParam("pname")));
        var $table = $('#table');
            $table.bootstrapTable({
            url: "/selectpower?pname="+encodeURI(getUrlParam("pname")),
            dataType: "json",
            singleSelect: false,
            height: 550,//高度调整
            locale:'zh-CN',//中文支持
            pagination: true,//是否开启分页（*）
            pageNumber:1,//初始化加载第一页，默认第一页
            pageSize: 5,//每页的记录行数（*）
            pageList: [5,10,11],//可供选择的每页的行数（*）

            sidePagination: "server", //服务端处理分页
            showColumns: true,//列选择按钮
            clickToSelect: true,
            toolbar: "#toolbar",//指定工具栏
            toolbarAlign: "right",//工具栏对齐方式
            detailView: false, //是否显示详情折叠
            cache:false,
            
            
         

               
               
                columns: [
            {
                title: '菜单id',
                field: 'pid',
                align: 'center',
                valign: 'middle'
            },
            {
                title: '菜单名称',
                field: 'pname',
                align: 'center',
                valign: 'middle',
            },
            {
                title: 'url',
                field: 'url',
                align: 'center'
            },  {
                title: '父菜单',
                field: 'fname',
                align: 'center',
       
            },
            {
                title: '操作',
                field: 'pid',
                align: 'center',
                formatter:function(value,row,index){
                    var e = '<a href="#" mce_href="#" onclick="edit(\''+ row.pid + '\')">编辑</a> ';
                    var d = '<a href="#" mce_href="#" onclick="del(\''+ row.pid +'\')">删除</a> ';
                    return e+d;
                }
            }
        ]
    });


    });
	
	        function getUrlParam(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
            var r = window.location.search.substr(1).match(reg);  //匹配目标参数
            if (r != null) return unescape(r[2]); return null; //返回参数值
        }
	function del(id)
	{
		
		
		if(confirm("确定要删除吗？"))
		{
		
               $.ajax({
				
				type: "get",
				url:"/delectpower?pid="+id, 
				
				
				error: function(request) {
				alert("发送请求失败！");
				},
				success: function(data) {
					alert(data)
					window.location.href="/index.jsp";
			
				}
				});	
		
		}

	
	
	
	
	}
	function edit(id){
		alert
		window.location.href="/Menu/edit.jsp?pid="+id;
	}
</script>