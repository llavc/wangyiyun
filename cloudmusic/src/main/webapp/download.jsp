<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>下载-网易云音乐</title>
<meta name="keywords"
	content="网易云音乐，音乐，播放器，网易，下载，播放，DJ，免费，明星，精选，歌单，识别音乐，收藏，分享音乐，音乐互动，高音质" />
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<link rel="short icon" href="img/images/images/logo.jpg">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link rel="stylesheet" type="text/css" href="css/denglu.css"/>
<style type="text/css">
* {
	padding: 0px;
	margin: 0px;
}

.bg {
	width: 100%;
	height: 483px;
	background: url(img/images1/bg.jpg) no-repeat center;
}

.bg .bg_div {
	width: 982px;
	margin: 0px auto;
}

.tv {
	float: left;
	margin-left: 30px;
	padding-top: 20px;
}

.twowm {
	background: url(img/images1/twowm.png);
	position: fixed;
	z-index: 999;
	right: 20px;
	top: 400px;
	width: 105px;
	height: 128px;
	opacity: 0.9;
	border: 1px solid #9EA1A5;
}

.downlaod {
	width: 400px;
	height: 260px;
	margin-right: -48px;
	margin-top: 180px;
	float: right;
}

.downlaod .az, .ipone, .ipad, .mac, .pc, .uwp, .wp, .linux {
	width: 170px;
	height: 40px;
	display: inline-block;
	margin-bottom: 15px;
	margin-right: 20px;
}

.downlaod .az {
	background: url(img/images1/az1.png) no-repeat;
}

.downlaod .az:hover {
	background: url(img/images1/az2.png) no-repeat;
}

.downlaod .ipone {
	background: url(img/images1/ipone1.png);
}

.downlaod .ipone:hover {
	background: url(img/images1/ipone2.png);
}

.downlaod .ipad {
	background: url(img/images1/ipa1.png);
}

.downlaod .ipad:hover {
	background: url(img/images1/ipa2.png);
}

.downlaod .mac {
	background: url(img/images1/mac1.png);
}

.downlaod .mac:hover {
	background: url(img/images1/mac2.png);
}

.downlaod .pc {
	background: url(img/images1/pc1.png);
}

.downlaod .pc:hover {
	background: url(img/images1/pc2.png);
}

.downlaod .uwp {
	background: url(img/images1/uwp1.png);
}

.downlaod .uwp:hover {
	background: url(img/images1/uwp2.png);
}

.downlaod .wp {
	background: url(img/images1/wp1.png);
}

.downlaod .wp:hover {
	background: url(img/images1/wp2.png);
}

.downlaod .linux {
	background: url(img/images1/linux1.png);
}

.downlaod .linux:hover {
	background: url(img/images1/linux2.png);
}

.downlaod ul li {
	list-style: none;
}

.downlaod ul li a {
	font-size: 10px;
	color: #E2E5E9;
	text-decoration: none;
}

.one {
	width: 100%;
	height: 438px;
	background: #FFFFFF;
}

.one .one_div {
	width: 982px;
	padding-top: 130px;
	margin: 0px auto;
}

.one .cd {
	float: left;
	margin-left: 30px;
}

.cd h1 {
	font-size: 40px;
	font-family: "微软雅黑";
	font-weight: lighter;
	color: #333333;
	margin-top: 30px;
	margin-bottom: 5px;
}

.cd p {
	font-size: 16px;
	line-height: 25px;
	font-family: "微软雅黑";
	color: #666666;
}

.star {
	float: right;
}

.two {
	background: #f0f0f0;
	height: 438px;
}

.two .two_div {
	width: 982px;
	margin: 0px auto;
	padding-top: 130px;
}

.two .two_pic {
	float: left;
	margin-left: 30px;
}

.two .two_wd {
	float: right;
}

.two .two_wd h1 {
	font-size: 40px;
	font-family: "微软雅黑";
	font-weight: lighter;
	color: #333333;
	margin-top: 30px;
	margin-bottom: 5px;
}

