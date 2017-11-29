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
    <link rel="stylesheet" type="text/css" href="../Css/jquery.treegrid.css" />
    <script type="text/javascript" src="../Js/jquery.js"></script>
    <script type="text/javascript" src="../Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="../Js/bootstrap.js"></script>
    <script type="text/javascript" src="../Js/ckform.js"></script>
    <script type="text/javascript" src="../Js/common.js"></script>
    <script type="text/javascript" src="../Js/prompt.alert.js"></script>
    <link href="http://cdn.bootcss.com/bootstrap-table/1.9.1/bootstrap-table.min.css" rel="stylesheet"/>

    <script src="http://cdn.bootcss.com/bootstrap-table/1.9.1/bootstrap-table.min.js"></script>

    <script src="http://cdn.bootcss.com/bootstrap-table/1.9.1/locale/bootstrap-table-zh-CN.min.js"></script>
           

	<link rel="stylesheet" href="../Css/TreeGrid.css" />

<script type="text/javascript" src="../Js/TreeGrid.js"></script>

    
  
    

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
    指标名称：
    <input type="text" name="index_name" id="index_name"class="abc input-default" placeholder="" value="">&nbsp;&nbsp; 
    <button class="btn btn-primary" id=query type="submit">查询</button>&nbsp;&nbsp; <button type="button" class="btn btn-success" id="addnew">新增指标</button>
</form>
<table class="table table-bordered table-hover definewidth m10" id="tb">
	    
</table>
<div id="div1"></div>

</body>
</html>
<script>
    $(function () {
    	
    	$("#form").submit(function(){
    		$("#index_name").val(encodeURI($("#index_name").val()));
    	})
        

		$('#addnew').click(function(){

				window.location.href="/index/add.jsp";
		 });
		/* alert(decodeURI(getUrlParam("pname")));
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
 */
 $.ajax({
		
		type: "post",
		url:"/indextree?index_name="+encodeURI(getUrlParam("index_name")), 
		
		
		error: function(request) {
		alert("发送请求失败！");
		},
		success: function(data) {
			var resot=JSON.parse(data)
			var config = {
	    			id: "tg1",
	    			width: "100%",
	    			renderTo: "tb",
	    			headerAlign: "left",
	    			headerHeight: "40",
	    			dataAlign: "left",
	    			indentation: "20",
	    			folderOpenIcon: "../Images/folderOpen.png",
	    			folderCloseIcon: "../Images/folderClose.png",
	    			defaultLeafIcon: "../Images/defaultLeaf.gif",
	    			hoverRowBackground: "false",
	    			folderColumnIndex: "1",
	    			itemClick: "itemClickEvent",
	    			columns: [{
	    				headerText: "",
	    				headerAlign: "center",
	    				dataAlign: "center",
	    				width: "20"
	    			},
	    			{
	    				headerText: "指标名称",
	    				dataField: "text",
	    				headerAlign: "center",
	    				width: "210"
	    			},
	    			{
	    				headerText: "权重",
	    				dataField: "attributes",
	    				headerAlign: "center",
	    				handler: "attributesUrl",
	    				dataAlign: "center",
	    				
	    			},
	    			{
	    				headerText: "操作",
	    				dataField: "id",
	    				headerAlign: "center",
	    				dataAlign: "center",
	    				width: "100",
	    				handler: "customLook",
	    				
	    			}],
	    			data:resot
	    		};
	    		
	    		var treeGrid = new TreeGrid(config);
	    		treeGrid.show()
	    		
	
		}
		});	
    })


	
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
				url:"/delectindex?index_id="+id, 
				
				
				error: function(request) {
					prompt_alert("error","错误！！");
				},
				success: function(data) {
					prompt_alert("success",data,"index.jsp");
			
				}
				});	
		
		}

	
	
	
	
	}
	function edit(id){
		alert
		window.location.href="edit.jsp?index_id="+id;
	}
</script>