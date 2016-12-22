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
	<div class="info_main">
		<div class="info_left">
			<table width="100%">
				<tr>
					<td width="80%" valign="top">
						<div class="divTbl">
							<table width="100%" border="0" class="tblDiv">
								<tr>
									<td colspan="2">
										<table width="100%" border="0" >
											<tr>
												<td rowspan="2" width="10%">
													<a href="profile.do?type=feed&oid=xx">
														<img src="${pageContext.request.contextPath}/images/${loginuser.id }/head/${loginuser.photo }?abc=<%=Math.random() %>" width="50px" height="50px"/>
													</a>
												</td>
												<td>
													<font class="news_title1">${loginuser.name}的相册</font>
													<font class="news_title1" style="font-weight: normal"> 
														${thisAlbum.name}
													</font>
												</td>
											</tr>
											<tr>
												<td>
													<a href="${pageContext.request.contextPath}/album/goAlbum" class="xh">返回我的相册</a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td>
										<font class="news_title4">第1 -1 张 / 共22张 |</font>
										<a href="/xiaonei/editAlbum.jsp?aid=xxx" class="xh">
											设置相册
										</a>
										|
										<a href="${pageContext.request.contextPath}/album/selectAndGoAddPhoto?albumID=${thisAlbum.id}" class="xh">
											上传照片
										</a>
									</td>
									<td align="right">
										<table border="0">
											<tr>
												<td>
													<font class="news_title1" style="font-size: 12px">第x页</font>
												</td>
												<td>
													<font class="news_title1" style="font-size: 12px">共x页</font>
												</td>
												<td>
													<a href="album.do?type=oneAlbum&pageNo=1&oid=xx&aid=xx" class="xh">
														<< 第一页
													</a>
												</td>
												<td>
													...
												</td>
												<td>
													<a href="album.do?type=oneAlbum&pageNo=xx&oid=xx&aid=xx" class="xh">
														< 上一页
													</a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td valign="top" colspan="2" style="border-top: 1px #D8DFEA solid; border-bottom: 1px #D8DFEA solid;">
										<table width="100%">
											<tr>
												<c:forEach var="photo" items="${photolist}" varStatus="vs">
													<td width="20%" align="center">
														<a href="${pageContext.request.contextPath}/album/onePhoto" style="border: 1px #D8DFEA solid;" onmouseover="" onmouseout="" id="ax">
															<img src="${pageContext.request.contextPath}/images/${loginuser.id }/album/${photo.album.id }/${photo.photo}" width="100px" height="75px" alt="xxxx" style="border: 5px #FFFFFF solid;" id=""/>
														</a>
													</td>
													<c:if test="${vs.count%6==0}">
														<tr/><tr>
													</c:if>
												</c:forEach>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<font class="news_title4">${thisAlbum.descript}</font>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;
									</td>
									<td align="right">
										<table border="0">
											<tr>
												<td>
													<font class="news_title1" style="font-size: 12px">第x页</font>
												</td>
												<td>
													<font class="news_title1" style="font-size: 12px">共x页</font>
												</td>
												<td>
													<a href="album.do?type=oneAlbum&pageNo=1&oid=xx&aid=xx" class="xh"> << 第一页 </a>
												</td>
												<td>
													...
												</td>
												<td>
													<a href="album.do?type=oneAlbum&pageNo=xx&oid=xx&aid=xx" class="xh"> < 上一页</a>
												</td>
										</table>
									</td>
								</tr>
							</table>
						</div>
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