.two .two_wd p {
	font-size: 16px;
	line-height: 25px;
	color: #333333;
	font-weight: lighter;
	font-family: "微软雅黑";
}

.two span {
	color: red;
}

.three {
	width: 100%;
	height: 438px;
	background: #FFFFFF;
}

.three .three_div {
	width: 982px;
	padding-top: 100px;
	margin: 0px auto;
}

.three .three_wd {
	float: left;
	margin-left: 30px;
}

.three .three_wd1 {
	font-size: 40px;
	font-family: "微软雅黑";
	font-weight: lighter;
	color: #333333;
	padding-top: 50px;
	padding-bottom: 5px;
}

.three .three_wd2 {
	font-size: 16px;
	line-height: 25px;
	font-family: "微软雅黑";
	font-weight: lighter;
	color: #666666;
}

.three span {
	color: red;
}

.three .three_pic {
	float: right;
}

.fuor {
	background: #f0f0f0;
	width: 100%;
	height: 438px;
}

.fuor .fuor_div {
	width: 982px;
	padding-top: 130px;
	margin: 0px auto;
}

.fuor .fuor_pic {
	float: left;
	margin-left: 30px;
}

.fuor .fuor_wd {
	float: right;
}

.fuor .fuor_wd1 {
	font-size: 40px;
	font-family: "微软雅黑";
	font-weight: lighter;
	color: #333333;
	padding-top: 30px;
	padding-bottom: 5px;
}

.fuor .fuor_wd2 {
	font-size: 16px;
	line-height: 25px;
	font-family: "微软雅黑";
	font-weight: lighter;
	color: #666666;
}

.fuor span {
	color: red;
}

.five {
	width: 100%;
	height: 438px;
	background: #FFFFFF;
}

.five .five_div {
	width: 982px;
	padding-top: 80px;
	margin: 0px auto;
}

.five .five_wd {
	float: left;
	margin-left: 30px;
}

.five .five_wd1 {
	font-size: 40px;
	font-family: "微软雅黑";
	font-weight: lighter;
	color: #333333;
	padding-top: 70px;
	padding-bottom: 5px;
}

.five .five_wd2 {
	font-size: 16px;
	line-height: 25px;
	font-family: "微软雅黑";
	font-weight: lighter;
	color: #666666;
}

.five span {
	color: red;
}

.five .five_pic {
	float: right;
}

.six {
	height: 343px;
	background: #F8F8F8;
}

.six .six_div {
	width: 1068px;
	text-align: center;
	margin: 0px auto;
}

.six h3 {
	font-size: 26px;
	font-weight: lighter;
	font-family: "微软雅黑";
	color: #333333;
	padding-top: 45px;
	padding-bottom: 5px;
}

.six p {
	font-size: 12px;
	font-family: "微软雅黑";
	font-weight: lighter;
	color: #999999;
}

.down_pc {
	width: 123px;
	float: left;
	margin-top: 50px;
}

.down_pc a {
	background: url(img/images1/c_pc1.png) no-repeat;
	display: block;
	width: 123px;
	height: 32px;
	margin-top: 10px;
}

.down_pc a:hover {
	background: url(img/images1/c_pc2.png);
}

.down_ipone {
	width: 123px;
	float: left;
	margin-top: 42px;
	padding-left: 112px;
}

.down_ipone a {
	display: block;
	width: 123px;
	height: 32px;
	background: url(img/images1/c_ipone1.png) no-repeat;
	margin-top: 10px;
}

.down_ipone a:hover {
	background: url(img/images1/c_ipone2.png);
}

.down_ipad {
	width: 123px;
	float: left;
	padding-left: 112px;
	margin-top: 40px;
}

.down_ipad a {
	display: block;
	width: 123px;
	height: 32px;
	background: url(img/images1/c_ipad1.png) no-repeat;
	margin-top: 10px;
}

.down_ipad a:hover {
	background: url(img/images1/c_ipad2.png);
}

