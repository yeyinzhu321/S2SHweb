<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>相册列表</title>
<link href="css/picture.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
</head>
<body style="background:#101010;">
<div class="pic-head">
<div class="picHeard-title">
<span class="spanleftpic l"><a href="#">我的相册</a><label>&gt;</label><a href="/">xxx</a><label>&gt;</label>xxxx</span><a href="/">xxx</a><font>（<i id="viewNum">1</i>/10）</font><span class="spanrightpic r"><a href="index.jsp">返回首页</a></span>
</div>
</div>
<div class="indexBody">
  <div class="btn-float"><a class="maxBtn-l" href="javascript:void(0);"></a><a class="maxBtn-r" href="javascript:void(0);"></a></div>
  <div class="indexbody-main">
    <div class="indexbody-left"></div>
    <div class="indexbody-right"></div>
  </div>
  <div class="demo w990">
    <div class="maxPic-box">
      <div class="maxPic">
        <div class="maxPicBox"><span></span><img id="mainPic" src="images/bigPic/1.jpg"/></div>
      </div>
    </div>
    <div class="Pic-pageln">
        <span class="l">可用“<font>←</font>”或“<font>→</font>”方向键快速翻页</span>
        <span class="pic-r-span r">
            <a href="javascript:void(0);"  class="ico01" id="stop-on"><i class="ins1"></i>已暂停</a>
            <a id="showOriginal" target="_blank" href="images/bigPic/1.jpg" class="ico02"><i></i>查看原图</a>
            <a href="#" class="ico03"><i></i>下载</a><a href="" class="ico04"><i></i>分享</a>
            <a href="mylist.jsp" class="ico05"><i></i>返回图集</a>
        </span>
    </div>    
    <div id="tplist" class="w-width clearfix">
      <div class="Up-tuzu">
          <!--<a class="outpic" href="/" id="prevUrl"><span></span><img src="images/prev.jpg" /></a>
          <a class="inpic" href="/">上一组</a><span class="prevspan"></span>-->
      </div>
      
      <div class="bottom-lists l">
        <div class="PicBtn-a PicBtn-a-l"><a class="PicBtn-left" href="javascript:void(0);"></a></div>
        <div class="minPic l">
          <ul class="gallery_demo_unstyled">
            <li id="tu_1"><span></span><a href="javascript:void(0);"><img src="images/thumbPic/1.jpg" /></a></li>
            <li id="tu_2"><span></span><a href="javascript:void(0);">图片2</a></li>
            <li id="tu_3"><span></span><a href="javascript:void(0);"><img src="images/thumbPic/3.jpg"/></a></li>
            <li id="tu_4"><span></span><a href="javascript:void(0);"><img src="images/thumbPic/4.jpg"/></a></li>
            <li id="tu_5"><span></span><a href="javascript:void(0);"><img src="images/thumbPic/5.jpg"/></a></li>
            <li id="tu_6"><span></span><a href="javascript:void(0);"><img src="images/thumbPic/6.jpg"/></a></li>
            <li id="tu_7"><span></span><a href="javascript:void(0);"><img src="images/thumbPic/7.jpg"/></a></li>
            <li id="tu_8"><span></span><a href="javascript:void(0);"><img src="images/thumbPic/8.jpg"/></a></li>
            <li id="tu_9"><span></span><a href="javascript:void(0);"><img src="images/thumbPic/9.jpg"/></a></li>
            <li id="tu_10"><span></span><a href="javascript:void(0);"><img src="images/thumbPic/10.jpg"/></a></li>
          </ul>
        </div>
        <div class="PicBtn-a PicBtn-a-r"><a class="PicBtn-right" href="javascript:void(0);"></a></div>
      </div>
      
      <div class="Next-tuzu">
      <!--<a class="outpic" href="/" id="nextUrl"><span></span><img src="images/next.jpg"></a>
          <a class="inpic" href="/">下一组</a>
          <span class="nextspan"></span>-->
       </div>
    </div>
  </div>
</div>


<script type="text/javascript">
$(function(){
	var prevDiv = $(".Up-tuzu");
	var nextDiv = $(".Next-tuzu");
	if(prevDiv.find("a").length<1){
		 prevDiv.html("<p style='line-height:120px;color:#666;'><a href='' id='prevUrl'>没有了</a></p>");
		}
	if(nextDiv.find("a").length<1){
	 nextDiv.html("<p style='line-height:120px;color:#666;'><a href='' id='nextUrl'>没有了</a></p>");
	}
});

var selectKey = "1";
var picList = [{
    "picPos": 1,
    "pid": "1540637",
    "bigPic": "images/bigPic/1.jpg",
    "bigPic": "images/bigpic/1.jpg",
    "thumbPic": "images/thumbPic/1.jpg"
},
{
    "picPos": 2,
    "pid": "1520876",
    "bigPic": "images/bigPic/2.jpg",
    "bigPic": "images/bigPic/2.jpg",
    "thumbPic": "images/thumbPic/2.jpg"
},
{
    "picPos": 3,
    "pid": "1520550",
    "bigPic": "images/bigPic/3.jpg",
    "bigPic": "images/bigPic/3.jpg",
    "thumbPic": "images/thumbPic/3.jpg"
},
{
    "picPos": 4,
    "pid": "1520549",
    "bigPic": "images/bigPic/4.jpg",
    "bigPic": "images/bigPic/4.jpg",
    "thumbPic": "images/thumbPic/4.jpg"
},
{
    "picPos": 5,
    "pid": "1520548",
    "bigPic": "images/bigPic/5.jpg",
    "bigPic": "images/bigPic/5.jpg",
    "thumbPic": "images/thumbPic/5.jpg"
},
{
    "picPos": 6,
    "pid": "1520547",
    "bigPic": "images/bigPic/6.jpg",
    "bigPic": "images/bigPic/6.jpg",
    "thumbPic": "images/thumbPic/6.jpg"
},
{
    "picPos": 7,
    "pid": "1520546",
    "bigPic": "images/bigPic/7.jpg",
    "bigPic": "images/bigPic/7.jpg",
    "thumbPic": "images/thumbPic/7.jpg"
},
{
    "picPos": 8,
    "pid": "1520545",
    "bigPic": "images/bigPic/8.jpg",
    "bigPic": "images/bigPic/8.jpg",
    "thumbPic": "images/thumbPic/8.jpg"
},
{
    "picPos": 9,
    "pid": "1520544",
    "bigPic": "images/bigPic/9.jpg",
    "bigPic": "images/bigPic/9.jpg",
    "thumbPic": "images/thumbPic/9.jpg"
},
{
    "picPos": 10,
    "pid": "1520543",
    "bigPic": "images/bigPic/10.jpg",
    "bigPic": "images/bigPic/10.jpg",
    "thumbPic": "images/thumbPic/10.jpg"
}];
</script> 
<script type="text/javascript" src="js/picture.js"></script> 
<div style="text-align:center;">
<p></a></p>
</div>
</body>
</html>
