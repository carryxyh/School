<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>注册页面</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1"/>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/js/register.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css"/>
</head>

<body>
	<div class="reg_main_frame">
		<form action="${pageContext.request.contextPath}/register" method="post">
			<table>
				<tr>
					<td class="tab_td"><label for="userName">真实姓名:</label></td>
					<td><input id="userName" type="text" class="form-control input-sm" name="userName"/></td>
					<td><span id="name_remindSpan" class="remindSpan">请输入真实姓名</span></td>
				</tr>
				<tr>
					<td class="tab_td">性别:</td>
					<td><input type="radio" name="sex" checked="checked" value="male"/> 男 <input type="radio" name="sex" value="female"/> 女 </td>
				</tr>
				<tr>
					<td class="tab_td"><label for="work">请选择您的职业:</label></td>
					<td><select id="work" name="work" multiple class="form-control" size="4" onchange="changeWork(this)">
							<option value="worker">已工作</option>
							<option value="student">大学生</option>
							<option value="midstu">中学生/中专技校</option>
							<option value="nothing">以上都不是</option>
					</select></td>
				</tr>
				<tr>
					<td class="tab_td">
						<label for="province">请选择省份:</label>
					</td>
					<td>
						<select id="province" name="province" class="form-control">
								<option>----省份----</option>
						</select>
					</td>
				</tr>
				<tr>
					<td class="tab_td">
						<label for="city">请选择城市:</label>
					</td>
					<td>
						<select id="city" name="city" class="form-control">
								<option>----城市----</option>
						</select>
					</td>
				</tr>
				<tr class="company_info">
					<td class="tab_td"><label for="company">公司:</label></td>
					<td><input id="company" type="text" class="form-control input-sm" name="company" placeholder="请输入您所在的公司"/></td>
				</tr>
				<tr class="student_info">
					<td class="tab_td">类型:</td>
					<td>
						<select name="userType">
								<option value="graduate">大学生</option>
								<option value="master">硕士</option>
								<option value="doctor">博士</option>
						</select>
					</td>
				</tr>
				<tr class="student_info">
					<td class="tab_td">大学:</td>
					<td>
						<!-- 隐藏一个大学的id,注册一个用户，应当以大学编号为准，而不能以大学的名称为准 -->
						<input type="hidden" name="universityId" id="universityId" />
						<input id="university" onclick="showUniDiv()" class="form-control input-sm" type="text" name="university" />
					</td>
				</tr>
				<tr>
					<td class="tab_td"><label for="email">电子邮箱:</label><br/>
					</td>
					<td><input id="email" type="email" class="form-control input-sm" name="email" placeholder="请输入邮箱"/></td>
				</tr>
				<tr>
					<td class="tab_td"><label for="password">设置密码:</label></td>
					<td><input id="password" type="password" class="form-control input-sm" name="password" placeholder="请输入密码"/></td>
					<td><span class="remindSpan">密码长度应为6~12位</span></td>
				</tr>
				<tr>
					<td class="tab_td"><label for="password_yes">确认密码:</label></td>
					<td><input id="password_yes" type="password" class="form-control input-sm" name="password_yes" placeholder="请再确认密码"/></td>
					<td><span class="remindSpan">请再输入一次</span></td>
				</tr>
				<tr>
					<td class="tab_td">验证码:</td>
					<td>请输入以下验证码，看不清换一张?</td>
					<td>[1234]</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="免费注册" class="btn btn-success btn-sm"/></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="checkbox" name="" /><span class="">&nbsp;我已阅读并同意遵守</span><a href="#">校内网服务条款</a></td>
					<td></td>
				</tr>
			</table>
		</form>
	</div>
	<div id="uniDiv" style="display: none">
		<table border="1" align="center" height="380px" width="500px" bordercolor="#3B5888">
			<tr>
				<td bordercolor="#C3C3C3" width="500px">
					<c:forEach items="${countrylist }" var="country">
						<a href="javascript:void(0);">${country.name }</a>|
					</c:forEach>
				</td>
			</tr>
			<tr>
				<td>
					<c:forEach items="${provincelist }" var="province">
						<a href="javascript:void(0)" onclick="setUniInPro(this)" id="${province.id}" counID="${province.country.id}">${province.name }</a>
					</c:forEach>
				</td>
			</tr>
			<tr>
				<td>
					<div>
						<table id="uniTable">
							<tr>
								<td>
									<c:forEach items="${universitylist }" var="university">
										<li>
											<a href="javascript:void(0);" onclick="setMyUni(this)" id="${university.id}">${university.name }</a>
										</li>	
									</c:forEach>
								</td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
			<tr>
				<td><input type="button" value="关闭" class="btn btn-success btn-sm" onclick="closeUniDiv()"/></td>
			</tr>
		</table>
	</div>
</body>
</html>
