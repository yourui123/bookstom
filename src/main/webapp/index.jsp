<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2017/10/18
  Time: 9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>教师综合评教系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/main-min.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div class="header">

    <div class="dl-title">
        <!--<img src="/chinapost/Public/assets/img/top.png">-->
    </div>

    <div class="dl-log">欢迎您，<span class="dl-log-user">root</span><a href="/chinapost/index.php?m=Public&a=logout" title="退出系统" class="dl-log-quit">[退出]</a>
    </div>
</div>
<div class="content">
    <div class="dl-main-nav">
        <div class="dl-inform"><div class="dl-inform-title"><s class="dl-inform-icon dl-up"></s></div></div>
        <ul id="J_Nav"  class="nav-list ks-clear">
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-home">菜单栏</div></li>
        </ul>
    </div>
    <ul id="J_NavContent" class="dl-tab-conten">

    </ul>
</div>
<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="assets/js/bui-min.js"></script>
<script type="text/javascript" src="assets/js/common/main-min.js"></script>
<script type="text/javascript" src="assets/js/config-min.js"></script>
<<<<<<< HEAD
	<script>
		BUI.use('common/main', function() {
			var config = [ {
				id : '1',
				menu : [ {
					text : '权限管理',
					items : [ {
						id : '3',
						text : '角色管理',
						href : 'Role/index.html'
					}, {
						id : '4',
						text : '用户管理',
						href : 'User/index.jsp'
					}, {
						id : '6',
						text : '菜单管理',
						href : 'Menu/index.jsp'
					} ]
				}, {
					text : '业务管理',
					items : [ {
						id : '3',
						text : '系部管理',
						href : 'Departement/index.jsp'
					}, {
						id : '4',
						text : '班级管理',
						href : 'classes/index.html'
					}, {
						id : '6',
						text : '指标管理',
						href : 'Menu/index.html'
					}, {
						id : '6',
						text : '问卷管理',
						href : 'questions/index.html'
					} ]
				}, {
					text : '其他',
					items : [ {
						id : '3',
						text : '修改密码',
						href : 'Role/index.html'
					}, {
						id : '4',
						text : '显示详情',
						href : 'User/index.html'
					} ]
				} ]
			} ];
			new PageUtil.MainPage({
				modulesConfig : config
			});
		});
	</script>
	<div style="text-align:center;">
=======
<script>
    BUI.use('common/main',function(){
        var config = [{id:'1',menu:[{text:'权限管理',items:[{id:'3',text:'角色管理',href:'Role/index.jsp'},{id:'4',text:'用户管理',href:'User/index.jsp'},{id:'6',text:'菜单管理',href:'Menu/index.jsp'}]},
            {text:'业务管理',items:[{id:'3',text:'系部管理',href:'Departement/index.jsp'},{id:'4',text:'班级管理',href:'classes/index.jsp'},{id:'6',text:'指标管理',href:'Menu/index.html'},{id:'6',text:'问卷管理',href:'questions/index.html'}]},
            {text:'其他',items:[{id:'3',text:'修改密码',href:'Role/index.html'},{id:'4',text:'显示详情',href:'User/index.html'}]}]}];
        new PageUtil.MainPage({
            modulesConfig : config
        });
    });
</script>
<div style="text-align:center;">
>>>>>>> branch 'master' of git@github.com:lixingjie123/ComprehensiveEvaluationSystem.git
</div>
</body>
</html>