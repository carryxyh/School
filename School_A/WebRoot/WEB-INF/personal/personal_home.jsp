<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>个人首页</title>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/3d_button.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/personal_home.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css" />
</head>
<body>
	<nav  class="nav">
		<ul>
			<li><a style="padding: 0px" href="${pageContext.request.contextPath}/profile/goPersonInfo" class="icon-home"></a></li>
			<li><a style="padding: 0px" href="#" class="icon-cog"></a></li>
			<li><a style="padding: 0px" href="#" class="icon-cw"></a></li>
			<li><a style="padding: 0px" href="#" class="icon-location"></a></li>
		</ul>
	</nav>
	<div class="home_main_div">
		<div class="home_left_main">
			<div class="profile">
				<table>
					<tr>
						<td rowspan="3" width="193px">
							<img src="${pageContext.request.contextPath}/images/${loginuser.id }/head/${loginuser.photo }?abc=<%=Math.random() %>" width="150px" height="150px" />
						</td>
						<td colspan="4" class="news_title1">${loginuser.name}</td>
					</tr>
					<tr>
						<td colspan="4"><span class="news_title4" id="sudo">目前什么都没做!</span>
							<a class="xh" href="" onclick="">编辑</a>
						</td>
					</tr>
					<tr>
						<td width="83"><img src="${pageContext.request.contextPath}/images/front/status.gif" />
							<a class="xh" href="" onclick="">改状态</a>
						</td>
						<td width="83"><img src="${pageContext.request.contextPath}/images/front/blog.gif" />
							<a class="xh" href="">写日志</a></td>
						<td width="83"><img src="${pageContext.request.contextPath}/images/front/photo.gif" />
							<a class="xh" href="">传照片</a></td>
						<td width="83"><img src="${pageContext.request.contextPath}/images/front/share.gif" />
							<a class="xh" href="">分享</a></td>
					</tr>
					<tr id="doing" style="display: none;">
						<td colspan="5">
							<input type="text" value="doing some thing.." id="udo" size="30" /> 
							<input type="submit" value="提交" style="width: 60px" class="sub" onclick="" />
							<input type="button" value="取消" onclick="" class="button2" />
						</td>
					</tr>
				</table>
			</div>
			<div class="message">
				<table>
						<tr>
							<td class="news_title1">
								新留言及回复(<span>2</span>)
							</td>
							<td width="60px">
								<a href="" class="xh">更多</a>
							</td>
						</tr>
						<tr>
							<td>
								<img src="${pageContext.request.contextPath}/images/front/wall_post.gif" />
								<span class="news_title4">小明 在 体育 回复你</span>
							</td>
							<td>
								<a href="" class="xh" onclick="" >×</a>
							</td>
						</tr>
						<tr>
							<td>
								<img src="${pageContext.request.contextPath}/images/front/wall_post.gif" />
								<span class="news_title4">小明 在 体育 回复你</span>
							</td>
							<td>
								<a href="" class="xh" onclick="" >×</a>
							</td>
						</tr>
						<tr>
							<td>
								<img src="${pageContext.request.contextPath}/images/front/wall_post.gif" />
								<span class="news_title4">小明 在 体育 回复你</span>
							</td>
							<td>
								<a href="" class="xh" onclick="" >×</a>
							</td>
						</tr>
					</table>
			</div>
			<div class="news">
				<table>
						<tr>
							<td class="news_title1">
								新鲜事情(<span>1</span>)
							</td>
						</tr>
						<tr>
							<td>
								内容
							</td>
						</tr>
					</table>
			</div>
		</div>
		<div class="home_right_main">
			<div class="latestViewer">
				<table>
						<tr>
							<td style="line-height: 25px" colspan="2">
								<span class="style3">最近来访</span>
								<font class="news_title2">(12)</font>
							</td>
							<td style="line-height: 25px;" align="right">
								<a href="" class="xh">更多>></a>
							</td>
						</tr>
						<tr>
							<td>
								<a href=""> <img src="${pageContext.request.contextPath}/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<img src="${pageContext.request.contextPath}/images/front/online.gif" />
								<a href="" class="xh">三少爷</a>
								<span class="news_title3">11月11日</span>
							</td>
							<td>
								<a href=""> <img src="${pageContext.request.contextPath}/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<img src="${pageContext.request.contextPath}/images/front/online.gif" />
								<a href="" class="xh">三少爷</a>
								<span class="news_title3">11月11日</span>
							</td>
							<td>
								<a href=""> <img src="${pageContext.request.contextPath}/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<img src="${pageContext.request.contextPath}/images/front/online.gif" />
								<a href="" class="xh">三少爷</a>
								<span class="news_title3">11月11日</span>
							</td>
						</tr>
						<tr>
							<td>
								<a href=""> <img src="${pageContext.request.contextPath}/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<img src="${pageContext.request.contextPath}/images/front/online.gif" />
								<a href="" class="xh">三少爷</a>
								<span class="news_title3">11月11日</span>
							</td>
							<td>
								<a href=""> <img src="${pageContext.request.contextPath}/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<img src="${pageContext.request.contextPath}/images/front/online.gif" />
								<a href="" class="xh">三少爷</a>
								<span class="news_title3">11月11日</span>
							</td>
							<td>
								<a href=""> <img src="${pageContext.request.contextPath}/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<img src="${pageContext.request.contextPath}/images/front/online.gif" />
								<a href="" class="xh">三少爷</a>
								<span class="news_title3">11月11日</span>
							</td>
						</tr>
					</table>
			</div>
			<div class="mayKnow">
				<table>
						<tr>
							<td style="line-height: 25px" colspan="2">
								<span class="style3">你可能认识的人</span>
								(<font class="news_title3">7</font>)
							</td>
							<td style="line-height: 25px;" align="right">
								<a href="" class="xh">更多>></a>
							</td>
						</tr>
						<tr>
							<td>
								<a href=""> <img src="${pageContext.request.contextPath}/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<img src="${pageContext.request.contextPath}/images/front/online.gif" />
								<a href="" class="xh">三少爷</a>
							</td>
							<td>
								<a href=""> <img src="${pageContext.request.contextPath}/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<img src="${pageContext.request.contextPath}/images/front/online.gif" />
								<a href="" class="xh">三少爷</a>
							</td>
							<td>
								<a href=""> <img src="${pageContext.request.contextPath}/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<img src="${pageContext.request.contextPath}/images/front/online.gif" />
								<a href="" class="xh">三少爷</a>
							</td>
						</tr>
						<tr>
							<td>
								<a href=""> <img src="${pageContext.request.contextPath}/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<img src="${pageContext.request.contextPath}/images/front/online.gif" />
								<a href="" class="xh">三少爷</a>
							</td>
							<td>
								<a href=""> <img src="${pageContext.request.contextPath}/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<img src="${pageContext.request.contextPath}/images/front/online.gif" />
								<a href="" class="xh">三少爷</a>
							</td>
							<td>
								<a href=""> <img src="${pageContext.request.contextPath}/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<img src="${pageContext.request.contextPath}/images/front/online.gif" />
								<a href="" class="xh">三少爷</a>
							</td>
						</tr>
					</table>
			</div>
			<div class="onlineFriend">
				<table>
						<tr>
							<td style="line-height: 25px" colspan="2">
								<span class="style3">在线好友</span>
								<font class="news_title3">(12)</font>
							</td>
							<td style="line-height: 25px;" align="right">
								<a href="" class="xh">更多>></a>
							</td>
						</tr>
						<tr>
							<td>
								<a href=""> <img src="${pageContext.request.contextPath}/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<img src="${pageContext.request.contextPath}/images/front/online.gif" />
								<a href="" class="xh">三少爷</a>
							</td>
							<td>
								<a href=""> <img src="${pageContext.request.contextPath}/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<img src="${pageContext.request.contextPath}/images/front/online.gif" />
								<a href="" class="xh">三少爷</a>
							</td>
							<td>
								<a href=""> <img src="${pageContext.request.contextPath}/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<img src="${pageContext.request.contextPath}/images/front/online.gif" />
								<a href="" class="xh">三少爷</a>
							</td>
						</tr>
						<tr>
							<td>
								<a href=""> <img src="${pageContext.request.contextPath}/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<img src="${pageContext.request.contextPath}/images/front/online.gif" />
								<a href="" class="xh">三少爷</a>
							</td>
							<td>
								<a href=""> <img src="${pageContext.request.contextPath}/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<img src="${pageContext.request.contextPath}/images/front/online.gif" />
								<a href="" class="xh">三少爷</a>
							</td>
							<td>
								<a href=""> <img src="${pageContext.request.contextPath}/images/userhead/u14.gif" width="55px" height="55px" /> </a>
								<img src="${pageContext.request.contextPath}/images/front/online.gif" />
								<a href="" class="xh">三少爷</a>
							</td>
						</tr>
					</table>
			</div>
		</div>
	</div>
</body>
</html>
