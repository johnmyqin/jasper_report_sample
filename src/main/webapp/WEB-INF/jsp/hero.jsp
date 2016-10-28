<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="shortcut icon" href="http://www.dota2.com/favicon.ico">
		<meta http-equiv="X-UA-Compatible" content="IE=9">
		<link href="/css/global.css" rel="stylesheet" type="text/css">
		<link href="/css/heropedia.css" rel="stylesheet" type="text/css">
		<title>Hero - ${heroInfo.name}</title>
	</head>

<body>
<center>
    <a href="/">
		<img src="/img/common/logo.png" width="167" height="33" border="0">
    </a>

	<div id="bodyContainer">
		<div id="centerColOuter_NoCallout">
			<div>
				<div id="centerColContent">

					<h1>${heroInfo.name}</h1>
					<a target="_blank" href="/export/pdf/${heroInfo.name}"><img src="/img/common/tpscroll_lg.png"></a>
					<div id="heroTopPortraitContainer">
						<img id="heroTopPortraitIMG" src="/img/${heroName}/${heroName}_full.png" width="256" height="144"></div>
					<p id="heroBioRoles"><span class="bioTextAttack">${heroInfo.atk_type}</span> - ${heroInfo.role}</p>
					<div class="centerColHR"></div>
					
					<h3>Overview</h3>
					<div class="redboxOuter">
						<div class="redboxContent">
							<div class="redboxTop"></div>
								<div id="overviewInner">
									<div id="overviewHeroLeft">
										<div id="heroPrimaryPortraitHolder">
											<img id="heroPrimaryPortraitImg" src="/img/${heroName}/${heroName}_vert.jpg" width="235" height="272">
											<img id="heroPrimaryPortraitOverlay" src="/img/common/heroprimaryportrait_overlay.png" width="243" height="280" border="0">
										</div>
										<div id="overviewPrimaryStats">
											<img style="top:83px" id="overviewIcon_Primary" src="/img/common/overviewicon_primary.png" width="40" height="40">
											<img title="Intelligence" id="overviewIcon_Int" src="/img/common/overviewicon_int.png" width="33" height="33">
											<div class="overview_StatVal" id="overview_IntVal">${heroInfo.intelligence}</div>
											<img title="Agility" id="overviewIcon_Agi" src="/img/common/overviewicon_agi.png" width="33" height="33">
											<div class="overview_StatVal" id="overview_AgiVal">${heroInfo.agility}</div>
											<img title="Strength" id="overviewIcon_Str" src="/img/common/overviewicon_str.png" width="33" height="33">
											<div class="overview_StatVal" id="overview_StrVal">${heroInfo.strength}</div>
											<img title="Damage" id="overviewIcon_Attack" src="/img/common/overviewicon_attack.png" width="46" height="35">
											<div class="overview_StatVal" id="overview_AttackVal">${heroInfo.damage}</div>
											<img title="Movespeed" id="overviewIcon_Speed" src="/img/common/overviewicon_speed.png" width="63" height="39">
											<div class="overview_StatVal" id="overview_SpeedVal">${heroInfo.speed}</div>
											<img title="Armor" id="overviewIcon_Defense" src="/img/common/overviewicon_defense.png" width="39" height="37">
											<div class="overview_StatVal" id="overview_DefenseVal">${heroInfo.armor}</div>
										</div>
									</div>
									<div id="overviewHeroAbilities">
										<c:forEach var="skill" items="${skills}">
											<div class="overviewAbilityRow">
												<div class="abilityIconHolder">
													<img abilityname="${heroName}_${skill.name}" class="overviewAbilityImg abilityIconWithTooltip" 
													src="/img/${heroName}/${heroName}_${skill.name}_hp1.png" width="90" height="90"></div>
												<div class="overviewAbilityRowDescription">
													<h2>${skill.full_name}</h2>
													<p>${skill.description}</p>
												</div>
												<br clear="left">
											</div>
										</c:forEach>
									</div>
									<br clear="left">
								</div>
							<div class="redboxBottom"></div>
						</div>
					</div>

					<h3>Bio</h3>
					<div class="redboxOuter">
						<div class="redboxContent">
							<div class="redboxTop"></div>
								<div id="bioInner">${heroInfo.bio}<br clear="both"></div>
							<div class="redboxBottom"></div>
						</div>
					</div>

					<h3>Stats</h3>
					<div class="redboxOuter">
						<div class="redboxContent">
							<div class="redboxTop"></div>
								<div id="statsInner">
									<div id="statsLeft">
										<div class="statRow">
                                            <div class="statRowCol">1</div>
                                            Level                                        </div>
										<div class="statRowB">
                                            <div class="statRowColW">${heroInfo.health}</div>
                                            Hit Points                                        </div>
										<div class="statRow">
                                            <div class="statRowColW">${heroInfo.mana}</div>
                                            Mana                                        </div>
										<div class="statRowB">
                                            <div class="statRowColW">${heroInfo.damage}</div>
                                            Damage                                        </div>
										<div class="statRow">
                                            <div class="statRowColW">${heroInfo.armor}</div>
                                            Armor                                        </div>
									</div>
									<div id="statsRight">
										<div class="statRow">&nbsp;</div>
										<div class="statRowB">
                                            <div class="statRowCol2W">${heroInfo.sight_range}</div>
                                            Sight Range                                        </div>
										<div class="statRow">
                                            <div class="statRowCol2W">${heroInfo.atk_range}</div>
                                            Attack Range                                        </div>
									</div>
									<br clear="both">
								</div>
							<div class="redboxBottom"></div>
						</div>
					</div>

					<h3>Abilities</h3>
					<div class="redboxOuter">
						<div class="redboxContent">
							<div class="redboxTop"></div>
								<div id="abilitiesInner">
									<c:forEach var="skill" items="${skills}">
									 	<div class="abilitiesInsetBoxTop"></div>
								  		<div class="abilitiesInsetBoxInner">
									  		<div class="abilitiesInsetBoxContent">
												<div class="abilityHeaderBox">
													<div class="abilityIconHolder2">
													<img abilityname="${heroName}_${skill.name}" class="overviewAbilityImg" 
													src="/img/${heroName}/${heroName}_${skill.name}_hp2.png" width="105" height="105"></div>
													<div class="abilityHeaderRowDescription">
														<h2>${skill.full_name}</h2>
														<p>${skill.description}</p>
													</div>
													<div class="abilityHeaderRowDescriptionRight">
														<div class="cooldownMana">
															<div class="mana">
																<img alt="Mana Cost" title="Mana Cost" class="manaImg" src="/img/common/mana.png" width="16" height="16" border="0"> 
																<span class="manaCoolKey">Mana Cost:</span> ${skill.mana}
															</div>
														<div class="cooldown">
															<img alt="Cooldown" title="Cooldown" class="cooldownImg" src="/img/common/cooldown.png" width="16" height="16" border="0"> 
														<span class="manaCoolKey">Cooldown:</span> ${skill.cooldown}</div><br clear="left"></div>												
														</div>
													<br clear="left">
												</div>
												<div class="abilityFooterBox">
													<div class="abilityFooterBoxLeft">
														ABILITY: <span class="attribVal">${skill.ability}</span>
														<br>AFFECTS: <span class="attribVal">${skill.affects}</span>
														<br>DAMAGE TYPE: <span class="attribVal">${skill.damage_type}</span>
														<br>PIERCES SPELL IMMUNITY: <span class="attribVal">${skill.spell_immunity}</span><br>												
													</div>
													<div class="abilityFooterBoxRight">DAMAGE: <span class="attribVal">${skill.damage}</span>
													<br>BONUS: <span class="attribVal">${skill.bonus}</span>
													<br>RANGE: <span class="attribVal">${skill.range}</span>
													<br>DURATION: <span class="attribVal">${skill.duration}</span>
													<br>STUN DURATION: <span class="attribVal">${skill.stun_duration}</span>
													<br><span class="scepterVal">SCEPTER BONUS:</span> <span class="attribVal">${skill.scepter_bonus}</span>
													</div>
													<br clear="left">
												</div>
											</div>
											<div class="abilitiesInsetBoxBottom"></div>
								  		</div>  
									</c:forEach>
								</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</center>
</body>
</html>