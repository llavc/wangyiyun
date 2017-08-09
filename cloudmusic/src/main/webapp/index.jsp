<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>网易云音乐</title>
<link rel="short icon" href="img/images/images/logo.jpg">
<meta name="keywords"
	content="网易云音乐，音乐，播放器，网易，下载，播放，DJ，免费，明星，精选，歌单，识别音乐，收藏，分享音乐，音乐互动，高音质" />
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link rel="stylesheet" type="text/css" href="css/denglu.css"/>
<link rel="stylesheet" type="text/css" href="css/jquery.mCustomScrollbar.css"/>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/jquery.mousewheel.min.js"></script>
<script type="text/javascript" src="js/jquery.mCustomScrollbar.min.js"></script>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/jquery.KinSlideshow-1.2.1.min.js"></script>
<style type="text/css">           
    ._mCS_1 .mCSB_scrollTools .mCSB_dragger .mCSB_dragger_bar{ background:#fff;}
</style>        
<script type="text/javascript">
	$(function(){
	$("#KinSlideshow").KinSlideshow({
		moveStyle:"left", 		//设置切换方向为向下 [默认向左切换]
		intervalTime:8,   		//设置间隔时间为8秒  [默认为5秒]
		mouseEvent:"mouseover",		//设置鼠标事件为“鼠标滑过切换”  [默认鼠标点击时切换]
		titleFont:{TitleFont_size:14,TitleFont_color:"#fff"}, //设置标题文字大小为14px，颜色：#FF0000
		titleBar:{titleBar_height:18, titleBar_bgColor:"#000",titleBar_alpha:0.3},
		 btn:{btn_bgColor:"#000",btn_bgHoverColor:"red",btn_fontColor:"#fff",
         btn_fontHoverColor:"#fff",btn_borderColor:"#fff",
         btn_borderHoverColor:"#000",btn_borderWidth:1},
		});
	})
</script>
</head>
<body>
	<header>
		<div class="top">
			<div class="logo">
				<a name="one"></a> <a href="index.jsp"><img
					src="img/images/topbar_01.jpg" /></a>
			</div>
			<div class="top_nav">
				<ul>
					<li id="on"><a href="index.jsp">发现音乐</a><i class="nav_find"></i></li>
					<li><a href="Mymusic.html">我的音乐</a></li>
					<li class="pic_list"><a id="pic_a" href="download.jsp">下载客户端</a><i class="nav_hot"></i></li>
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
										title="登录">${currentUserLogin.userInfo.uname }<i id="pic_a2"></i></a></a>
								</div>
								<div class="denglu">
									<i class="yi"></i>
									<ul>
										<li><a href="wodezhuye.jsp"><em class="em1">
													我的主页</em></a></li>
										<li class="li6"><a href="gerenziliao.jsp"><em
												class="em1"> 个人设置</em></a></li>
										<li class="li7"><a href="javascript:userExit()"><em class="em1">
													退出</em></a></li>
									</ul>
								</div>
								<a href="wodezhuye.html" class="touxiang"><img width="30" height="30" src="../${currentUserLogin.userInfo.photo }"></a>
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
		<div class="top_xiala">
			<div class="top_xlnav">
				<div class="top_xlnav1">
					<ul>
						<li><a id="on2" href="">极 力 推 荐</a></li>
						<li><a href="playlist.html">歌 单 分 类</a></li>
						<li><a href="bandsinger.html">乐 队 歌 手</a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>
	<!--
        	作者：572367465@qq.com
        	时间：2016-06-21
        	描述：jsbufen
        -->
	<div class="js">
		<div class="js_box">
			<div class="js_box1">
				<div id="KinSlideshow" style="visibility: hidden;">
					<a href="http://www.wangyiyun.com" target="_blank"><img
						src="img/images/js1.jpg" alt="周杰伦的床边故事" /></a> <a
						href="http://www.wangyiyun.com" target="_blank"><img
						src="img/images/js13.jpg" alt="正式入驻网易云" /></a> <a
						href="http://www.wangyiyun.com" target="_blank"><img
						src="img/images/js7.jpg" alt="我好像在哪见过你" /></a> <a
						href="http://www.wangyiyun.com" target="_blank"><img
						src="img/images/js9.jpg" alt="夜叉摇滚乐队" /></a> <a
						href="http://www.wangyiyun.com" target="_blank"><img
						src="img/images/js14.jpg" alt="我们是校园歌手" /></a> <a
						href="http://www.wangyiyun.com" target="_blank"><img
						src="img/images/js11.jpg" alt="Rock摇滚" /></a>
				</div>
			</div>
			<div class="js_box2">
				<a id="download" href="download.jsp" title="下载客户端"></a>
				<div id="download_wz">
					<p>PC 安卓 iPhone WP iPad Mac 六大客户端</p>
				</div>
			</div>
		</div>
	</div>
	<!--    
            	描述：Top
           -->
	<a href="#one"><div class="TOP"></div></a>
	<div class="content_box">
		<div class="content_hot">
			<div class="hot_title">
				<div class="title_tp">
					<img src="img/images/hot_title.jpg" />
				</div>
				<a id="hot_a" href="">热门推荐</a>
				<div class="hot_nav">
					<ul>
						<li><a class="hot_a2" href="playlist.html">华语</a><span
							class="line">|</span></li>
						<li><a class="hot_a2" href="playlist.html">流行</a><span
							class="line">|</span></li>
						<li><a class="hot_a2" href="playlist.html">摇滚</a><span
							class="line">|</span></li>
						<li><a class="hot_a2" href="playlist.html">民谣</a><span
							class="line">|</span></li>
						<li><a class="hot_a2" href="playlist.html">电子</a></li>
					</ul>
				</div>
				<span class="span_gengduo"><a class="hot_a2"
					href="playlist.html">更多<img class="jiantou"
						src="img/images/index_07.jpg" /></a></span>
			</div>
			<div class="hot_musics">

				<div class="hot_music1">

					<div class="hot_music2">
						<a href=""><img src="img/images/3427177750508168.jpg" /></a> <a
							href="list.html"><i class="hot_bg"></i></a> <i class="hot_play">
							<span class="hot_bofang2"></span><span class="hot_zt">28万</span>
							<a class="hot_bofang1" href="javascript:void(0)"><span
								class="hot_bofang" id="player3"> <audio
										src="mymusic/李荣浩 - 不将就.mp3" id="audio_2"></span></a>
						</i>
					</div>
					<div class="hot_p">
						<p>
							<a class="hot_music1_a" href="list.html">港人态度丨小清新下的生活哲学</a>
						</p>
					</div>

				</div>

				<div class="hot_music1s">
					<div class="hot_music2">
						<a href=""><img src="img/images/1423867567157829.jpg" /></a> <a
							href="list.html"><i class="hot_bg"></i></a> <i class="hot_play">
							<span class="hot_bofang2"></span><span class="hot_zt">82万</span>
							<a class="hot_bofang1" href="javascript:void(0)"> <span
								class="hot_bofang" id="player1"><audio
										src="mymusic/薛之谦 - 初学者.mp3" id="audio_3"></span></a>
						</i>
					</div>
					<div class="hot_p">
						<p>
							<a class="hot_music1_a" href="list.html">我想，在梦里和你谈一场不分手的恋爱</a>
						</p>
					</div>
				</div>
				<div class="hot_music1s">
					<div class="hot_music2">
						<a href=""><img src="img/images/1396379776063139.jpg" /></a> <a
							href="list.html"><i class="hot_bg"></i></a> <i class="hot_play">
							<span class="hot_bofang2"></span><span class="hot_zt">66万</span>
							<a class="hot_bofang1" href="javascript:void(0)"><span
								class="hot_bofang" id="player2"> <audio
										src="mymusic/薛之谦 - 刚刚好.mp3" id="audio_4"></span></a>
						</i>
					</div>
					<div class="hot_p">
						<p>
							<a class="hot_music1_a" href="list.html">【唱见科普】nico唱见百人百首新人普及向</a>
						</p>
					</div>
				</div>
				<div class="hot_music1s">
					<div class="hot_music2">
						<a href=""><img src="img/images/3252355400702550.jpg" /></a> <a
							href="list.html"><i class="hot_bg"></i></a> <i class="hot_play">
							<span class="hot_bofang2"></span><span class="hot_zt">99万</span>
							<a class="hot_bofang1" href=""><span class="hot_bofang"></span></a>
						</i>
					</div>
					<div class="hot_p">
						<p>
							<a class="hot_music1_a" href="list.html">如果想念有声，请带着我的思念飞到你的身边</a>
						</p>
					</div>
				</div>
				<div class="hot_music2s">
					<div class="hot_music2">
						<a href=""><img src="img/images/1367792470772682.jpg" /></a> <a
							href="list.html"><i class="hot_bg"></i></a> <i class="hot_play">
							<span class="hot_bofang2"></span><span class="hot_zt">1009</span>
							<a class="hot_bofang1" href=""><span class="hot_bofang"></span></a>
						</i>
					</div>
					<div class="hot_p">
						<p>
							<a class="hot_music1_a" href="list.html">『和风妖歌』日式黑童话 鬼の門 傀儡謡
							</a>
						</p>
					</div>
				</div>
				<div class="hot_music2ss">
					<div class="hot_music2">
						<a href=""><img src="img/images/3251255889597780.jpg" /></a> <a
							href="list.html"><i class="hot_bg"></i></a> <i class="hot_play">
							<span class="hot_bofang2"></span><span class="hot_zt">203万</span>
							<a class="hot_bofang1" href=""><span class="hot_bofang"></span></a>
						</i>
					</div>
					<div class="hot_p">
						<p>
							<a class="hot_music1_a" href="list.html" title="电台节目"><img
								class="diantai" src="img/images/diantai.jpg">我瞒着所有人继续爱你。</a>
						</p>
					</div>
				</div>
				<div class="hot_music2ss">
					<div class="hot_music2">
						<a href=""><img src="img/images/1396379778174456.jpg" /></a> <a
							href="list.html"><i class="hot_bg"></i></a> <i class="hot_play">
							<span class="hot_bofang2"></span><span class="hot_zt">123万</span>
							<a class="hot_bofang1" href=""><span class="hot_bofang"></span></a>
						</i>
					</div>
					<div class="hot_p">
						<p>
							<a class="hot_music1_a" href="list.html" title="电台节目"><span
								class="hot_diantai"><img class="diantai"
									src="img/images/diantai.jpg"></span>原来这些香料都能吃！</a>
						</p>
					</div>
				</div>
				<div class="hot_music2ss">
					<div class="hot_music2">
						<a href=""><img src="img/images/3444769933944989.jpg" /></a> <a
							href="list.html"><i class="hot_bg"></i></a> <i class="hot_play">
							<span class="hot_bofang2"></span><span class="hot_zt">156万</span>
							<a class="hot_bofang1" href=""><span class="hot_bofang"></span></a>
						</i>
					</div>
					<div class="hot_p">
						<p>
							<a class="hot_music1_a" href="list.html" title="电台节目"><img
								class="diantai" src="img/images/diantai.jpg">【吻安】我们都已过了耳听爱情的年纪</a>
						</p>
					</div>
				</div>
				<div class="hot_ad">
					<a href="" title="点击进入"><img
						src="img/images/1402976849091284.jpg" /></a>
				</div>
			</div>
		</div>


		<div class="content_right">
			<c:choose>
				<c:when test="${currentUserLogin.userInfo.uname==null }">
					<div class="user">
						<div class="user_wz">
							<p>登录网易云音乐，可以享受无限收藏</p>
							<p>的乐趣并且无限同步到手机</p>
						</div>

						<div class="login-header">
							<a title="登录" href="javascript:void(0);"><div
									class="user_denglu">用户登录</div></a>
						</div>

					</div>
				</c:when>
				<c:otherwise>
					<div class="user">

						<div class="user_touxiang">
							<img width="90" height="90" src="${currentUserLogin.userInfo.photo }">
						</div>

						<div class="use_xinxi">
							<span class="use_span"><a href="wodezhuye.html">${currentUserLogin.userInfo.uname}</a></span> 
							<a class="use_a2" href="javascript:void(0)" id="i3" style="display: block">签 到</a> <a class="use_a2_a"></a> 
							<a class="use_a3" href="javascript:void(0)" id="i2" style="display: none">已签到</a> <a class="use_a3_a"></a>

						</div>
						<div class="use_fensi">
							<a href="wodezhuye.html"><div class="use_fensi_1">
								</div></a> <a href="wodezhuye.html"><div class="use_fensi_1">
									<span class="use_fensi_span">${currentUserLogin.focus }</span><br>
									<span class="use_fensi_span1">关注</span>
								</div></a> <a href="wodezhuye.html"><div class="use_fensi_1">
									<span class="use_fensi_span">${currentUserLogin.funs }</span><br>
									<span class="use_fensi_span1">粉丝</span>
								</div></a>
						</div>

					</div>
				</c:otherwise>
			</c:choose>

			<div class="ruzhugeshou">
				<div class="ruzhugeshou_top">
					<span class="top_left">入驻歌手</span> <span class="top_right"><a
						href="bandsinger.html">查看全部></a></span>
				</div>
				<a class="ruzhugeshou_nr" href=""><img class="nr_tp"
					src="img/images/5931865232210340.jpg"><span class="top_wz">张惠妹aMRi</span>
				<sapn class="bottom_wz">台湾歌手张惠妹</sapn></a> <a class="ruzhugeshou_nr"
					href=""><img class="nr_tp"
					src="img/images/5783431162155757.jpg"><span class="top_wz">尚雯婕</span>
				<sapn class="bottom_wz">原创电子创作人</sapn></a> <a class="ruzhugeshou_nr"
					href=""><img class="nr_tp"
					src="img/images/2107763790458943.jpg"><span class="top_wz">羽泉组合</span>
				<sapn class="bottom_wz">国内知名演唱组合...</sapn></a> <a class="ruzhugeshou_nr"
					href=""><img class="nr_tp"
					src="img/images/3426078241754992.jpg"><span class="top_wz">DJ大湿</span>
				<sapn class="bottom_wz">全球电子摇滚音乐</sapn></a> <a class="ruzhugeshou_nr"
					href=""><img class="nr_tp"
					src="img/images/1394180754978603.jpg"><span class="top_wz">马颠麻油叶</span>
				<sapn class="bottom_wz">民谣音乐人</sapn></a> <a class="ruzhugeshou_sq"
					href="shenqin.html">申请成为网易音乐人</a>
			</div>
			<div class="hot_dj">
				<div class="hot_top">
					<span class="top_left">热门DJ</span> <span class="top_right"><a
						href="playlist.html">查看全部></a></span>
				</div>
				<div class="hot_nr">
					<a href=""><img class="hot_nr_a1"
						src="img/images/3368903628058175.jpg"></a> <span
						class="hot_nr_span1"><a class="hot_nr_a2" href="">阿鹏叔</a><i
						class="hot_nr_V"></i></span><br> <span class="hot_nr_span2">桒惪SOUND创办人</span>
				</div>

				<div class="hot_nr">
					<a href=""><img class="hot_nr_a1"
						src="img/images/5994537394864711.jpg"></a> <span
						class="hot_nr_span1"><a class="hot_nr_a2" href="">灵伟</a><i
						class="hot_nr_V"></i></span><br> <span class="hot_nr_span2">电台DJ、资深乐评人</span>
				</div>

				<div class="hot_nr">
					<a href=""><img class="hot_nr_a1"
						src="img/images/3283141723847819.jpg"></a> <span
						class="hot_nr_span1"><a class="hot_nr_a2" href="">庞柯</a><i
						class="hot_nr_V"></i></span><br> <span class="hot_nr_span2">深圳电台飞扬971主持人</span>
				</div>

				<div class="hot_nr">
					<a href=""><img class="hot_nr_a1"
						src="img/images/1409573914738725.jpg"></a> <span
						class="hot_nr_span1"><a class="hot_nr_a2" href="">林海</a><i
						class="hot_nr_V"></i></span><br> <span class="hot_nr_span2">著名音乐节目主持人</span>
				</div>

				<div class="hot_nr">
					<a href=""><img class="hot_nr_a1"
						src="img/images/3440371884651965.jpg"></a> <span
						class="hot_nr_span1"><a class="hot_nr_a2" href="">DJ晓苏</a><i
						class="hot_nr_V"></i></span><br> <span class="hot_nr_span2">独立DJ，CRI环球旅游广播特</span>
				</div>

			</div>


		</div>
		<!--
        	作者：572367465@qq.com
        	时间：2016-06-23
        	描述：主体内容
        -->
		<div class="content_new">
			<div class="hot_title">
				<div class="title_tp">
					<img src="img/images/hot_title.jpg" />
				</div>
				<a id="hot_a" href="">新碟上架</a> <span class="span_gengduo"><a
					class="hot_a2" href="new cd.html">更多<img class="jiantou"
						src="img/images/index_07.jpg" /></a></span>
			</div>
			<div class="new_music">
				<div class="new_music1">
					<ul class="new1">
						<li><div class="music_box">
								<a href="new cd.html" class="new_a"> <img
									src="img/images/images/3445869443778672.jpg" /> <i
									class="new_die"></i></a><a href="" class="music_boxa1"> <span
									class="new_zt">没我爱</span><a href="" class="tppp"></a></a><br>
								<a href="" class="music_boxa2"><span class="new_zt1">Sitar</span></a>
							</div></li>
						<li><div class="music_box">
								<a href="new cd.html" class="new_a"> <img
									src="img/images/images/2946691177457596.jpg" /> <i
									class="new_die"></i></a><a href="" class="music_boxa1"> <span
									class="new_zt">Hreo</span><a href="" class="tppp"></a></a><br>
								<a href="" class="music_boxa2"><span class="new_zt1">bob</span></a>
							</div></li>
						<li><div class="music_box">
								<a href="new cd.html" class="new_a"> <img
									src="img/images/images/3416182631606558.jpg" /> <i
									class="new_die"></i></a><a href="" class="music_boxa1"> <span
									class="new_zt">Crash</span><a href="" class="tppp"></a></a><br>
								<a href="" class="music_boxa2"><span class="new_zt1">Usher</span></a>
							</div></li>
						<li><div class="music_box">
								<a href="new cd.html" class="new_a"> <img
									src="img/images/images/1398578802654645.jpg" /> <i
									class="new_die"></i></a><a href="" class="music_boxa1"> <span
									class="new_zt">超越无限</span><a href="" class="tppp"></a></a><br>
								<a href="" class="music_boxa2"><span class="new_zt1">林俊杰</span></a>
							</div></li>
						<li><div class="music_box">
								<a href="new cd.html" class="new_a"> <img
									src="img/images/images/3265549549009124.jpg" /> <i
									class="new_die"></i></a><a href="" class="music_boxa1"> <span
									class="new_zt">好好说</span><a href="" class="tppp"></a></a><br>
								<a href="" class="music_boxa2"><span class="new_zt1">The
										one</span></a>
							</div></li>
					</ul>
					<a href="" class="youjiantou"></a><a href="" class="zuojiant"></a>
				</div>
			</div>

		</div>
		<div class="content_bangdan">
			<div class="hot_title">
				<div class="title_tp">
					<img src="img/images/hot_title.jpg" />
				</div>
				<a id="hot_a" href="">榜单</a> <span class="span_gengduo"><a
					class="hot_a2" href="toplist.html">更多<img class="jiantou"
						src="img/images/index_07.jpg" /></a></span>
			</div>
			<div class="bd_content">
				<div class="bd_content1">
					<div class="content1_title">
						<div class="content1_title1">
							<a class="bsb" href="toplist.html" title="云音乐飙升榜"><img
								src="img/images/bangdan.jpg" /><i class="bangdan_bg"></i></a>
						</div>
						<div class="content1_title2">
							<a class="bangdan_a1" title="云音乐飙升榜" href="">云音乐飙升榜</a> <a
								class="bangdan_bofang" title="播放" href="" /></a> <a
								class="bangdan_anniu" title="收藏" href=" " /></a>
						</div>
					</div>
					<div class="bangdan_nav">
						<div class="paihang">
							<span class="list1">1</span> <a class="bangdan_a2" title="皆非"
								href="play.html">皆非</a> <a href="" title="播放" class="bj"> <a
								href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list1">2</span> <a class="bangdan_a2" title="超越无限"
								href="play.html">超越无限</a> <a href="" title="播放" class="bj">
								<a href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list1">3</span> <a class="bangdan_a2" title="말해!뭐해?"
								href="play.html">말해!뭐해?</a> <a href="" title="播放" class="bj">
								<a href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list">4</span> <a class="bangdan_a2"
								title="I Like That" href="play.html">I Like That</a> <a href=""
								title="播放" class="bj"> <a href="" title="添加到播放列表"
								class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list">5</span> <a class="bangdan_a2" title="无终"
								href="play.html">无终</a> <a href="" title="播放" class="bj"> <a
								href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list">6</span> <a class="bangdan_a2" title="ALWAYS"
								href="play.html">ALWAYS</a> <a href="" title="播放" class="bj">
								<a href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list">7</span> <a class="bangdan_a2" title="다시 너를"
								href="play.html">다시 너를</a> <a href="" title="播放" class="bj">
								<a href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list">8</span> <a class="bangdan_a2" title="喜剧收场"
								href="play.html">喜剧收场</a> <a href="" title="播放" class="bj">
								<a href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list">9</span> <a class="bangdan_a2"
								title="Work from Home" href="">Work from Home</a> <a href=""
								title="播放" class="bj"> <a href="" title="添加到播放列表"
								class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list">10</span> <a class="bangdan_a2" title="方的言"
								href="">方的言</a> <a href="" title="播放" class="bj"> <a href=""
								title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list11"><a class="bangdan_a2"
								href="toplist.html">查看全部></a></span>
						</div>
					</div>
				</div>
				<div class="bd_content1">
					<div class="content1_title">
						<div class="content1_title1">
							<a class="bsb" title="云音乐原创榜" href="toplist.html"><img
								src="img/images/bandan3.jpg" /><i class="bangdan_bg"></i></a>
						</div>
						<div class="content1_title2">
							<a class="bangdan_a1" title="云音乐原创榜" href="">云音乐原创榜</a> <a
								class="bangdan_bofang" title="播放" href="" /></a> <a
								class="bangdan_anniu" title="收藏" href=" " /></a>
						</div>
					</div>
					<div class="bangdan_nav">
						<div class="paihang">
							<span class="list1">1</span> <a class="bangdan_a2" title="重来"
								href="play.html">重来</a> <a href="" title="播放" class="bj"> <a
								href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list1">2</span> <a class="bangdan_a2" title="船子"
								href="play.html">船子</a> <a href="" title="播放" class="bj"> <a
								href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list1">3</span> <a class="bangdan_a2" title="荏苒冬春去"
								href="play.html">荏苒冬春去</a> <a href="" title="播放" class="bj">
								<a href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list">4</span> <a class="bangdan_a2" title="在一片黑暗之中"
								href="play.html">在一片黑暗之中</a> <a href="" title="播放" class="bj">
								<a href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list">5</span> <a class="bangdan_a2" title="纯白之夜"
								href="play.html">纯白之夜</a> <a href="" title="播放" class="bj">
								<a href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list">6</span> <a class="bangdan_a2" title="算了吧"
								href="play.html">算了吧</a> <a href="" title="播放" class="bj"> <a
								href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list">7</span> <a class="bangdan_a2" title="对不起"
								href="">对不起</a> <a href="" title="播放" class="bj"> <a href=""
								title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list">8</span> <a class="bangdan_a2" title="最后一次拥抱你"
								href="">最后一次拥抱你</a> <a href="" title="播放" class="bj"> <a
								href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list">9</span> <a class="bangdan_a2" title="虞山遗忘"
								href="">虞山遗忘</a> <a href="" title="播放" class="bj"> <a
								href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list">10</span> <a class="bangdan_a2" title="如果遇见你"
								href="">如果遇见你</a> <a href="" title="播放" class="bj"> <a
								href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list11"><a class="bangdan_a2"
								href="toplist.html">查看全部></a></span>
						</div>
					</div>
				</div>
				<div class="bd_content1">
					<div class="content1_title">
						<div class="content1_title1">
							<a class="bsb" title="云音乐新歌榜" href="toplist.html"><img
								src="img/images/bangdan2.jpg" /><i class="bangdan_bg"></i></a>
						</div>
						<div class="content1_title2">
							<a class="bangdan_a1" title="云音乐新歌榜" href="">云音乐新歌榜</a> <a
								class="bangdan_bofang" title="播放" href="" /></a> <a
								class="bangdan_anniu" title="收藏" href=" " /></a>
						</div>
					</div>
					<div class="bangdan_nav">
						<div class="paihang">
							<span class="list1">1</span> <a class="bangdan_a2" title="皆非"
								href="play.html">皆非</a> <a href="" title="播放" class="bj"> <a
								href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list1">2</span> <a class="bangdan_a2" title="刚刚好"
								href="play.html">刚刚好</a> <a href="" title="播放" class="bj"> <a
								href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list1">3</span> <a class="bangdan_a2" title="不完美女孩"
								href="play.html">不完美女孩</a> <a href="" title="播放" class="bj">
								<a href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list">4</span> <a class="bangdan_a2" title="我可以忘记你"
								href="play.html">我可以忘记你</a> <a href="" title="播放" class="bj">
								<a href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list">5</span> <a class="bangdan_a2"
								title="不该(with aMEI)" href="">不该(with aMEI)</a> <a href=""
								title="播放" class="bj"> <a href="" title="添加到播放列表"
								class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list">6</span> <a class="bangdan_a2" title="超越无限"
								href="">超越无限</a> <a href="" title="播放" class="bj"> <a
								href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list">7</span> <a class="bangdan_a2"
								title="Sing Me to Sleep" href="">Sing Me to Sleep</a> <a href=""
								title="播放" class="bj"> <a href="" title="添加到播放列表"
								class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list">8</span> <a class="bangdan_a2" title="摄影艺术"
								href="">摄影艺术</a> <a href="" title="播放" class="bj"> <a
								href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list">9</span> <a class="bangdan_a2" title="말해! 뭐해?"
								href="">말해! 뭐해?</a> <a href="" title="播放" class="bj"> <a
								href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list">10</span> <a class="bangdan_a2"
								title="I LOVE YOU" href="">I LOVE YOU</a> <a href="" title="播放"
								class="bj"> <a href="" title="添加到播放列表" class="bj2"></a>
							</a><a href="" title="收藏" class="bj1"></a>
						</div>

						<div class="paihang">
							<span class="list11"><a class="bangdan_a2"
								href="toplist.html">查看全部></a></span>
						</div>
					</div>
				</div>
			</div>
			<!--bangdancontent -->
		</div>
		<!--box-->
	</div>

	<div class="m-footer">
		<div class="m-footer_box">
			<div class="m-footer1">
				<a href="shenqin.html"><i class="m-footer1_tp"></i> <span
					class="m-footer1_span1">独立音乐人招募计划</span><br> <span
					class="m-footer1_span2">加入我们 即将与超过亿万乐迷互动</span></a>
			</div>
			<div class="m-footer1">
				<a href="shenqin.html"><i class="m-footer1_tp1"></i> <span
					class="m-footer1_span1">音乐专栏招募计划</span><br> <span
					class="m-footer1_span2">加入我们 与同道中人交流心得</span></a>
			</div>
			<div class="m-footer3">
				<a class="m-footer_a1" href="www.wangyiyun.com"> <span
					class="m-footer3_span1">关于网易</span></a>- <a class="m-footer_a1" href=""><span
					class="m-footer3_span1">客户服务</span></a>- <a class="m-footer_a1" href=""><span
					class="m-footer3_span1">服务条款</span></a>- <a class="m-footer_a1" href=""><span
					class="m-footer3_span1">网站导航</a> <span class="m-footer3_span2">网易公司版权所有©1997-2016</span><br>
				<span class="m-footer3_span3">网络文化经营许可证：</span><a
					class="m-footer_a1" href=""> <span class="m-footer3_span3">张程洪著[2016]0155-055号</a>
				<a class="m-footer_a1" href=""><span id="span3"
					class="m-footer3_span3"> <i class="fankui"></i>意见反馈
				</span></a>
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
					style='display: block' alt='pic1' /> </a> <a class="dibu_a2_a"
					href="javascript:void(0)" id="pause" alt='pic2'
					style='display: none'></a>
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

	<div id="loginWindow" class="login_hezi">
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
					<a href="javascript:checkUname();" style="height:35px;line-height:35px;margin-left:20px;color:#666;">忘记密码?</a>
				</div>
			</div>
			
			<div class="login-button">
				<a href="javascript:void(0);" id="login-button-submit">登录账号</a>
			</div>
			<div class="login-button">
				<a href="javascript:changeWindow('loginWindow','regWindow')" id="reg-button-submit">注册账号</a>
			</div>
		</div>
	</div>
	
	<div id="regWindow" class="login_hezi" style="display:none;">
		<div class="login">
			<div class="login-title">
				注册账号<span><a href="javascript:void(0);" class="close-login">关闭</a></span>
			</div>
			<div class="login-input-content">
				<div class="login-input">
					<label>用&nbsp;户&nbsp;&nbsp;名：</label> <input type="text"
						placeholder="请输入用户名" name="info[username]" id="reg_uname"
						class="list-input" />
				</div>
				<div class="login-input">
					<label>登录密码：</label> <input type="password" placeholder="请输入登录密码"
						name="info[password]" id="reg_pwd" class="list-input" />
					<label>重复密码：</label> <input type="password" placeholder="请再次输入登录密码"
						name="info[password]" id="reg_pwd1" class="list-input" />
				</div>
			</div>
			<div class="login-button">
				<a href="javascript:userReg();" id="reg-button-submit">注册</a>
			</div>
			<div>
				<a style="color:blue;" href="javascript:changeWindow('regWindow','loginWindow')" title="返回登录">>返回登录</a>
			</div>
		</div>
	</div>
	
	<div id="alertPwdWindow" class="login_hezi" style="display:none;">
		<div class="login">
			<div class="login-title">
				修改密码<span><a href="javascript:void(0);" class="close-login">关闭</a></span>
			</div>
			<div class="login-input-content">
				<div class="login-input">
					<label>用&nbsp;户&nbsp;&nbsp;名：</label> <input type="text"
						placeholder="请输入用户名" name="info[username]" id="alertPwd_uname"
						class="list-input" />
				</div>
				<div class="login-input">
					<label>登录密码：</label> <input type="password" placeholder="请输入要修改的密码"
						name="info[password]" id="alertPwd_pwd" class="list-input" />
					<label>重复密码：</label> <input type="password" placeholder="请再次输入密码"
						name="info[password]" id="alertPwd_pwd1" class="list-input" />
				</div>
			</div>
			<div class="login-button">
				<a href="javascript:alertPwd();">确认修改</a>
			</div>
			<div>
				<a style="color:blue;" href="javascript:changeWindow('alertPwdWindow','loginWindow')" title="返回登录">>返回登录</a>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		function changeWindow(id1,id2){
			$("#"+id1).css("display","none");
			$("#"+id2).css("display","block");
		}
		var pause = document.getElementById("pause");
		var audio = document.getElementById("audio");
		var player = document.getElementById("player");
		var player1 = document.getElementById("player1");
		var audio_3 = document.getElementById("audio_3");
		var player3 = document.getElementById("player3");
		var audio_2 = document.getElementById("audio_2");
		var player2 = document.getElementById("player2");
		var audio_4 = document.getElementById("audio_4");

		player3.onclick = function() {
			audio_2.play();
			audio_3.pause();
			audio_4.pause();
			player.style.display = 'none';
			pause.style.display = 'block';
		}
		pause.onclick = function() {
			audio_2.pause();
			pause.style.display = 'none';
			player.style.display = 'block';
		}

		player1.onclick = function() {
			audio_3.play();
			audio_2.pause();
			audio_4.pause();
			player.style.display = 'none';
			pause.style.display = 'block';
		}
		pause.onclick = function() {
			audio_3.pause();
			pause.style.display = 'none';
			player.style.display = 'block';
		}
		player.onclick = function() {
			audio_3.play();
			player.style.display = 'none';
			pause.style.display = 'block';
		}
		player2.onclick = function() {
			audio_3.pause();
			audio_2.pause();
			audio_4.play();
			player.style.display = 'none';
			pause.style.display = 'block';
		}
		pause.onclick = function() {
			audio_4.pause();
			pause.style.display = 'none';
			player.style.display = 'block';
		}
		player.onclick = function() {
			audio_4.play();
			player.style.display = 'none';
			pause.style.display = 'block';
		}
		var fixed1 = document.getElementById("fixed1");
		var kai = document.getElementById('kai');
		var suo = document.getElementById('suo');

		kai.onclick = function() {
			kai.style.display = 'none';
			suo.style.display = "block";
			fixed1.className = "dibu_box-1";
		}
		suo.onclick = function() {
			suo.style.display = "none";
			kai.style.display = "block";
			fixed1.className = "dibu_box";
		}
	</script>
</body>
</html>
