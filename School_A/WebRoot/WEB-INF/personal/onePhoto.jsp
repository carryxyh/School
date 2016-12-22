<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/updPersonInfo.css" type="text/css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css" />
</head>
<body>
	<div class="personal_main">
		<div class="personal_left">
			<table width="100%" border="0" cellspacing="1" cellpadding="10">
				<tr>
					<td>
						<div class="divTbl">
							<table width="100%" cellspacing="0" cellpadding="5" class="tblDiv">
								<tr>
									<td colspan="2">
										<font class="news_title1"> 我 的相册</font>
										<font class="news_title1" style="font-weight: normal"> 
											-相册名称 
										</font>
									</td>
								</tr>
								<tr>
									<td style="border-bottom: 1px #D8DFEA solid;">
										<font class="news_title4">第x 张 / 共x 张 | <a href="" class="xh"> 返回照片列表</a> </font>
									</td>
									<td style="border-bottom: 1px #D8DFEA solid;" align="right">
										<font class="news_title4">
											<a href="" class="xh">上一张</a> / <a href="" class="xh">下一张</a>
										</font>
									</td>
								</tr>
								<tr>
									<td valign="top" colspan="2" align="center">
										<a href="">
											<img src="${pageContext.request.contextPath}/images/photos/c1.jpg" alt="点击查看下一张" width="640px" height="480px" />
										</a>
									</td>
								</tr>
								<tr>
									<td>
										<font class="news_title4">对相片的评论</font>
									</td>
									<td align="right">
										<font class="news_title4">来自 我的相册：</font><br/>
									</td>
								</tr>
								<tr>
									<td style="border-bottom: 1px #DDDDDD solid;">
										<font class="news_title3"> 上传于2010年06月06日 </font>
									</td>
									<td style="border-bottom: 1px #DDDDDD solid;" align="right">
										<font class="news_title3"> 浏览(1) | 评论(11) </font>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<table width="100%" cellspacing="0" cellpadding="5" id="mypc">
											<!-- 留言内容 start -->
											<tr>
												<td style="border-bottom: 1px #D8DFEA solid;">
													<table width="100%" border="0" cellspacing="1" cellpadding="3">
														<tr>
															<td rowspan="2" width="8%">
																<a href="">
																	<img src="${pageContext.request.contextPath}/images/userhead/0000.gif" width="50px" height="50px" />
																</a>
															</td>
															<td>
																<a href="" class="xh">留言人名字</a>
															</td>
															<td align="right" width="25%">
																<font class="news_title3">2010-06-09 22:30 </font>&nbsp;
																	<a href="javascript:void(0);" class="xh" id="xx" onclick="">删除</a>
															</td>
														</tr>
														<tr>
															<td colspan="2">
																<font class="news_title4">留言具体内容...</font>
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<!-- 留言内容 end -->
										</table>
									</td>
								</tr>
								<tr>
									<td align="right" colspan="2">
										<table>
											<tr>
												<td>
													<font class="news_title1" style="font-size: 12px">第xx页</font>
												</td>
												<td>
													<font class="news_title1" style="font-size: 12px">共xx页</font>
												</td>
												<td>
													<a href="" class="xh"> << 第一页 </a>
												</td>
												<td>
													...
												</td>
												<td>
													<a href="" class="xh"> < 上一页</a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<table width="100%"  cellspacing="1" cellpadding="5">
											<tr>
												<td colspan="2">
													<textarea class="wbq" style="width: 600px" id="cont"></textarea>
												</td>
											</tr>
											<tr>
												<td>
													<input class="sub" value="发表评论" type="button" onclick="" style="width: 100px" />
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</div>
					</td>
					<td align="center" valign="top">
						<img src="${pageContext.request.contextPath}/images/front/photoright.jpg" />
					</td>
				</tr>
			</table>
		</div>
	</div>
	<div id="divDelPC" style="border: 9px #878787 solid;width:418px;margin: 0 auto;">
		<table width="400px" style="line-height: 27px;" cellspacing="0" cellpadding="10px">
			<tr>
				<td style="color: white;background-color: #6D84B4;font-size: 14px;">
					<b>删除评论</b>
				</td>
			</tr>
			<tr style="border-bottom:1px #CCCCCC solid;background-color:#FFFFFF" class="news_title4">
				<td>
					你确定要删除这条评论吗？
				</td>
			</tr>
			<tr>
				<td align="right" bgcolor="#F7F3FF" >
					<input type="button" onclick="" value="确定" style="color: white;background-color: #3B5888;padding: 3px; width: 60px"/>
					<input type="button" onclick="" value="取消" style="color: black;background-color: #white;padding: 3px; width: 60px"/>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
