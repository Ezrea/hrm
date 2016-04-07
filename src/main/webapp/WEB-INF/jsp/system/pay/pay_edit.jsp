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
					
					<form action="pay/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="PAY_ID" id="PAY_ID" value="${pd.PAY_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">姓名:</td>
								<td><input type="text" name="NAME" id="NAME" value="${pd.NAME}" maxlength="255" placeholder="这里输入姓名" title="姓名" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">所属部门:</td>
								<td><input type="text" name="DEPARTMENT" id="DEPARTMENT" value="${pd.DEPARTMENT}" maxlength="255" placeholder="这里输入所属部门" title="所属部门" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">岗位:</td>
								<td><input type="text" name="JOB" id="JOB" value="${pd.JOB}" maxlength="255" placeholder="这里输入岗位" title="岗位" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">实际薪资:</td>
								<td><input type="text" name="BASEPAY" id="BASEPAY" value="${pd.BASEPAY}" maxlength="255" placeholder="这里输入实际薪资" title="实际薪资" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">提成:</td>
								<td><input type="text" name="PERCENT" id="PERCENT" value="${pd.PERCENT}" maxlength="255" placeholder="这里输入提成" title="提成" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">奖惩:</td>
								<td><input type="text" name="REWARD" id="REWARD" value="${pd.REWARD}" maxlength="255" placeholder="这里输入奖惩" title="奖惩" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">补贴:</td>
								<td><input type="text" name="SUBSIDE" id="SUBSIDE" value="${pd.SUBSIDE}" maxlength="255" placeholder="这里输入补贴" title="补贴" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">个人所得税扣款:</td>
								<td><input type="text" name="TAX" id="TAX" value="${pd.TAX}" maxlength="255" placeholder="这里输入个人所得税扣款" title="个人所得税扣款" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">医社保扣款:</td>
								<td><input type="text" name="MEDICAL" id="MEDICAL" value="${pd.MEDICAL}" maxlength="255" placeholder="这里输入医社保扣款" title="医社保扣款" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">公积金:</td>
								<td><input type="text" name="SOCALE" id="SOCALE" value="${pd.SOCALE}" maxlength="255" placeholder="这里输入公积金" title="公积金" style="width:98%;"/></td>
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
			if($("#DEPARTMENT").val()==""){
				$("#DEPARTMENT").tips({
					side:3,
		            msg:'请输入所属部门',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#DEPARTMENT").focus();
			return false;
			}
			if($("#JOB").val()==""){
				$("#JOB").tips({
					side:3,
		            msg:'请输入岗位',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JOB").focus();
			return false;
			}
			if($("#BASEPAY").val()==""){
				$("#BASEPAY").tips({
					side:3,
		            msg:'请输入实际薪资',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#BASEPAY").focus();
			return false;
			}
			if($("#PERCENT").val()==""){
				$("#PERCENT").tips({
					side:3,
		            msg:'请输入提成',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#PERCENT").focus();
			return false;
			}
			if($("#REWARD").val()==""){
				$("#REWARD").tips({
					side:3,
		            msg:'请输入奖惩',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#REWARD").focus();
			return false;
			}
			if($("#SUBSIDE").val()==""){
				$("#SUBSIDE").tips({
					side:3,
		            msg:'请输入补贴',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SUBSIDE").focus();
			return false;
			}
			if($("#TAX").val()==""){
				$("#TAX").tips({
					side:3,
		            msg:'请输入个人所得税扣款',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#TAX").focus();
			return false;
			}
			if($("#MEDICAL").val()==""){
				$("#MEDICAL").tips({
					side:3,
		            msg:'请输入医社保扣款',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#MEDICAL").focus();
			return false;
			}
			if($("#SOCALE").val()==""){
				$("#SOCALE").tips({
					side:3,
		            msg:'请输入公积金',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SOCALE").focus();
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