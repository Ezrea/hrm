<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
	<base href="<%=basePath%>">
	<!-- 下拉框 -->
	<link rel="stylesheet" href="static/ace/css/chosen.css" />
	<!-- jsp文件头和头部 -->
	<%@ include file="../../system/index/top.jsp"%>
	<!-- 日期框 -->
	<link rel="stylesheet" href="static/ace/css/datepicker.css" />
</head>
<body class="no-skin">
<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
	<!-- /section:basics/sidebar -->
	<div class="main-content">
		<div class="main-content-inner">
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
					
					<form action="apply/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="APPLY_ID" id="APPLY_ID" value="${pd.APPLY_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">姓名:</td>
								<td><input type="text" name="NAME" id="NAME" value="${pd.NAME}" maxlength="255" placeholder="这里输入姓名" title="姓名" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">预约面试时间:</td>
								<td><input class="span10 date-picker" name="TIME" id="TIME" value="${pd.TIME}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="预约面试时间" title="预约面试时间" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">应聘岗位:</td>
								<td><input type="text" name="JOB" id="JOB" value="${pd.JOB}" maxlength="255" placeholder="这里输入应聘岗位" title="应聘岗位" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">人才来源:</td>
								<td><input type="text" name="ORIGIN" id="ORIGIN" value="${pd.ORIGIN}" maxlength="255" placeholder="这里输入人才来源" title="人才来源" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">联系方式:</td>
								<td><input type="text" name="CONTACT" id="CONTACT" value="${pd.CONTACT}" maxlength="255" placeholder="这里输入联系方式" title="联系方式" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">邮箱地址:</td>
								<td><input type="text" name="EMAIL" id="EMAIL" value="${pd.EMAIL}" maxlength="255" placeholder="这里输入邮箱地址" title="邮箱地址" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">应聘状态:</td>
								<td><input type="text" name="RESULT" id="RESULT" value="${pd.RESULT}" maxlength="255" placeholder="这里输入应聘状态" title="应聘状态" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="text-align: center;" colspan="10">
									<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
									<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
								</td>
							</tr>
						</table>
						</div>
						
						<div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green">提交中...</h4></div>
						
					</form>
	
					<div id="zhongxin2" class="center" style="display:none"><img src="static/images/jzx.gif" style="width: 50px;" /><br/><h4 class="lighter block green"></h4></div>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.page-content -->
		</div>
	</div>
	<!-- /.main-content -->
</div>
<!-- /.main-container -->


	<!-- 页面底部js¨ -->
	<%@ include file="../../system/index/foot.jsp"%>
	<!-- 下拉框 -->
	<script src="static/ace/js/chosen.jquery.js"></script>
	<!-- 日期框 -->
	<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		<script type="text/javascript">
		$(top.hangge());
		//保存
		function save(){
			if($("#NAME").val()==""){
				$("#NAME").tips({
					side:3,
		            msg:'请输入姓名',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#NAME").focus();
			return false;
			}
			if($("#TIME").val()==""){
				$("#TIME").tips({
					side:3,
		            msg:'请输入预约面试时间',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#TIME").focus();
			return false;
			}
			if($("#JOB").val()==""){
				$("#JOB").tips({
					side:3,
		            msg:'请输入应聘岗位',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JOB").focus();
			return false;
			}
			if($("#ORIGIN").val()==""){
				$("#ORIGIN").tips({
					side:3,
		            msg:'请输入人才来源',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ORIGIN").focus();
			return false;
			}
			if($("#CONTACT").val()==""){
				$("#CONTACT").tips({
					side:3,
		            msg:'请输入联系方式',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CONTACT").focus();
			return false;
			}
			if($("#EMAIL").val()==""){
				$("#EMAIL").tips({
					side:3,
		            msg:'请输入邮箱地址',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#EMAIL").focus();
			return false;
			}
			if($("#RESULT").val()==""){
				$("#RESULT").tips({
					side:3,
		            msg:'请输入应聘状态',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#RESULT").focus();
			return false;
			}
			$("#Form").submit();
			$("#zhongxin").hide();
			$("#zhongxin2").show();
		}
		
		$(function() {
			//日期框
			$('.date-picker').datepicker({autoclose: true,todayHighlight: true});
		});
		</script>
</body>
</html>