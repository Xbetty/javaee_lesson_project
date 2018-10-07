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
				<a href="index.jsp">首页</a> - <a href="${pageContext.request.contextPath}/findInfosByCid.action?cid=${category.cid }">研创</a> - <span class="now_site">研创活动</span>
			</div>
			<div class="con-header-l">
				<img src="./img/Information.jpg" alt="研创" />
				<h2 class="now_site">研创活动</h2>
			</div>
		</div>
		<div class="con-img">
			<img id="profile_img" src="./img/${category.cid }.jpg" alt="${category.cname }" />
		</div>
		<div class="content" id="profile_content">
			<div class="content_div">
				<p>
					江西省高校人文重点研究基地非物质文化遗产研究中心自成立以来，开展了赣湘边区历史、宗教、民俗、文化的广泛调查，研究地域范围包括萍乡市、宜春市、浏阳市等大赣西、湘东区域范围。研究中心与萍乡市史志办公室、萍乡市非物质文化遗产传承保护中心、萍乡博物馆、中国傩文化传承保护基地等单位和部门建立了广泛联系；同时开展了各类大型研创学术活动，搭建了一系列重要的研创学术交流平台，学校广泛邀请国内外著名学者、专家来院举办大型学术交流和非遗专题学术讲座。先后举办了2015年海峡两岸傩文化学术研讨会，2016年首届杨岐禅学思想学术研讨会，萍乡市非物质文化遗产传承教育基地揭牌暨萍乡民间文化系列讲座，有力地推动了学校非遗研究的深度和广度，提升了学校在全省乃至全国非遗研究的影响力，有效地营造了良好的校园学术氛围。
				<p>
			</div>
			<div class="jj_menu_div">
				<div class="jj_menu" id="ychd">
					<img src="./img/circle.png" />研创活动
				</div>
				<div class="jj_menu" id="shfw" >
					<img src="./img/circle.png" />社会服务
				</div>
				<div class="jj_menu" id="xtcx">
					<img src="./img/circle.png" />协同创新
				</div>
			</div>
		</div>


	</div>

	<!--底部-->
	<%@include file="footer.jsp"%>
	<script type="text/javascript">
	$("#ychd").click(function(){
		window.location.href="${pageContext.request.contextPath}/findInfosByCid.action?cid=${category.cid }";
	});
	$("#shfw").click(function(){
		$("p,h4,br").remove();
		$(".now_site").html("社会服务");
		$("#profile_img").attr("src","./img/shfw.jpg");
		$(".content_div").append("<p>近年来，江西省高校人文重点研究基非物质文化遗产研究中心充分发挥学术研究优势，立足属地，为萍乡社会经济建设服务做出积极贡献，在社会服务方面，进一步加强和地方文化部门的合作，在文化资源的保护与开发、文化生态园的建设、非物质文化遗产旅游项目开发、地方志的编撰等方面提供决策和参考，促进萍乡的文化建设，从服务社会中获取学科发展的动力与活力；通过承担实际工作部门的应用研究课题，聘请实际部门工作人员作为兼职研究员或吸收其参加课题组开展合作研究、派遣研究基地学术骨干作为实际工作部门顾问等多种方式，面向各级政府、企事业单位及其他社会单位开展多层次的、形式多样的咨询服务，提高参与解决重大实际问题的综合研究能力和参与重大决策的能力，成为我市非遗咨询服务基地。</p>");
	});
	$("#xtcx").click(function(){
		$("p,h4,br").remove();
		$(".now_site").html("协同创新");
		$("#profile_img").attr("src","./img/xtcx.jpg");
		$(".content_div").append("<p>非物质文化遗产研究中心以从事赣湘边地区的地方历史、地方宗教、地方民俗、区域文化为研究内容，重点关注江西的尤其是赣西地区的民间宗教信仰、傩文化、地方特色文化、烟花爆竹与区域经济，借助平台实现多学科人才融合，助推非物质文化遗产的科研成果转化，提升我校科研实力和非遗传承教育以及服务地方经济社会发展的能力，为培养和汇聚一批高水平、高层次的科研人才提供协同创新平台。非物质文化遗产研究中心协同了萍乡市博物馆、萍乡非遗研究中心、杨歧寺、群众艺术馆等地方文化研究机构共同治理于平台建设，推动地方非遗研究的整体实力，打造具有学术价值和产业效益的良性平台运行机构。</p>");
	});
	</script>
</body>

</html>