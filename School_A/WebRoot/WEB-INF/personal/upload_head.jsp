<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>上传头像</title>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/updPersonInfo.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css" />
</head>
<body>
	<div class="info_main">
		<div class="info_left">
			<table width="100%" border="0" cellspacing="1" cellpadding="10">
				<tr>
					<td valign="top">
						<div class="divTbl">
							<table width="100%" border="0" cellspacing="1" cellpadding="10" class="tblDiv">
								<tr>
									<td valign="bottom">
										<div style="border-bottom: 1px #CCCCCC solid;">
											&nbsp;&nbsp;&nbsp;
											<table border="0" cellspacing="0" cellpadding="2">
												<tr>
													<td>
														&nbsp;&nbsp;
													</td>
													<td class="tblInfo" style="border-left: 1px #898989 solid;">
														&nbsp;&nbsp;
														<a href="" class="xh">基本信息</a>&nbsp;&nbsp;
													</td>
													<td class="tblInfo">
														&nbsp;&nbsp;
														<a href="" class="xh">联系方式</a>&nbsp;&nbsp;
													</td>
													<td class="tblInfo">
														&nbsp;&nbsp;
														<a href="" class="xh">个人信息</a>&nbsp;&nbsp;
													</td>
													<td class="tblInfo">
														&nbsp;&nbsp;
														<a href="" class="xh">学校信息</a>&nbsp;&nbsp;
													</td>
													<td class="tblInfo">
														&nbsp;&nbsp;
														<a href="" class="xh">工作信息</a>&nbsp;&nbsp;
													</td>
													<td class="tblInfo" bgcolor="#6D84B4">
														&nbsp;&nbsp;
														<a href="" class="xh">上传头像</a>&nbsp;&nbsp;
													</td>
												</tr>
											</table>
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<form action="${pageContext.request.contextPath}/profile/uploadHead" method="post" enctype="multipart/form-data">
											<table width="100%" border="0" cellspacing="1" cellpadding="10">
												<tr>
													<td width="40%">
														&nbsp;
														<font class="news_title2">当前头像</font>
													</td>
													<td>
														&nbsp;
														<font class="news_title2">上传头像 </font>
													</td>
												</tr>
												<tr>
													<td valign="top">
														&nbsp;
														<font class="news_title3">你可以到你的<a href="" class="xh">头像相册</a>里选择照片设置为当前头像</font><br/>
														<img src="${pageContext.request.contextPath}/images/${loginuser.id }/head/${loginuser.photo }?abc=<%=Math.random() %>" width="200" height="200" />
													</td>
													<td valign="top">
														&nbsp;
														<font class="news_title3">上传真实头像，成为<a href="" class="xh">星级用户</a>，即可拥有无限量相册空间！</font><br />
														&nbsp;
														<input type="file" class="wby" name="myhead"/><br/>
														&nbsp;
														<font class="news_title3">支持 JPG、JPEG、GIF、BMP 和 PNG
															文件格式，最大4M。 头像高度超出宽度1.5倍的部分会被切除。</font><br/><br/>
														<input type="submit" value="上传头像" class="sub" />
													</td>
												</tr>
											</table>
										</form>
									</td>
								</tr>
							</table>
						</div>
					</td>
					<td align="center">
						<img src="${pageContext.request.contextPath}/images/front/selfright.jpg"/>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>
