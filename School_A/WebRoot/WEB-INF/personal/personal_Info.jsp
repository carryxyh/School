<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>个人主页</title>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/personal_Info.css" />
</head>

<body>
	<div class="personal_Info">
		<div class="personal_intro">
			<table>
				<tr>
					<td>
						<img src="${pageContext.request.contextPath}/images/${loginuser.id }/head/${loginuser.photo }?abc=<%=Math.random() %>" width="150px" height="150px" />
					</td>
				</tr>
				<tr>
					<td onMouseOver="" onMouseOut="" id="editphoto">
						&nbsp;<a href="${pageContext.request.contextPath}/profile/goUpdateUi" class="xh" id="editphotoa">更改我的头像</a>
					</td>
				</tr>
				<tr>
					<td onMouseOver="" onMouseOut="" id="edit">
						&nbsp;<a href="" class="xh" id="edita">编辑我的资料</a>
					</td>
				</tr>
				<tr>
					<td onMouseOver="" onMouseOut="" id="dress">
						&nbsp;<a href="#" class="xh" id=dressa>装扮主页</a>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp; 
						<font class="news_title3">所在网络：</font><font class="info_font">清华大学代填</font>
					</td>
				</tr>
				<tr>
					<!-- 如果有生日，则显示 -->
					<td>&nbsp; 
						<font class="news_title3">生日：</font><font class="info_font">1999-11-11</font>
					</td>
				</tr>
				<tr>
					<!-- 如果有家乡，则显示 -->
					<td>&nbsp; 
						<font class="news_title3">家乡：</font><font class="info_font">北京 丰台区</font>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
			</table>
			<div class="allkinds">
				<img src="${pageContext.request.contextPath}/images/front/profileleft.jpg" />
			</div>
		</div>
		<div class="profile">
			<div class="curInfo">
				&nbsp; 
				<font class="news_title1">${loginuser.name}</font>&nbsp; 
				<img src="${pageContext.request.contextPath}/images/front/star.gif" />&nbsp;
				<font class="news_title4">有（4）人看过</font>&nbsp;
				<font class="news_title3">什么也没做做 </font>&nbsp; 
				<a href="#" class="xh">编辑</a>
			</div>
			<div class="opers">
				<table align="center" border="0" width="100%" cellspacing="1" cellpadding="5">
					<tr>
						<td>&nbsp;</td>
						<td class="tag" id="" style="background-color: #FFFFFF; border-bottom-color: #FFFFFF; border-spacing: 5px" align="center">
							<a href="javascript:void(0);" class="tag_content" style="color: black;" onclick="" id="">个人主页</a>
						</td>
						<td class="tag" id="" align="center">
							<a href="javascript:void(0);" class="tag_content" onclick="" id="">资料</a>
						</td>
						<td class="tag" align="center">
							<a href="javascript:void(0);" class="tag_content">日志</a>
						</td>
						<td class="tag" align="center">
							<a href="${pageContext.request.contextPath}/album/goAlbum" class="tag_content">相册</a>
						</td>
						<td class="tag" align="center">
							<a href="javascript:void(0);" class="tag_content">应用</a>
						</td>
						<td width="40%">
							&nbsp;
						</td>
					</tr>
					<tr>
						<td style="border-top: 1px #D8DFEA solid;">&nbsp;</td>
						<td id="" style="border-top: 1px #FFFFFF solid;">&nbsp;</td>
						<td id="" style="border-top: 1px #D8DFEA solid;">&nbsp;</td>
						<td style="border-top: 1px #D8DFEA solid;">&nbsp;</td>
						<td style="border-top: 1px #D8DFEA solid;">&nbsp;</td>
						<td style="border-top: 1px #D8DFEA solid;">&nbsp;</td>
						<!-- <td style="border-top: 1px #D8DFEA solid;">&nbsp;</td> -->
					</tr>
				</table>
			</div>
			<div id="myalbum" class="album">
				<table>
					<tr>
						<td align="left" colspan="3">
							<font class="style3">相册</font> 
							<a href="" class="xh">（5）</a>
						</td>
						<td align="right">
							<a href="" class="xh">查看全部相册</a>
						</td>
					</tr>
					<tr>
						<td>
							<a href="" style="border: 0px #D8DFEA solid;" onmouseover="" onmouseout="" id="">
								<img src="${pageContext.request.contextPath}/images/photos/t4.jpg" width="100px" height="75px" style="border: 5px #FFFFFF solid;" id="" />
							</a><br/> 
							<b> 
								<a href="" class="xh" style="font-weight: bold;">我的相册名</a>
							</b><br/> 
							<span class="news_title4">更新于2010年06月08日</span>
						</td>
						<!-- 这里循环显示最多四个最新更新的相册即可 -->
						<td>
							<a href="" style="border: 0px #D8DFEA solid;" onmouseover="" onmouseout="" id="">
								<img src="${pageContext.request.contextPath}/images/photos/t4.jpg" width="100px" height="75px" style="border: 5px #FFFFFF solid;" id="" />
							</a><br/>
							<b>
								<a href="" class="xh" style="font-weight: bold;">我的相册名</a>
							</b><br/>
							<span class="news_title4">更新于2010年06月08日</span>
						</td>
						<td>
							<a href="" style="border: 0px #D8DFEA solid;" onmouseover="" onmouseout="" id="">
								<img src="${pageContext.request.contextPath}/images/photos/t4.jpg" width="100px" height="75px" style="border: 5px #FFFFFF solid;" id="aa100" />
							</a><br/>
							<b>
								<a href="" class="xh" style="font-weight: bold;">我的相册名</a>
							</b><br/>
							<span class="news_title4">更新于2010年06月08日</span>
						</td>
						<td>
							<a href="" style="border: 0px #D8DFEA solid;" onmouseover="" onmouseout="" id="">
								<img src="${pageContext.request.contextPath}/images/photos/t4.jpg" width="100px" height="75px" style="border: 5px #FFFFFF solid;" id="aa100" />
							</a><br/>
							<b>
								<a href="" class="xh" style="font-weight: bold;">我的相册名</a>
							</b><br/>
							<span class="news_title4">更新于2010年06月08日</span>
						</td>
					</tr>
				</table>
			</div>
			<div id="mylog" class="log">
				<table>
					<tr>
						<td colspan="2">
							<span class="style3">日志</span>
							<a href="" class="xh">(日志篇数)</a>
						</td>
						<td align="right">
							<a href="" class="xh">查看全部日志</a>
						</td>
					</tr>
					<tr>
						<td style="border-bottom: 1px #D8DFEA solid;">
							<img src="${pageContext.request.contextPath}/images/front/blog.gif " />
						</td>
						<td style="border-bottom: 1px #D8DFEA solid;">
							<a href="" class="xh" style="font-weight: bold;">日志的标题</a>
						</td>
						<td align="right" style="border-bottom: 1px #D8DFEA solid;">
							<span class="news_title4">日志发表的日期2008-11-11</span>
						</td>
					</tr>
					<tr>
						<td style="border-bottom: 1px #D8DFEA solid;">
							<img src="${pageContext.request.contextPath}/images/front/blog.gif " />
						</td>
						<td style="border-bottom: 1px #D8DFEA solid;">
							<a href="" class="xh" style="font-weight: bold;">日志的标题</a>
						</td>
						<td align="right" style="border-bottom: 1px #D8DFEA solid;">
							<span class="news_title4">日志发表的日期2008-11-11</span>
						</td>
					</tr>
					<tr>
						<td style="border-bottom: 1px #D8DFEA solid;">
							<img src="${pageContext.request.contextPath}/images/front/blog.gif " />
						</td>
						<td style="border-bottom: 1px #D8DFEA solid;">
							<a href="" class="xh" style="font-weight: bold;">日志的标题</a>
						</td>
						<td align="right" style="border-bottom: 1px #D8DFEA solid;">
							<span class="news_title4">日志发表的日期2008-11-11</span>
						</td>
					</tr>
				</table>
			</div>
			
			<div id="myinfo" class="person_info" style="display: ;">
				<table width="100%" border="0" cellspacing="1" cellpadding="1">
					<tr>
						<td width="15%">
							<font class="STYLE3">基本信息</font>
						</td>
						<td>
							&nbsp;
						</td>
					</tr>
					<tr>
						<td>
							<font class="word4">网络：</font>
						</td>
						<td>
							&nbsp;
						</td>
					</tr>
					<tr>
						<td>
							<font class="word4">性别：</font>
						</td>
						<td>
							男
						</td>
					</tr>
					<!-- 如果填写了生日，则显示 -->
					<tr>
						<td>
							<font class="word4">生日：</font>
						</td>
						<td>
							1999-11-11
						</td>
					</tr>
					<!-- 如果有家乡，则显示 -->
					<tr>
						<td>
							<font class="word4">家乡：</font>
						</td>
						<td>
							北京 丰台区
						</td>
					</tr>
				</table>
				<!-- 基本信息 end -->
				<!-- 个人的兴趣爱好 -->
				<table width="100%" border="0" cellspacing="1" cellpadding="1">
					<tr>
						<td width="15%">
							<font class="STYLE3">个人信息</font>
						</td>
						<td>
							&nbsp;
						</td>
					</tr>
					<!-- 如果有兴趣爱好 -->
					<tr>
						<td>
							<font class="word4">兴趣爱好：</font>
						</td>
						<td>
							胡侃, 瞎掰, 电玩, 武侠, 历史, 体育,电 脑, 曲艺, 做梦, 思考
						</td>
					</tr>
					<!-- 如果有喜欢的书籍 -->
					<tr>
						<td>
							<font class="word4">喜欢书籍：</font>
						</td>
						<td>
							笑傲江湖,小李飞刀,三国演义,孙子兵法与三十六计
						</td>
					</tr>
					<!-- 如果有喜欢的音乐 -->
					<tr>
						<td>
							<font class="word4">喜欢音乐：</font>
						</td>
						<td>
							go west, on your mark, 英雄的黎明, 故乡的原风景, Beat JP, My Time To Be A Star
						</td>
					</tr>
					<!-- 如果有喜欢的电影 -->
					<tr>
						<td>
							<font class="word4">喜欢电影：</font>
						</td>
						<td>
							勇敢的心, 阿甘正传, 后天, 邵氏电影
						</td>
					</tr>
					<!-- 如果有喜欢的卡通 -->
					<tr>
						<td>
							<font class="word4">喜欢动漫：</font>
						</td>
						<td>
							圣斗士, 柯南, 太空堡垒I, 变形金刚, 足球小将, 灌篮高手, 机器猫, 高智能方程式赛车, 天空战记, 羚羊号历险记
						</td>
					</tr>
					<!-- 如果有喜欢的运动 -->
					<tr>
						<td>
							<font class="word4">喜欢运动：</font>
						</td>
						<td>
							足球, 乒乓球, 篮球, 看球
						</td>
					</tr>
					<!-- 如果有喜欢的游戏 -->
					<tr>
						<td>
							<font class="word4">玩的游戏：</font>
						</td>
						<td>
							WE10, 星际争霸, 无冬之夜2,上 古卷轴4,暗黑破坏神2,魔兽世界
						</td>
					</tr>
					<!-- 如果有加入的社团 -->
					<tr>
						<td>
							<font class="word4">加入社团：</font>
				 		</td>
						<td>
							清华合唱团
						</td>
					</tr>
				</table>
				<!-- 兴趣爱好结束 -->
				<!-- 联系方式 -->
				<table width="100%" border="0" cellspacing="1" cellpadding="1">
					<tr>
						<td width="15%">
							<font class="STYLE3">联系方式</font>
						</td>
						<td>
							&nbsp;
						</td>
					</tr>
					<!-- 如果有qq -->
					<tr>
						<td width="15%">
							<font class="word4">QQ：</font>
						</td>
						<td>
							888888
						</td>
					</tr>
					<!-- 如果有msn -->
					<tr>
						<td>
							<font class="word4">MSN：</font>
						</td>
						<td>
							hanshunping@sohu.com
						</td>
					</tr>
					<!-- 如果有手机 -->
					<tr>
						<td>
							<font class="word4">手机号：</font>
						</td>
						<td>
							111111111111
						</td>
					</tr>
					<!-- 如果有固定电话 -->
					<tr>
						<td>
							<font class="word4">固定电话：</font>
						</td>
						<td>
							12345678
						</td>
					</tr>
					<!-- 如果有个人网站 -->
					<tr>
						<td>
							<font class="word4">个人网站：</font>
						</td>
						<td>
							http://shunping.sohu.com
						</td>
					</tr>
				</table>
				<!-- 联系方式 end -->
				<!-- 学校信息 -->
				<table width="100%" border="0" cellspacing="1" cellpadding="1">
					<tr>
						<td width="15%">
							<font class="STYLE3">学校信息</font>
						</td>
						<td>
							&nbsp;
						</td>
					</tr>
					<tr>
						<td>
							<font class="word4">大学：</font>
						</td>
						<td>
							&nbsp;
						</td>
					</tr>
					<tr>
						<td>
							<font class="word4">高中：</font>
						</td>
						<td>
							&nbsp;
						</td>
					</tr>
					<tr>
						<td>
							<font class="word4">技校：</font>
						</td>
						<td>
							xx技校
						</td>
					</tr>
					<tr>
						<td>
							<font class="word4">初中：</font>
						</td>
						<td>
							xx初中
						</td>
					</tr>
					<tr>
						<td>
							<font class="word4">小学：</font>
						</td>
						<td>
							xx小学
						</td>
					</tr>
				</table>
			</div>
						
			<div class="guessbook">
				<table>
					<tr>
						<td>
							<span class="style3">留言板</span>
						</td>
						<td align="right">
							<a href="" class="xh">所有留言</a>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<textarea style="width: 500px; font-size: 12px" id="g_content"></textarea>
						</td>
					</tr>
					<tr>
						<td>
							<div class="ly_btn">
								<input class="btn btn-success btn-sm" value="留言" type="button" onclick="" style="width: 60px" />
								<font class="news_title3">（每条最多2000字）</font>
							</div>
						</td>
						<td>
						</td>
					</tr>
				</table>
			</div>
			
			<div class="mess_con">
				<table>
					<tr>
						<td rowspan="2" width="8%">
							<a href="">
								<img src="${pageContext.request.contextPath}/images/userhead/0000.gif" width="50px" height="50px"/>
							</a>
						</td>
						<td>
							<div style="margin-left: 10px">
								<a href="" class="xh">三少爷用户名</a>(首都医科大学)&nbsp;
								<font class="news_title3">留言日期2001-11-11 17:44</font>
							</div>		
						</td>
						<td>
							<a href="javascript:void(0);" class="xh" id="" onclick="">删除</a>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							<div style="margin-left: 10px">
								留言具体内容!!!
							</div>
						</td>
					</tr>
				</table>
			</div>
			
			<div class="mess_con">
				<table>
					<tr>
						<td rowspan="2" width="8%">
							<a href="">
								<img src="${pageContext.request.contextPath}/images/userhead/0000.gif" width="50px" height="50px"/>
							</a>
						</td>
						<td>
							<div style="margin-left: 10px">
								<a href="" class="xh">三少爷用户名</a>(首都医科大学)&nbsp;
								<font class="news_title3">留言日期2001-11-11 17:44</font>
							</div>	
						</td>
						<td>
							<a href="javascript:void(0);" class="xh" id="" onclick="">删除</a>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							<div style="margin-left: 10px">
								留言具体内容!!!
							</div>
						</td>
					</tr>
				</table>
			</div>			
		</div>
		
		<div class="friendList">
			<!-- 特别好友列表 -->
			<div class="special_friend">
				<table>
					<tr>
						<td style="line-height: 27px">
							<font class="news_title3">特别好友</font>
						</td>
						<td>
						</td>
						<td align="right">
							<a href="" class="xh">编辑</a>
						</td>
					</tr>
					<tr>
						<td>
							<a href="">
								<img src="${pageContext.request.contextPath}/images/userhead/0000.gif" width="50px" height="50px" />
							</a>
						</td>
						<td>
							<a href="" class="xh">香香</a>
						</td>
						<td>
							<font class="">好兄弟讲义气!</font>
						</td>
					</tr>
				</table>
			</div>
			<!-- 特别好友列表 end -->
			<!-- 最近来访人 -->
			<div class="last_visit">
				<table>
					<tr>
						<td align="left" style="line-height: 27px" colspan="3">
							<font class="news_title3">最近来访</font>
						</td>
					</tr>
					<tr>
						<td>
							<a href="">
								<img src="${pageContext.request.contextPath}/images/userhead/0000.gif" width="50px" height="50px" />
							</a>
							<a href="" class="xh">香香</a>
						</td>
						<td>
							<a href="">
								<img src="${pageContext.request.contextPath}/images/userhead/0000.gif" width="50px" height="50px" />
							</a>
							<a href="" class="xh">香香</a>
						</td>
						<td>
							<a href="">
								<img src="${pageContext.request.contextPath}/images/userhead/0000.gif" width="50px" height="50px" />
							</a>
							<a href="" class="xh">香香</a>
						</td>
					</tr>
				</table>
			</div>
			<!-- 最近来访 end -->
			<!-- 好友 start -->
			<!-- 最近来访人 -->
			<div class="good_friend">
				<table>
					<tr>
						<td align="left" style="line-height: 27px" colspan="3">
							<font class="news_title3">好友(11)</font>
						</td>
					</tr>
					<tr>
						<td>
							<a href="">
								<img src="${pageContext.request.contextPath}/images/userhead/0000.gif" width="50px" height="50px" />
							</a>
							<a href="" class="xh">香香</a>
						</td>
						<td>
							<a href="">
								<img src="${pageContext.request.contextPath}/images/userhead/0000.gif" width="50px" height="50px" />
							</a>
							<a href="" class="xh">香香</a>
						</td>
						<td>
							<a href="">
								<img src="${pageContext.request.contextPath}/images/userhead/0000.gif" width="50px" height="50px" />
							</a>
							<a href="" class="xh">香香</a>
						</td>
					</tr>
				</table>
			</div>
			<!-- 好友 end -->			
		</div>
	</div>
</body>
</html>
