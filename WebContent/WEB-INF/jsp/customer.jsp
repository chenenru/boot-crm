<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--<%@page isELIgnored="false"%>--%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itcast" uri="http://itcast.cn/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>商品列表-BootCRM</title>

    <!--范例-->
    <%--<link rel="stylesheet" media="all" type="text/css"
          href="<c:url value='/resource'/>/base.css" media="all">--%>

<!-- Bootstrap Core CSS -->
<link href="<c:url value='/css'/>/bootstrap.min.css" rel="stylesheet" media="all">

<!-- MetisMenu CSS -->
<link href="<c:url value='/css'/>/metisMenu.min.css" rel="stylesheet" media="all">

<!-- DataTables CSS -->
<link href="<c:url value='/css'/>/dataTables.bootstrap.css" rel="stylesheet" media="all">

<!-- Custom CSS -->
<link href="<c:url value='/css'/>/sb-admin-2.css" rel="stylesheet" media="all">

<!-- Custom Fonts -->
<link href="<c:url value='/css'/>/font-awesome.min.css" rel="stylesheet" media="all"
	type="text/css">
<link href="<c:url value='/css'/>/boot-crm.css" rel="stylesheet" media="all"
	type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script type="text/javascript"
        src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script type="text/javascript"
        src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">面对疾风后台管理系统</a>
		</div>
		<!-- /.navbar-header -->

		<ul class="nav navbar-top-links navbar-right">
			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="#"><i class="fa fa-user fa-fw"></i> 用户设置</a></li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
					<li class="divider"></li>
					<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>
							退出登录</a></li>
				</ul> <!-- /.dropdown-user --></li>
			<!-- /.dropdown -->
		</ul>
		<!-- /.navbar-top-links -->

		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li class="sidebar-search">
						<div class="input-group custom-search-form">
							<input type="text" class="form-control" placeholder="查询内容...">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">
									<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
								</button>
							</span>
						</div> <!-- /input-group -->
					</li>
					<li><a href="orderManege.jsp" class="active"><i
							class="fa fa-edit fa-fw"></i>订单管理</a></li>
					<li><a href="userManege.jsp"><i
							class="fa fa-dashboard fa-fw"></i>用户管理</a></li>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">商品管理</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="panel panel-default">
				<div class="panel-body">
					<form class="form-inline" action="${pageContext.request.contextPath }/customer/list.action" method="get">
						<div class="form-group">
							<label for="customerName">商品名称</label>
							<input type="text" class="form-control" id="customerName" value="${custName }" name="custName">
						</div>
						<div class="form-group">
							<label for="customerFrom">商品类型</label>
							<select	class="form-control" id="customerFrom" placeholder="商品类型" name="custSource">
								<option value="">--请选择--</option>
								<c:forEach items="${fromType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == custSource}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
						<%--<div class="form-group">--%>
							<%--<label for="custIndustry">所属行业</label> --%>
							<%--<select	class="form-control" id="custIndustry"  name="custIndustry">--%>
								<%--<option value="">--请选择--</option>--%>
								<%--<c:forEach items="${industryType}" var="item">--%>
									<%--<option value="${item.dict_id}"<c:if test="${item.dict_id == custIndustry}"> selected</c:if>>${item.dict_item_name }</option>--%>
								<%--</c:forEach>--%>
							<%--</select>--%>
						<%--</div>--%>
						<%--<div class="form-group">--%>
							<%--<label for="custLevel">客户级别</label>--%>
							<%--<select	class="form-control" id="custLevel" name="custLevel">--%>
								<%--<option value="">--请选择--</option>--%>
								<%--<c:forEach items="${levelType}" var="item">--%>
									<%--<option value="${item.dict_id}"<c:if test="${item.dict_id == custLevel}"> selected</c:if>>${item.dict_item_name }</option>--%>
								<%--</c:forEach>--%>
							<%--</select>--%>
						<%--</div>--%>
						<button type="submit" class="btn btn-primary">查询</button>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">商品信息列表</div>
						<!-- /.panel-heading -->
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>ID</th>
									<th>商品名称</th>
									<th>商品类型</th>
									<th>商品数量</th>
									<th>商品颜色</th>
									<th>商品规格</th>
									<th>商品进货数量</th>
									<th>商品库存</th>
									<th>商品进货价</th>
									<th>商品销售价</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.rows}" var="row">
									<tr>
										<td>${row.cust_id}</td>
										<td>${row.cust_name}</td>
										<td>${row.cust_source}</td>
										<td>${row.cust_industry}</td>
										<td>${row.cust_level}</td>
										<td>${row.cust_phone}</td>
										<td></td>
										<td></td>
										<td></td>
										<td>${row.cust_mobile}</td>
										<td>
											<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick="editCustomer(${row.cust_id})">修改</a>
											<a href="#" class="btn btn-danger btn-xs" onclick="deleteCustomer(${row.cust_id})">删除</a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="col-md-12 text-right">
							<itcast:page url="${pageContext.request.contextPath }/customer/list.action" />
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- 客户编辑对话框 -->
	<div class="modal fade" id="customerEditDialog" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">修改商品信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="edit_customer_form">
						<input type="hidden" id="edit_cust_id" name="cust_id"/>
						<div class="form-group">
							<label for="edit_customerName" class="col-sm-2 control-label">商品名称</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_customerName" placeholder="商品名称" name="cust_name">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_customerFrom" style="float:left;padding:7px 15px 0 27px;">商品类型</label>
							<div class="col-sm-10">
								<select	class="form-control" id="edit_customerFrom" placeholder="商品类型" name="cust_source">
									<option value="">--请选择--</option>
									<c:forEach items="${fromType}" var="item">
										<option value="${item.dict_id}"<c:if test="${item.dict_id == custSource}"> selected</c:if>>${item.dict_item_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_custIndustry" style="float:left;padding:7px 15px 0 27px;">商品数量</label>
							<div class="col-sm-10"> 
								<select	class="form-control" id="edit_custIndustry"  name="cust_industry">
									<option value="">--请选择--</option>
									<c:forEach items="${industryType}" var="item">
										<option value="${item.dict_id}"<c:if test="${item.dict_id == custIndustry}"> selected</c:if>>${item.dict_item_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_custLevel" style="float:left;padding:7px 15px 0 27px;">商品颜色</label>
							<div class="col-sm-10">
								<select	class="form-control" id="edit_custLevel" name="cust_level">
									<option value="">--请选择--</option>
									<c:forEach items="${levelType}" var="item">
										<option value="${item.dict_id}"<c:if test="${item.dict_id == custLevel}"> selected</c:if>>${item.dict_item_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_linkMan" class="col-sm-2 control-label">商品规格</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_linkMan" placeholder="商品规格" name="cust_linkman">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_phone" class="col-sm-2 control-label">商品进货数量</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_phone" placeholder="商品进货数量" name="cust_phone">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_mobile" class="col-sm-2 control-label">商品库存</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_mobile" placeholder="商品库存" name="cust_mobile">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_zipcode" class="col-sm-2 control-label">商品进货价</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_zipcode" placeholder="商品进货价" name="cust_zipcode">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_address" class="col-sm-2 control-label">商品销售价</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_address" placeholder="商品销售价 name="cust_address">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" onclick="updateCustomer()">保存修改</button>
				</div>
			</div>
		</div>
	</div>
	<!-- /#wrapper -->
<%--<script type="text/javascript"
        src="<c:url value='/resource'/>/jquery-1.2.6.pack.js"></script>--%>
	<!-- jQuery -->
	<script type="text/javascript"
        src="<c:url value='/js'/>/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script type="text/javascript"
        src="<c:url value='/js'/>/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script type="text/javascript"
        src="<c:url value='/js'/>/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script type="text/javascript"
        src="<c:url value='/js'/>/jquery.dataTables.min.js"></script>
	<script type="text/javascript"
        src="<c:url value='/js'/>/dataTables.bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script type="text/javascript"
        src="<c:url value='/js'/>/sb-admin-2.js"></script>
	
	<script type="text/javascript">
		function editCustomer(id) {
			$.ajax({
				type:"get",
				url:"<%=basePath%>customer/edit.action",
				data:{"id":id},
				success:function(data) {
					$("#edit_cust_id").val(data.cust_id);
					$("#edit_customerName").val(data.cust_name);
					$("#edit_customerFrom").val(data.cust_source)
					$("#edit_custIndustry").val(data.cust_industry)
					$("#edit_custLevel").val(data.cust_level)
					$("#edit_linkMan").val(data.cust_linkman);
					$("#edit_phone").val(data.cust_phone);
					$("#edit_mobile").val(data.cust_mobile);
					$("#edit_zipcode").val(data.cust_zipcode);
					$("#edit_address").val(data.cust_address);
					
				}
			});
		}
		function updateCustomer() {
			$.post("<%=basePath%>customer/update.action",$("#edit_customer_form").serialize(),function(data){
				alert("客户信息更新成功！");
				window.location.reload();
			});
		}
		
		function deleteCustomer(id) {
			if(confirm('确实要删除该客户吗?')) {
				$.post("<%= basePath%>customer/delete.action",{"id":id},function(data){
					alert("客户删除更新成功！");
					window.location.reload();
				});
			}
		}
	</script>

</body>

</html>