.down_az {
	width: 123px;
	float: left;
	margin-top: 41px;
	padding-left: 112px;
}

.down_az a {
	display: block;
	width: 123px;
	height: 32px;
	background: url(img/images1/c_az1.png);
	margin-top: 10px;
}

.down_az a:hover {
	background: url(img/images1/c_az2.png);
}

.down_wp {
	width: 123px;
	float: left;
	padding-left: 112px;
	margin-top: 40px;
}

.down_wp a {
	display: block;
	width: 123px;
	height: 32px;
	background: url(img/images1/c_wp1.png);
	margin-top: 10px;
}

.down_wp a:hover {
	background: url(img/images1/c_wp2.png);
}
</style>
</head>
<body>
	<header id="header">
		<div class="top">
			<div class="logo">
				<a href="index.html"><img src="img/images/topbar_01.jpg" /></a>
			</div>
			<div class="top_nav">
				<ul>
					<li><a href="index.html">发现音乐</a></li>
					<li><a href="Mymusic.html">我的音乐</a></li>
					<li class="pic_list" id="on"><a id="pic_a"
						href="download.html">下载客户端</a><i class="nav_find_download"></i><i
						class="nav_hot"></i></li>
				</ul>
			</div>
			<div class="nav_sosuo">
				<form action="www.wangyiyun.com" method="get"
					enctype="multipart/form-data">
					<c:choose>
						<c:when test="${currentUserLogin.userInfo.uname==null }">
							<div class="sss">
								<div class="login-header">
									<a href="javascript:void(0);"> <a class="pic_a1" href="#"
										title="登录">登录<i id="pic_a2"></i></a></a>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="sss">
								<div class="login-header">
									<a href="javascript:void(0);"><a class="pic_a1" href="#"
										title="登录">${currentUserLogin.userInfo.uname }<i
											id="pic_a2"></i></a></a>
								</div>
								<div class="denglu">
									<i class="yi"></i>
									<ul>
										<li><a href="wodezhuye.jsp"><em class="em1">
													我的主页</em></a></li>
										<li class="li6"><a href="gerenziliao.jsp"><em
												class="em1"> 个人设置</em></a></li>
										<li class="li7"><a href="javascript:userExit()"><em
												class="em1"> 退出</em></a></li>
									</ul>
								</div>
								<a href="wodezhuye.html" class="touxiang"><img width="30"
									height="30" src="../${currentUserLogin.userInfo.photo }"></a>
							</div>

						</c:otherwise>
					</c:choose>
					<div id="use_1">
						<input type="text" name="use" id="use"
							placeholder="单曲/歌手/专辑/歌单/用户" />
					</div>
				</form>
			</div>
		</div>
		<div class="top_nav_hx"></div>
	</header>

	<div class="bg">
		<div class="bg_div">
			<div class="tv">
				<img src="img/images1/tv.png" />
			</div>
			<div class="downlaod">
				<a href="http://music.163.com/api/android/download/latest2" class="az"></a>
				<a href="https://itunes.apple.com/app/id590338362" class="ipone"></a>
				<a href="https://itunes.apple.com/cn/app/wang-yi-yun-yin-lehd/id871041757?l=ch" class="ipad"></a> 
				<a href="http://music.163.com/api/osx/download/latest" class="mac"></a> 
				<a href="http://music.163.com/api/pc/download/latest" class="pc"></a>
				<a href="https://www.microsoft.com/store/apps/9nblggh6g0jf" class="uwp"></a> 
				<a href="http://www.windowsphone.com/s?appid=db9dbdaa-464e-4370-a078-800fc7983d39" class="wp"></a> 
				<a href="javascript:;" class="linux"></a>
				<ul>
					<li><a href=""><img src="img/images1/baidian.png">
							PC版更新日志</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>

