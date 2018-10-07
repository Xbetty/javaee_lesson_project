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
				<a href="index.jsp">首页</a> - <a href="${pageContext.request.contextPath}/findInfosByCid.action?cid=${category.cid }">简介</a> - <span class="now_site">平台简介</span>
			</div>
			<div class="con-header-l">
				<img src="./img/Information.jpg" alt="简介" />
				<h2 class="now_site">平台简介</h2>
			</div>
		</div>
		<div class="con-img">
			<img id="profile_img" src="./img/${category.cid }.jpg" alt="${category.cname }" />
		</div>
		<div class="content" id="profile_content">
			<div class="content_div">
				<p>
					研究人员主要是学校各院与此平台相关联研究基础的学术骨干、博士及地方文化机构研究专家、学者共同组成。平台集结学院及社会文化机构的研究力量和前期研究成果，在此基础上进一步落升研究方向和研究重点，产生研究价值。
					江西省已获得省政府批准的非物质文化遗产项目488项，国家级非物质文化遗产项目70项。萍乡就有国家级非遗项目4项，省级非遗项目31项。萍乡市地处吴楚文明的交融之地，文化底蕴深厚，素有“赣西文化堡垒”之美誉，非遗资源十分丰富，遍布萍乡各县区，特色各异，前期也积累了部分研究成果，研究基础较好。
				<p>
				<p>非物质文化遗产研究中心形成以下4个研究方向：非物质文化遗产研究、傩文化研究、禅宗文化研究、烟花鞭炮文化研究。
					非物质文化遗产本研究方向主要从非物质文化遗产项目的普查、认定、价值宣传、科学保护、传承推广等方面开展研究；
					傩文化研究方向主要从傩文化的宗教性、民俗性、民族性、审美性等特征，从人类学、民俗学、文艺学、社会学、历史学、戏剧学、舞蹈学，美学等众多学科切入，都具有相当广泛的学术研究价值；赣西禅宗文化资源丰富，萍乡杨岐禅宗寺庙就是禅门派策源地，对当地民俗产生了深远的影响，通过寻找赣西禅宗文化在民间信仰、传说、习俗中的痕迹，分析禅宗对于当地居民个性、思想等的影响，探索禅宗对当地民俗内容和形式等诸多方面的影响，力求深刻把握赣西禅宗研究的真正意义的学术价值；烟花鞭炮文化可以大大提高地方性高等院校对地方区域经济发展的服务能力，协助企业提升科技创新能力和产品的原始研发能力，提升高校
					“产、学、研”结合程度，促进企业对新技术、新产品的承接转化能力。</p>
				<p>三年建设预期目标是新增部分仪器设备，开放首批课题指南，申请国家、省部级项目若干项，撰写研究论文和著作，培养研究骨干，形成有实力、实干的研究团队，申报专利，参与校企合作转化平台成果。
					非物质文化遗产研究中心协同了萍乡市博物馆、萍乡非遗研究中心、杨歧寺、群众艺术馆等地方文化研究机构共同治理于平台建设，推动地方非遗研究的整体实力，打造具有学术价值和产业效益的良性平台运行机构。
				</p>
			</div>
			<div class="jj_menu_div">
				<div class="jj_menu" id="ptjj">
					<img src="./img/circle.png" />平台简介
				</div>
				<div class="jj_menu" id="zzjg" >
					<img src="./img/circle.png" />组织机构
				</div>
				<div class="jj_menu" id="cyjs">
					<img src="./img/circle.png" />成员介绍
				</div>
			</div>
		</div>


	</div>

	<!--底部-->
	<%@include file="footer.jsp"%>
	<script type="text/javascript">
	$("#ptjj").click(function(){
		window.location.href="${pageContext.request.contextPath}/findInfosByCid.action?cid=${category.cid }";
	});
	$("#zzjg").click(function(){
		$("p,h4,br").remove();
		$(".now_site").html("组织机构");
		$("#profile_img").attr("src","./img/zzjg.jpg");
		$(".content_div").append("<p>根据《江西省高校人文社会科学重点研究中心管理办法（试行）》，结合本院研究中心实际情况，设主任1名，下设非物质文化遗产研究所、傩文化研究所、禅宗文化研究所、烟花鞭炮文化研究所。非遗研究中心委员会是中心的学术、技术领导机构。研究管理团队是非遗中心的各类专兼职研究人员，依据不同的研究方向或而组团设立。</p>");
		$(".content_div").append("<p>（一）平台日常管理机构及组成人员</p>");
		$(".content_div").append("<p>主  任：陈 锋</p>");
		$(".content_div").append("<p>副主任：谢琼梅、刘建明、凌焰</p>");
		$(".content_div").append("<p>研究员：康华、凌焰、姚松奇、邓坤、陈焱、付红玲、周友田、王立平、田常红、何东平、郭慧、危远辉、习嘉裕、刘建明、邹松林、陈利兵、范春金、张琼、蓝赟、罗小燕、刘智勇、李昌晓、马春玲、刘建明、彭豪、孙正广、沈沙、汤松萍、文正再、吴芳、易志文、吴侃民、李光蕾、喻芳、柳献忠、邹松林、张军、朱红英、周欣娟、宋心果</p>");
		$(".content_div").append("<p>行政秘书：李光蕾</p>");
		$(".content_div").append("<p>科研秘书：黄磊</p>");
		$(".content_div").append("<p>财务管理员：陈丹</p>");
		$(".content_div").append("<p>日常管理机构及人员构成如下：</p>");
		$(".content_div").append("<p>非物质文化遗产项目认定、价值、保护、传承研究负责人：陈锋、康华</p>");
		$(".content_div").append("<p>傩文化的传承、保护和相关旅游产品开发研究负责人：谢琼梅、姚松奇</p>");
		$(".content_div").append("<p>赣西禅宗文化研究负责人：何东平、王立平</p>");
		$(".content_div").append("<p>赣湘边烟花鞭炮文化研究负责人：文侃、张军</p>");
		$(".content_div").append("<p>（二）平台学术委员会组成人员</p>");
		$(".content_div").append("<p>主任委员：叶涛，中国社会科学院世界宗教研究所研究员，博导。</p>");
		$(".content_div").append("<p>副主任委员：  左汉中，中国工艺美术学会民间美术专业委员会副主任，总编审。</p>");
		$(".content_div").append("<p>陈锋，萍乡学院艺术学院院长，教授。</p>");
		$(".content_div").append("<p>委员：徐仪明、邹松林、习嘉裕、危远辉、何东平、文侃、刘建明、康华、陈焱、凌焰、郭慧、谢琼梅。</p>");
		$(".content_div").append("<p>叶涛：中国社会科学院世界宗教研究所研究员，博导。</p>");
	});
	$("#cyjs").click(function(){
		$("p,h4,br").remove();
		$(".now_site").html("成员简介");
		$("#profile_img").attr("src","./img/cyjs.jpg");
		$(".content_div").append("<h4>研究中心顾问：</h4>");
		$(".content_div").append("<p><b>叶涛</b> 中国社会科学院世界宗教研究所研究员，博士研究生导师。《民俗研究》杂志主编； 中国民俗学会副理事长兼秘书长，中国宗教学会理事。</p>");
		$(".content_div").append("<p><b>左汉中</b> 中国工艺美术学会民间工艺美术专业委员会副主任；中国艺术研究院研究生院客座教授；湖南民间文艺家协会副主席，湖南省美协民间美术艺委会主任。</p>");
		$(".content_div").append("<p><b>徐仪明</b> 湖南师范大学公共管理学院教授，中国哲学专业博士生导师，哲学博士。</p>");
		$(".content_div").append("<br>");
		$(".content_div").append("<h4>研究中心主任：</h4>");
		$(".content_div").append("<p><b>陈锋</b> 非物质文化遗产项目认定、价值、保护、传承研究负责人。现为中国美术家协会会员、江西省艺术设计委员会常委、江西省高校青年骨干教师、校学科带头人。指导学生参加江西省艺术展演、大学生艺术节、大学生广告设计大赛、艺术设计双年展等活动多次荣获一等奖。主持省级相关研究课题了2项。出版个人作品集一部，副主编教材两部。</p>");
		$(".content_div").append("<br>");
		$(".content_div").append("<h4>研究中心副主任：</h4>");
		$(".content_div").append("<p><b>凌焰</b> 赣西禅宗文化研究负责人。历史学博士，政法学院副教授。</p>");
		$(".content_div").append("<p><b>易志文</b> 赣西禅宗文化研究负责人。中文系教授</p>");
		$(".content_div").append("<p><b>谢琼梅</b> 傩文化的传承、保护和相关旅游产品开发研究负责人。艺术学院副教授，学院中青年骨干教师、学院青年教师科研型拔尖人才，主编教材4部，主持5项省级课题和1项省级精品课程。</p>");
		$(".content_div").append("<br>");
		$(".content_div").append("<h4>研究中心研究员（按姓氏笔画排列）</h4>");
		$(".content_div").append("<p>陈焱（图书馆研究馆员）、陈利兵（专职讲师）、邓坤（艺术系副教授）、付红玲（艺术系副教授）、范春金（体育系副教授）、何萍（机电系教授）、黄检文（计算机系讲师）、康华（艺术系教授）、刘艳玲（教育科学系副教授）、蓝贇（艺术系讲师）、罗小燕（经济管理系副教授）、刘智勇（图书馆馆员）、李昌晓（艺术系讲师）、马春玲（科研处教授）、彭豪（图书馆教授）、孙正广（计算机系讲师）、沈沙（艺术系讲师）、田常红（）、汤松萍（机电系教授）、危远辉（赣西傩文化研究专家）、文正再（经济管理系教授）、吴芳（中文系教授）、王立平（科研处副教授）、吴侃民（科研处讲师）、习嘉裕（萍乡民间美术研究专家）、谢尔文（赣湘边烟花鞭炮文化研究专家）、姚松奇（艺术系副教授）、刘建明（图书馆副教授）、喻芳（教育科学系副教授）、邹松林（萍乡博物馆馆长）、张军（艺术系副教授）、朱红英（政法系教授）、周友田（赣西禅宗文化研究专家）、周欣娟（图书馆研究馆员）、张琼（艺术系讲师）</p>");
	
		
		
	});
	</script>
</body>

</html>