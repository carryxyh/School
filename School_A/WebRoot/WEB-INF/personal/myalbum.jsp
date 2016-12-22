<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>我的相册</title>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/updPersonInfo.css" />
</head>

<body>
	<div class="album_main">
		<div class="album_left">
			<table width="80%" style="float: left;" cellspacing="0" cellpadding="10">
				<tr>
					<td colspan="2">
						<table width="100%" border="0" cellspacing="5" cellpadding="5">
							<tr>
								<td rowspan="2" width="10%">
									<a href="">
										<img src="${pageContext.request.contextPath}/images/${loginuser.id }/head/${loginuser.photo }?abc=<%=Math.random() %>" width="50px" height="50px" />
									</a>
								</td>
								<td>
									<font class="news_title1">
										${loginuser.name}的相册
									</font>
								</td>
							</tr>
							<tr>
								<td>
									<a href="${pageContext.request.contextPath}/album/goAddAlbum" class="xh">上传新照片</a>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<font class="news_title4"> ${albumList.size()} 个相册</font>
					</td>
					<td align="right">
						<table border="0">
							<tr>
								<td>
									<font class="news_title1" style="font-size: 12px">第1页</font>
								</td>
								<td>
									<font class="news_title1" style="font-size: 12px">共1页</font>
								</td>
								<td>
									<a href="album.do?type=album&pageNo=1&oid=xx" class="xh">
										<< 第一页
									</a>
								</td>
								<td>
									...
								</td>
								<td>
									<a href="album.do?type=album&pageNo=xx&oid=xx" class="xh">
										< 上一页</a>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td width="80%" valign="top" colspan="2" style="border-top: 1px #D8DFEA solid; border-bottom: 1px #D8DFEA solid;">
						<table width="100%" border="0" cellspacing="5" cellpadding="5">
							<c:forEach var="album" items="${albumList}">
								<tr>
									<td class="tblDiv">
										<table width="100%" border="0" cellspacing="3" cellpadding="1">
											<tr>
												<td valign="top" width="33%">
													<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx">
														<img src="${pageContext.request.contextPath}/images/photos/${album.photo}" width="200px" height="150px" border="0"/>
													</a>
												</td>
												<td valign="top">
													<table width="100%" border="0" cellspacing="1" cellpadding="1">
														<tr>
															<td>
																<a href="album.do?type=oneAlbum&oid=xx&pageNo=1&aid=xx" class="xh" style="font-weight: bold; font-size: 16px">
																	${album.name}
																</a>
															</td>
														</tr>
														<tr>
															<td>
																<font class="news_title3">
																	${album.photos.size() }张照片
																</font>
															</td>
														</tr>
														<!-- <tr>
															<td>
																<font class="news_title3">如果有对相册的评论，这里显示一下 </font>
															</td>
														</tr> -->
														<tr>
															<td>
																<font class="news_title3">
																	${album.updTime}
																</font>
															</td>
														</tr>
														<tr>
															<td>
																<font class="news_title3">
																	${album.creTime}
																</font>
															</td>
														</tr>
														<tr>
															<td>
																<a href="/xiaonei/editAlbum.jsp?aid=xxx" class="xh">编辑相册</a>
																|
																<a href="${pageContext.request.contextPath}/album/dirGo?albumID=${album.id}" class="xh">
																	查看相册
																</a>
															</td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</c:forEach>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						&nbsp;
					</td>
					<td align="right">
						<table>
							<tr>
								<td>
									<font class="news_title1" style="font-size: 12px">
										第1页
									</font>
								</td>
								<td>
									<font class="news_title1" style="font-size: 12px">共1页</font>
								</td>
								<td>
									<a href="album.do?type=album&pageNo=1&oid=xx" class="xh">
										<< 第一页
									</a>
								</td>
								<td>
									...
								</td>
								<td>
									<a href="album.do?type=album&pageNo=xx&oid=xx" class="xh">
										< 上一页</a>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<div style="width: 20%; float: left; text-align: center; padding-top: 5px">
				<img src="${pageContext.request.contextPath}/images/front/selfright.jpg" />
			</div>
		</div>
	</div>
</body>
</html>
