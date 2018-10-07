<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>非遗首页</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=3, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no, minimal-ui" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="./css/base.css" rel="stylesheet" />
<script type="text/javascript" src="./js/jquery.min.js"></script>
<script type="text/javascript" src="./js/common.js"></script>
<style type="text/css">
.content p,h4 {
	text-indent: 35px;
}

.content .jj_menu_div {
	width: 100%;
	float: left;
	margin: 100px 30px 0 0;
}

.content .jj_menu_div .jj_menu {
	float: left;
	width: 120px;
	height: 30px;
}

.content .jj_menu_div .jj_menu:hover {
	color: #cd0104;
	cursor: pointer;
}

.content .jj_menu_div .jj_menu img {
	width: 10px;
	height: 10px;
}
</style>
</head>

<body>
	<!--头部-->
	<%@include file="header.jsp"%>
	<!--内容-->
	<div class="container container-bg">
		<div class="con-header">
			<div class="con-header-r">
				<a href="index.jsp">首页</a> - <a href="${pageContext.request.contextPath}/findInfosByCid.action?cid=${category.cid }">成果</a> - <span class="now_site">基地项目</span>
			</div>
			<div class="con-header-l">
				<img src="./img/Information.jpg" alt="成果" />
				<h2 class="now_site">基地项目</h2>
			</div>
		</div>
		<div class="con-img">
			<img id="profile_img" src="./img/${category.cid }.jpg" alt="${category.cname }" />
		</div>
		<div class="content" id="profile_content">
			<div class="content_div">
				<p>
					1.陈焱项目：赣傩文化资源库数字化建设的发展研究，江西省社会科学研究规划“十二五”一般项目，2016结项
				<p>
				<p>2.谢琼梅项目：萍乡民间美术纹样符号学研究，江西省艺术科学规划一般项目，2016结项</p>
				<p>3.姚松奇项目：非物质文化语境下水墨元素在平面设计教学中的应用研究，江西省教改课题，2016年结项</p>
				<p>4.张琼项目：萍乡市广场舞蹈文化研究，萍乡学院校级课题，2016年结项</p>
				<p>5.凌焰项目：萍乡杨岐禅宗碑刻实录整理与研究，江西省高校人文社会科学重点研究基地招标项目，在研</p>
				<p>6.凌焰项目：图甲制下的乡村基层社会—清代萍乡义祠研究，江西省哲学社会科学规划课题青年项目，在研</p>
				<p>7.康华项目：非物质文化遗产视阈下的赣西曲艺研究，江西省高校人文社会科学重点研究基地招标项目，在研</p>
				<p>8.谢琼梅项目：非物质文化遗产视野下的萍乡傩面具保护与开发研究，江西省高校人文社会科学重点研究基地招标项目，在研</p>
				<p>9.姚松奇项目：数字化背景下“非遗进校园”文化创新系统构建研究，江西省高校人文社会科学重点研究基地招标项目，在研</p>
				<p>10.王立平项目：根植于江西传统文化的动漫产业及动漫素材库研究，江西省高校人文社科，在研</p>
				<p>11.王立平项目：江西禅宗祖庭特色数据库建设研究，2015年度江西省高校人文社会科学研究项目，在研</p>
				<p>12.黄检文项目：基于新媒体技术的萍乡地区非物质文化遗产数字化保护与传承研究，江西省文化艺术科学规划项目，在研</p>
				<p>13.彭晔琴项目：关于非物质文化遗产赣西萍乡春锣的调查分析及其音乐研究，省软科学研究计划项目，在研</p>
				<p>14.孙正广项目：传统曲艺形式渔鼓的基础研究及数字化保护——以萍乡为例，江西省艺术科学规划一般项目，在研</p>
				<p>15.孙正广项目：基于移动终端下增强现实技术对傩文化数字化保护的关键技术研究，省教育厅科技项目，在研</p>
			</div>
			<div class="jj_menu_div">
				<div class="jj_menu" id="jdxm">
					<img src="./img/circle.png" />基地项目
				</div>
				<div class="jj_menu" id="jdzz" >
					<img src="./img/circle.png" />基地著作
				</div>
				<div class="jj_menu" id="jdlw">
					<img src="./img/circle.png" />基地论文
				</div>
				<div class="jj_menu" id="jdzl">
					<img src="./img/circle.png" />基地专利
				</div>
				<!-- <div class="jj_menu" id="cgsw">
					<img src="./img/circle.png" />成果实物
				</div> -->
			</div>
		</div>


	</div>

	<!--底部-->
	<%@include file="footer.jsp"%>
	<script type="text/javascript">
	$("#jdxm").click(function(){
		window.location.href="${pageContext.request.contextPath}/findInfosByCid.action?cid=${category.cid }";
	});
	$("#jdzz").click(function(){
		$("p,h4,br").remove();
		$(".now_site").html("基地著作");
		$("#profile_img").attr("src","./img/jdzz.jpg");
		$(".content_div").append("<p>1.张琼，东方神韵中的舞蹈艺术，吉林大学出版社出版，2016年11月</p>");
		$(".content_div").append("<p>2.刘建明，杨岐志</p>");
		$(".content_div").append("<p>3.杨岐方会语录（内部刊物），萍乡学院非物质文化遗产研究中心编</p>");
		$(".content_div").append("<p>4.2016首届杨岐禅学思想学术研讨会（内部刊物），萍乡学院非物质文化遗产研究中心编</p>");
	});
	$("#jdlw").click(function(){
		$("p,h4,br").remove();
		$(".now_site").html("基地论文");
		$("#profile_img").attr("src","./img/jdlw.jpg");
		$(".content_div").append("<p>1.谢琼梅论文：基于萍乡傩面具纹样的旅游商品的开发研究，包装工程，2017年待发，北大中文核心，CSCD扩展</p>");
		$(".content_div").append("<p>2.谢琼梅论文：解析萍乡傩面具纹样隐匿符号密码，艺术工作，2017年待发，北大中文核心，南大核心扩展</p>");
		$(".content_div").append("<p>3.王立平论文：一种带反向学习机制的自适应烟花爆炸算法，CSCD收录</p>");
		$(".content_div").append("<p>4.陈焱论文：赣傩文化资源分布状况调查与分析，萍乡学院学报，2016年4月，省刊</p>");
		$(".content_div").append("<p>5.陈焱论文：赣傩文化资源库数字化建设的可行性研究，萍乡学院学报，2016年8月，省刊</p>");
		$(".content_div").append("<p>6.温婷论文：抢救与换装：赣傩资源数字化建设的文化价值，萍乡学院学报，2016年8月，省刊</p>");
		$(".content_div").append("<p>7.谢琼梅论文：江西萍乡皮影纹样研究，萍乡学院学报，2016年8月，省刊</p>");
		$(".content_div").append("<p>8.张琼论文：新形势下广场舞蹈对城镇居民生活的影响，文艺生活，2016年02期，省刊</p>");
		$(".content_div").append("<p>9.张琼论文：萍乡傩文化的传承与保护研究，文艺生活，2016年06期，省刊</p>");
		$(".content_div").append("<p>10.姚松奇论文：文化传承模式下高校平面设计课程中对水墨元素吸纳与应用，牡丹，2016年，省刊</p>");
		$(".content_div").append("<p>11.姚松奇论文：非遗保护视野下传统水墨元素在现代包装设计教学中渗透研究，绿色包装，2016年，省刊</p>");
		$(".content_div").append("<p>12.孙正广论文：非物质文化遗产旅游开发探析——以萍乡渔鼓为例，知音励志，2016年，省刊</p>");
		$(".content_div").append("<p>13.孙正广论文：传统曲艺形式渔鼓的基础研究及数字化保护——以萍乡为例，大众文艺，2016年，省刊</p>");
	});
	$("#jdzl").click(function(){
		$("p,h4,br").remove();
		$(".now_site").html("基地专利");
		$("#profile_img").attr("src","./img/jdzl.jpg");
		$(".content_div").append("<p>1.姚松奇专利：国家实用新型专利，一种新型智能的书法桌设计，2017年获批</p>");
		$(".content_div").append("<p>2.陈  锋专利：国家外观专利，中国萍乡礼品包装盒，2016年获批</p>");
		$(".content_div").append("<p>3.谢琼梅专利：国家外观专利，傩面具礼品包装盒，2017年获批</p>");
		
	});
	/* $("#cgsw").click(function(){
		$("p,h4,br").remove();
		$(".now_site").html("成果实物");
		$("#profile_img").attr("src","./img/cgsw.jpg");
		$(".content_div").append("<p></p>");
		$(".content_div").append("<p></p>");
		$(".content_div").append("<p></p>");
		$(".content_div").append("<p></p>");
		$(".content_div").append("<p></p>");
		$(".content_div").append("<p></p>");
		
	}); */
	</script>
</body>

</html>