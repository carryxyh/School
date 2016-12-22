<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/updPersonInfo.css" />
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
</head>
<body>
	<div class="info_main">
		<div class="info_left">
			<table width="100%">
				<tr>
					<td width="80%" valign="top">
						<table width="100%" border="0" cellspacing="0" cellpadding="5" >
							<tr>
								<td  style="border-bottom: 1px #898989 solid;">
									<img src="${pageContext.request.contextPath}/images/front/photo.gif" />
									<font class="news_title1" >
										上传新照片
									</font>
								</td>
							</tr>
							<tr>
								<td >
									<img src="${pageContext.request.contextPath}/images/front/photo.gif" />
									<font class="news_title1" >
										创建相册
									</font>
								</td>
							</tr>
							<tr>
								<td valign="top"  align="center" style="border-bottom: 1px #D8DFEA solid;">
									<form action="${pageContext.request.contextPath}/album/goAddPhoto" method="post">
									<table width="80%" cellpadding="5" cellspacing="5" border="0">
										<tr>
											<td align="right" width="20%">
												<font class="news_title3" style="font-weight: bold;">
													名字:
												</font>
											</td>
											<td align="left">
												<input type="text" id="aname" name="name" class="wby" size="30" />
											</td>
										</tr>
										<tr>
											<td align="right" valign="top">
												<font class="news_title3" style="font-weight: bold;">
													描述:
												</font>
											</td>
											<td align="left">
												<textarea class="wbq" name="descript" id="adesc">
												</textarea>
											</td>
										</tr>
										<tr>
											<td align="right">
												<font class="news_title3" style="font-weight: bold;">
													谁能浏览:
												</font>
											</td>
											<td align="left">
												<select style="width: 200px">
													<option>
														只有我自己
													</option>
													<option>
														我的好友
													</option>
													<option>
														我的好友及所有同网络的人
													</option>
													<option selected="selected">
														所有人
													</option>
												</select>
											</td>
										</tr>
										<tr>
											<td>
												&nbsp;
											</td>
											<td align="left">
												<input type="submit" class="sub" value="创建相册" style="width: 100px" />
												<input type="reset" class="sub" value="取消" style="width: 60px" />
											</td>
										</tr>
									</table>
								</form>
							</td>
						</tr>
						<tr>
							<td >
								<img src="${pageContext.request.contextPath}/images/front/photo.gif" />
								<font class="news_title1" >
									选择相册
								</font>
							</td>
						</tr>
						<tr>
							<td valign="top"  align="center" style="border-bottom: 1px #D8DFEA solid;">
								<form action="${pageContext.request.contextPath}/album/selectAndGoAddPhoto" method="post">
									<table width="80%" cellpadding="5" cellspacing="5">
										<tr>
											<td align="right" width="20%">
												<font class="news_title3" style="font-weight: bold;">
													选择相册:
												</font>
											</td>
											<td align="left">
												<select id="selal" style="width: 200px" name="albumID">
													<c:forEach items="${albumList}" var="album">
														<option value="${album.id}">
															${album.name}
														</option>
													</c:forEach>
												</select>
											</td>
										</tr>
										<tr>
											<td>
												&nbsp;
											</td>
											<td align="left">
												<input type="submit" class="sub" value="确定" style="width: 60px"/>
												<input type="reset" class="sub" value="取消" style="width: 60px"/>
											</td>
										</tr>
									</table>
								</form>
							</td>
						</tr>
					</table>
				</td>
				<td valign="top" align="center">
					<img src="${pageContext.request.contextPath}/images/front/albumright.jpg" />
				</td>
			</tr>
		</table>
	</div>
</div>
</body>
</html>
