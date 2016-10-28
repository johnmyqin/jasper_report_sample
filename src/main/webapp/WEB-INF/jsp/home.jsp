<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=9">
	<link href="/css/global.css" rel="stylesheet" type="text/css">
	<link href="/css/global_english.css" rel="stylesheet" type="text/css">
	<link href="/css/heropedia.css" rel="stylesheet" type="text/css">
	<title>Heroes</title>
			
</head>
<body>
<center>
 	<a href="/">
		<img src="/img/common/logo.png" width="167" height="33" border="0">
    </a>
	<div id="bodyContainer">
		<div id="centerColOuter_NoCallout">
			<div id="centerColTopShadow"><img src="/img/common/centercolbox_top_shadow.png" width="984" height="25"></div>
			<div id="centerColTop"><img src="/img/common/centercolbox_top.png" width="984" height="9"></div>
			<div id="centerColContainer">
				<div id="centerColContent">
					<div class="redboxOuter">
						<div class="redboxContent">
							<div class="redboxTop"></div>
								<div id="heroPickerInner">
								
									<div class="heroColLeft">
										<div id="columnHeader"><span id="columnHeaderTextStr">Strength</span></div>
										<div class="heroIcons">
											<c:forEach var="hero" items="${heroStr}">
												<a class="heroPickerIconLink filterMatchedHero" href="/hero/name/${hero.name}">
													<img class="heroHoverLarge" style="display: none;" src="/img/${hero.name}/${hero.name}_hphover.png">
													<img class="heroHoverSmall" src="/img/${hero.name}/${hero.name}_sb.png">
												</a>
											</c:forEach>											
										</div>
										<br clear="left">
									</div>
									
									<div class="heroColMiddle">
										<div id="columnHeader"><span id="columnHeaderTextAgi">Agility</span></div>
										<div class="heroIcons">
											<c:forEach var="hero" items="${heroAgi}">
												<a class="heroPickerIconLink filterMatchedHero" href="/hero/name/${hero.name}">
													<img class="heroHoverLarge" style="display: none;" src="/img/${hero.name}/${hero.name}_hphover.png">
													<img class="heroHoverSmall" src="/img/${hero.name}/${hero.name}_sb.png">
												</a>
											</c:forEach>											
										</div>
										<br clear="left">
									</div>
									
									<div class="heroColRight">
										<div id="columnHeader"><span id="columnHeaderTextInt">Intelligence</span></div>
										<div class="heroIcons">
											<c:forEach var="hero" items="${heroInt}">
												<a class="heroPickerIconLink filterMatchedHero" href="/hero/name/${hero.name}">
													<img class="heroHoverLarge" style="display:none;" src="/img/${hero.name}/${hero.name}_hphover.png">
													<img class="heroHoverSmall" src="/img/${hero.name}/${hero.name}_sb.png">
												</a>
											</c:forEach>
										</div>
										<br clear="left">
									</div>
									
									<br clear="left">
								</div>
							<div class="redboxBottom"></div>
						</div>
					</div>
				</div>
				<a target="_blank" href="/compare/pdf/sum"><img src="/img/common/tpscroll_lg.png"></a>
				<a target="_blank" href="/export/pdf/all"><img src="/img/common/necronomicon_lg.png"></a>
				<a target="_blank" href="/export/xls/sheet"><img src="/img/common/tome_of_knowledge_lg.png"></a>
			</div>
			
			<div id="centerColBottom"><img src="/img/common/centercolbox_bottom.png" width="984" height="9"></div>
			<div id="centerColBottomShadow"><img src="/img/common/centercolbox_bottom_shadow.png" width="984" height="25"></div>
		</div>
	</div>
</center>


</body></html>