<div class="twowm"></div>
<body>
	<div class="one">
		<div class="one_div">
			<div class="cd">
				<h1>千万曲库 首首CD音质</h1>
				<p>
					囊括百万首320kbps超品质音乐，你在用手机听歌<br />时，也能感受到CD音质，更能免费离线试听
				</p>
			</div>
			<div class="star">
				<img src="img/images1/star.png">
			</div>
		</div>
	</div>
	<div class="two">
		<div class="two_div">
			<div class="two_pic">
				<img src="img/images1/b1.jpg">
			</div>
			<div class="two_wd">
				<h1 class="two_wd1">千位明星 亲自推荐音乐</h1>
				<p class="two_wd2">
					陶喆，羽泉等<span>千位明星已入驻</span>，亲自创建私房歌单，<br />录制独家DJ节目，推荐他们心中的好音乐
				</p>
			</div>
		</div>
	</div>
	<div class="three">
		<div class="three_div">
			<div class="three_wd">
				<h1 class="three_wd1">社交关系 发现全新音乐</h1>
				<p class="three_wd2">
					你可以<span>关注明星</span>、DJ和好友，通过他们的动态、收藏<br />和分享，发现更多全新好音乐
				</p>
			</div>
			<div class="three_pic">
				<img src="img/images1/b2.jpg">
			</div>
		</div>
	</div>
	<div class="fuor">
		<div class="fuor_div">
			<div class="fuor_pic">
				<img src="img/images1/b3.jpg">
			</div>
			<div class="fuor_wd">
				<h1 class="fuor_wd1">手机电脑 歌单实时同步</h1>
				<p class="fuor_wd2">
					只要一个帐号，你就可以同步在手机、电脑上创建、<br />收藏的歌单，<span>随时随地畅享好音乐</span>
				</p>
			</div>
		</div>
	</div>
	<div class="five">
		<div class="five_div">
			<div class="five_wd">
				<h1 class="five_wd1">听歌识曲 助你疯狂猜歌</h1>
				<p class="five_wd2">
					歌曲很动听却不知道歌名，歌名在嘴边却想不起来......<br />用<span>听歌识曲</span>功能，几秒钟就知道歌名
				</p>
			</div>
			<div class="five_pic">
				<img src="img/images1/b4.jpg">
			</div>
		</div>
	</div>
	<div class="six">
		<div class="six_div">
			<h3>网易云音乐 听见好时光</h3>
			<p>下载网易云音乐客户端，随时随地畅享动听好时光</p>
			<div class="down_pc">
				<img src="img/images1/c1.jpg"> <a href="http://music.163.com/api/pc/download/latest"></a>
			</div>
			<div class="down_ipone">
				<img src="img/images1/c2.png"> <a href="https://itunes.apple.com/app/id590338362"></a>
			</div>
			<div class="down_ipad">
				<img src="img/images1/c3.jpg"> <a href="https://itunes.apple.com/cn/app/wang-yi-yun-yin-lehd/id871041757?l=ch"></a>
			</div>
			<div class="down_az">
				<img src="img/images1/c4.png"> <a href="http://music.163.com/api/android/download/latest2"></a>
			</div>
			<div class="down_wp">
				<img src="img/images1/c5.png"> <a href="https://www.microsoft.com/store/apps/9nblggh6g0jf"></a>
			</div>
		</div>
	</div>

	<div class="m-footer">
		<div class="m-footer_box">
			<div class="m-footer1">
				<a href="shenqin.html"><i class="m-footer1_tp"></i><span
					class="m-footer1_span1"> 独立音乐人招募计划</span><br>
				<span class="m-footer1_span2">加入我们 即将与超过亿万乐迷互动 </span></a>
			</div>
			<div class="m-footer1">
				<a href="shenqin.html"><i class="m-footer1_tp1"></i><span
					class="m-footer1_span1"> 音乐专栏招募计划</span><br>
				<span class="m-footer1_span2">加入我们 与同道中人交流心得</span></a>
			</div>

			<div class="m-footer3">
				<a class="m-footer_a1" href=""> <span class="m-footer3_span1">关于网易</span></a>-
				<a class="m-footer_a1" href=""><span class="m-footer3_span1">客户服务</span></a>-
				<a class="m-footer_a1" href=""><span class="m-footer3_span1">服务条款</span></a>-
				<a class="m-footer_a1" href=""><span class="m-footer3_span1">网站导航</a>

				<span class="m-footer3_span2">网易公司版权所有©1997-2016</span><br> <span
					class="m-footer3_span3">网络文化经营许可证：</span><a class="m-footer_a1"
					href=""> <span class="m-footer3_span3">张程洪著[2016]0155-055号</a>
				<a class="m-footer_a1" href=""><span id="span3"
					class="m-footer3_span3"> <i class="fankui"></i>意见反馈
				</span></a>
			</div>
		</div>
	</div>
	<div class="login_hezi">
		<div class="login">
			<div class="login-title">
				登录账号<span><a href="javascript:void(0);" class="close-login">关闭</a></span>
			</div>
			<div class="login-input-content">
				<div class="login-input">
					<label>用&nbsp;户&nbsp;&nbsp;名：</label> <input type="text"
						placeholder="请输入用户名" name="info[username]" id="username"
						class="list-input" />
				</div>
				<div class="login-input">
					<label>登录密码：</label> <input type="password" placeholder="请输入登录密码"
						name="info[password]" id="password" class="list-input" />
				</div>
			</div>
			<div class="login-button">
				<a href="javascript:void(0);" id="login-button-submit">登录账号</a>
			</div>
			<div class="login-button">
				<a href="javascript:void(0);" id="login-button-submit">注册账号</a>
			</div>
		</div>
	</div>


	<div class="dibu_box" id="fixed1">
		<div class="dibu1">
			<a class="yaoshi" href=""></a><a id="kai" class="dibu_a15"
				href="javascript:void(0)"></a><a class="dibu_a16" id="suo"
				href="javascript:void(0)" style="display: none"></a>
		</div>
		<div class="dibu">
			<a class="dibu_a1" href=""></a>

			<div id='pics'>
				<a class="dibu_a2" id="player" href="javascript:void(0)"
					style='display: block' alt='pic1' />

				<audio src="mymusic/Fade-Alan Walker.mp3" id="audio"></audio>
				</a> <a class="dibu_a2_a" href="javascript:void(0)" id="pause"
					alt='pic2' style='display: none'></a>
			</div>
			<a class="dibu_a3" href=""></a> <a class="dibu_a4" href=""><img
				src="img/images/2540971374738594.jpg"> </a> <a class="dibu_a5"
				href=""></a> <a href="" class="dibu_a10">Fade</a><a href=""
				class="dibu_a11">Alan Walker</a> <a class="dibu_a6" href=""></a> <span
				class="dibu_a6_span1">00:00 / 00:00</span> <a class="dibu_a7"
				href=""></a> <a class="dibu_a8" href=""></a> <i class="dibu_a9"></i>
			<a class="dibu_a12" href=""></a> <a class="dibu_a13" href=""></a> <a
				class="dibu_a14" href=""><span class="dibu_span2">999</span></a>

		</div>
	</div>
	<script type="text/javascript">
  var pause=document.getElementById("pause");
  var audio=document.getElementById("audio");
 var player=document.getElementById("player");  

            player.onclick=function(){
                audio.play();           
                this.style.display='none';
                pause.style.display='block';
            }
            pause.onclick=function(){
                audio.pause();    
                this.style.display='none';  
                player.style.display='block';         
            }
             var fixed1=document.getElementById("fixed1");   
                var kai=document.getElementById('kai');
                var suo=document.getElementById('suo');

                kai.onclick=function(){               
                kai.style.display='none';
                suo.style.display="block";
                fixed1.className="dibu_box-1";            
                }
                suo.onclick=function(){
                    suo.style.display="none";
                    kai.style.display="block";
                    fixed1.className="dibu_box";
                }          

        </script>
</body>
</html>
