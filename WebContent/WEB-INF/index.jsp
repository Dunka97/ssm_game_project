<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html> 
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>欢迎来到Steam</title>
  <link rel="stylesheet" href="static/css/index.css"> 
  <script src="static/js/jquery.min.js" type="text/javascript"></script>  
</head>

<body class="v6 infinite_scrolling responsive_page">
<div class="responsive_page_content">
  <div id="global_header">
      <div class="content">
        <div class="logo">
            <span id="logo_holder">
                <a href="#">
                  <img src="static/image/globalheader_logo.png?t=962016" width="176" height="44">
                </a>
            </span> 
          </div><!--logo end-->
          <div class="supernav_container">
            <a class="menuitem supernav" href="#">商店</a>
            <a class="menuitem supernav" href="#">社区</a>
            <a class="menuitem" href="#">关于 </a>
            <a class="menuitem" href="#">客服</a>
          </div><!--menu end-->
          <div id="global_actions">
              <div id="global_action_menu">   
                <a class="global_action_link" href="#">登录</a>  
              </div>
          </div><!--login end-->
      </div><!--content end-->
  </div><!--global_header end-->

  <div class="responsive_page_template_content">
     <div class="home_page_body_ctn has_takeover">
        <div class="page_background_holder"></div>
        <div id="store_nav_area">
           <div class="store_nav">
             <div class="tab  flyout_tab" id="foryou_tab">
                <span class="pulldown">
                  <a class="pulldown_desktop" href="#">您的商店</a>
                  <span></span>
                </span>
              </div>
              <div class="popup_block_new flyout_tab_flyout responsive_slidedown" id="foryou_flyout" style="visibility: visible; top:35px; left: 0px; display:none; opacity: 1;">
                <div class="popup_body popup_menu">
                  <a class="popup_menu_item" href="#">商店主页</a>
                  <div class="hr"></div>
                  <a class="popup_menu_item" href="#">最近查看过的</a>
                  <a class="popup_menu_item" href="#">Steam 鉴赏家</a>
                  <a class="popup_menu_item" href="#">最近更新</a>
                </div>
              </div>
              <div class="tab  flyout_tab" id="genre_tab">
                  <span class="pulldown">
                    <a class="pulldown_desktop" href="#">游戏</a> 
                    <span></span>
                  </span>
                </div>
                <div class="popup_block_new flyout_tab_flyout responsive_slidedown" id="foryou_flyout2" style="visibility: visible; top:35px; left:110px; display:none; opacity: 1;">
                <div class="popup_body popup_menu">
                  <a class="popup_menu_item" href="#">商店主页</a>
                  <div class="hr"></div>
                  <a class="popup_menu_item" href="#">最近查看过的</a>
                  <a class="popup_menu_item" href="#">Steam 鉴赏家</a>
                  <a class="popup_menu_item" href="#">最近更新</a>
                </div>
              </div>
                <div class="tab  flyout_tab" id="software_tab">
                  <span class="pulldown">
                      <a class="pulldown_desktop" href="#">软件</a> 
                      <span></span>
                  </span> 
              </div>
              <div class="popup_block_new flyout_tab_flyout responsive_slidedown" id="foryou_flyout3" style="visibility: visible; top:35px; left:200px; display:none; opacity: 1;">
                <div class="popup_body popup_menu">
                  <a class="popup_menu_item" href="#">商店主页</a>
                  <div class="hr"></div>
                  <a class="popup_menu_item" href="#">最近查看过的</a>
                  <a class="popup_menu_item" href="#">Steam 鉴赏家</a>
                  <a class="popup_menu_item" href="#">最近更新</a>
                </div>
              </div>
              <div class="tab  flyout_tab" id="hardware_tab">
                <span class="pulldown">
                  <a class="pulldown_desktop" href="#">硬件</a> 
                  <span></span>
                </span> 
              </div>
              <div class="popup_block_new flyout_tab_flyout responsive_slidedown" id="foryou_flyout4" style="visibility: visible; top:35px; left:290px; display:none; opacity: 1;">
                <div class="popup_body popup_menu">
                  <a class="popup_menu_item" href="#">商店主页</a>
                  <div class="hr"></div>
                  <a class="popup_menu_item" href="#">最近查看过的</a>
                  <a class="popup_menu_item" href="#">Steam 鉴赏家</a>
                  <a class="popup_menu_item" href="#">最近更新</a>
                </div>
              </div>
              <div class="tab  flyout_tab" id="videos_tab">
                <span class="pulldown">
                  <a class="pulldown_desktop" href="#">视频</a> 
                  <span></span>
                </span> 
              </div>
              <div class="popup_block_new flyout_tab_flyout responsive_slidedown" id="foryou_flyout5" style="visibility: visible; top:35px; left:380px; display:none; opacity: 1;">
                <div class="popup_body popup_menu">
                  <a class="popup_menu_item" href="#">商店主页</a>
                  <div class="hr"></div>
                  <a class="popup_menu_item" href="#">最近查看过的</a>
                  <a class="popup_menu_item" href="#">Steam 鉴赏家</a>
                  <a class="popup_menu_item" href="#">最近更新</a>
                </div>
              </div>
              <a class="tab  " href="#">
                <span>新闻</span>
              </a>
           </div><!--menu end-->
           <div class="searchbox">
             <form id="searchform" >
                <input id="store_nav_search_term" name="term" type="text" class="default" placeholder="搜索商店" size="22" autocomplete="off">
                <a href="#" id="store_search_link" >
                	<img src="static/image/blank.gif">
                </a>
              </from>
           </div><!--search box end-->
        </div><!--store_nav_area end-->
     </div>
  </div><!--responsive_page_template_content end-->

  <div class="main">
     <div class="main-left-list">
        <div class="gutter_header">
            <a href="#">
              <img class="home_page_gutter_giftcard" src="static/image/steamcards_promo_02.png">
            </a>
            <br>
            礼物卡         
        </div><!--end-->
        <div class="gutter_items">
            <a class="gutter_giftcard gutter_item" href="#">现已在 steam 上推出</a>
        </div>
        <div class="gutter_header">推荐</div>
        <div class="gutter_items">
            <a class="gutter_item" href="#"><span class="icon friends"></span> 由好友推荐</a>
            <a class="gutter_item" href="#"><span class="icon curators"></span> 由鉴赏家推荐</a>
            <a class="gutter_item" href="#"><span class="icon tags"></span> 标签</a>
        </div>
        <div class="gutter_header pad">探索队列</div>
        <div class="gutter_items">
            <a class="gutter_item" href="#"><span class="icon queue"></span> 推荐</a>
            <a class="gutter_item" href="#"><span class="icon queue_new"></span> 新品</a>
        </div>
        <div class="gutter_header pad">浏览分类</div>
        <div class="gutter_items">
            <a class="gutter_item" href="#"><span class="icon top_sellers"></span> 热销商品</a>
            <a class="gutter_item" href="#"><span class="icon updated"></span> 最近更新</a>
            <a class="gutter_item" href="#"><span class="icon recent"></span> 新品</a>
            <a class="gutter_item" href="#"><span class="icon upcoming"></span> 即将推出</a>
            <a class="gutter_item" href="#"><span class="icon discounts"></span> 优惠</a>
            <a class="gutter_item" href="#"><span class="icon vr"></span> 虚拟现实</a>
            <a class="gutter_item" href="#"><span class="icon controller"></span> 支持 Steam 控制器</a>
          </div>

     </div><!--left end-->
     <div class="main-right-banner">
        <h3 class="banner_tt">
          精选和推荐 
        </h3>
        <div class="example">
              <div class="ft-carousel" id="carousel_1">
                    <div class="ft-over">
                        <ul class="carousel-inner">
                          <li class="carousel-item">
                            <div class="big">
                                <a href="#"><img src="static/image/battlegrounds_616x353.jpg" /></a>
                            </div>
                            <div class="small">
                                <h3>BATTLEGROUNDS</h3>
                                <a href="#"><img src="static/image/battlegrounds01_616x353.jpg" /></a>
                                <a href="#"><img src="static/image/battlegrounds02_616x353.jpg" /></a>
                                <a href="#"><img src="static/image/battlegrounds03_616x353.jpg" /></a>
                                <a href="#"><img src="static/image/battlegrounds04_616x353.jpg" /></a>
                                <div class="discount_block_left  no_discount discount_block_inline">  
                                    <div class="discount_final_price">¥ 98</div> 
                                </div>
                                <div class="platforms">
                                  <span class="platform_img win"></span>
                                  <span class="platform_img mac"></span>
                                  <span class="platform_img linux"></span>
                                </div>
                            </div> 
                          </li>
                          <li class="carousel-item">
                            <div class="big">
                                <img src="static/image/shadowofthtombraider_616x353.jpg" />
                            </div>
                            <div class="small">
                                <h3>FIFA 2K19</h3>
                                <img src="static/image/shadowofthtombraider01_616x353.jpg" />
                                <img src="static/image/shadowofthtombraider02_616x353.jpg" />
                                <img src="static/image/shadowofthtombraider03_616x353.jpg" />
                                <img src="static/image/shadowofthtombraider04_616x353.jpg" />
                                <div class="discount_block_left  no_discount discount_block_inline">  
                                    <div class="discount_final_price">¥ 98</div> 
                                </div>
                                <div class="platforms">
                                  <span class="platform_img win"></span>
                                  <span class="platform_img mac"></span>
                                  <span class="platform_img linux"></span>
                                </div>
                            </div> 
                          </li> 
                        </ul>
                    </div>
              </div>
         </div><!--banner end-->
        <h3 class="banner_tt">
          特别优惠
          <span class="right">
            <a class="btnv6_white_transparent btn_small btn_uppercase" href="#">
                <span>浏览所有</span>
            </a>
          </span>
        </h3>
        <div class="example">
              <div class="ft-carousel" id="carousel_2">
                    <div class="ft-over ft-over2">
                        <ul class="carousel-inner">
                          <li class="carousel-item"> 
                             <a class="store_capsule broadcast_capsule app_impression_tracked"   href="#">
                                  <div class="capsule headerv5">
                                    <img src="static/image/21.jpg">
                                  </div>
                                  <div>
                                    <div class="discount_block  no_discount discount_block_inline"> 
                                      <div class="discount_prices">
                                        <div class="discount_final_price">¥ 78</div>
                                      </div>
                                    </div>
                                  </div>
                              </a> 
                              <a class="store_capsule broadcast_capsule app_impression_tracked"   href="#">
                                  <div class="capsule headerv5">
                                    <img src="static/image/22.jpg">
                                  </div>
                                  <div>
                                    <div class="discount_block  no_discount discount_block_inline"> 
                                      <div class="discount_prices">
                                        <div class="discount_final_price">¥ 7</div>
                                      </div>
                                    </div>
                                  </div>
                              </a> 
                              <a class="store_capsule broadcast_capsule app_impression_tracked"   href="#">
                                  <div class="capsule headerv5">
                                    <img src="static/image/23.jpg">
                                  </div>
                                  <div>
                                    <div class="discount_block  no_discount discount_block_inline"> 
                                      <div class="discount_prices">
                                        <div class="discount_final_price">¥ 178</div>
                                      </div>
                                    </div>
                                  </div>
                              </a> 
                              <a class="store_capsule broadcast_capsule app_impression_tracked"   href="#">
                                  <div class="capsule headerv5">
                                    <img src="static/image/25.jpg">
                                  </div>
                                  <div>
                                    <div class="discount_block  no_discount discount_block_inline"> 
                                      <div class="discount_prices">
                                        <div class="discount_final_price">¥ 58</div>
                                      </div>
                                    </div>
                                  </div>
                              </a> 
                          </li>
                          <li class="carousel-item"> 
                              <a class="store_capsule broadcast_capsule app_impression_tracked"   href="#">
                                  <div class="capsule headerv5">
                                    <img src="static/image/21.jpg">
                                  </div>
                                  <div>
                                    <div class="discount_block  no_discount discount_block_inline"> 
                                      <div class="discount_prices">
                                        <div class="discount_final_price">¥ 78</div>
                                      </div>
                                    </div>
                                  </div>
                              </a> 
                              <a class="store_capsule broadcast_capsule app_impression_tracked"   href="#">
                                  <div class="capsule headerv5">
                                    <img src="static/image/22.jpg">
                                  </div>
                                  <div>
                                    <div class="discount_block  no_discount discount_block_inline"> 
                                      <div class="discount_prices">
                                        <div class="discount_final_price">¥ 7</div>
                                      </div>
                                    </div>
                                  </div>
                              </a> 
                              <a class="store_capsule broadcast_capsule app_impression_tracked"   href="#">
                                  <div class="capsule headerv5">
                                    <img src="static/image/23.jpg">
                                  </div>
                                  <div>
                                    <div class="discount_block  no_discount discount_block_inline"> 
                                      <div class="discount_prices">
                                        <div class="discount_final_price">¥ 178</div>
                                      </div>
                                    </div>
                                  </div>
                              </a> 
                              <a class="store_capsule broadcast_capsule app_impression_tracked"   href="#">
                                  <div class="capsule headerv5">
                                    <img src="static/image/25.jpg">
                                  </div>
                                  <div>
                                    <div class="discount_block  no_discount discount_block_inline"> 
                                      <div class="discount_prices">
                                        <div class="discount_final_price">¥ 58</div>
                                      </div>
                                    </div>
                                  </div>
                              </a> 
                          </li>
                          <li class="carousel-item"> 
                              <a class="store_capsule broadcast_capsule app_impression_tracked"   href="#">
                                  <div class="capsule headerv5">
                                    <img src="static/image/21.jpg">
                                  </div>
                                  <div>
                                    <div class="discount_block  no_discount discount_block_inline"> 
                                      <div class="discount_prices">
                                        <div class="discount_final_price">¥ 78</div>
                                      </div>
                                    </div>
                                  </div>
                              </a> 
                              <a class="store_capsule broadcast_capsule app_impression_tracked"   href="#">
                                  <div class="capsule headerv5">
                                    <img src="static/image/27.jpg">
                                  </div>
                                  <div>
                                    <div class="discount_block  no_discount discount_block_inline"> 
                                      <div class="discount_prices">
                                        <div class="discount_final_price">¥ 7</div>
                                      </div>
                                    </div>
                                  </div>
                              </a> 
                              <a class="store_capsule broadcast_capsule app_impression_tracked"   href="#">
                                  <div class="capsule headerv5">
                                    <img src="static/image/26.jpg">
                                  </div>
                                  <div>
                                    <div class="discount_block  no_discount discount_block_inline"> 
                                      <div class="discount_prices">
                                        <div class="discount_final_price">¥ 178</div>
                                      </div>
                                    </div>
                                  </div>
                              </a> 
                              <a class="store_capsule broadcast_capsule app_impression_tracked"   href="#">
                                  <div class="capsule headerv5">
                                    <img src="static/image/24.jpg">
                                  </div>
                                  <div>
                                    <div class="discount_block  no_discount discount_block_inline"> 
                                      <div class="discount_prices">
                                        <div class="discount_final_price">¥ 58</div>
                                      </div>
                                    </div>
                                  </div>
                              </a> 
                          </li> 
                        </ul>
                    </div>
              </div>
         </div><!--banner end-->
         <h3 class="banner_tt">浏览 STEAM</h3>
         <div class="button_container">
            <div class="btn_wrapper">
              <a href="#" class="big_button">
                新品          </a>
            </div>
            <div class="btn_wrapper">
              <a href="#" class="big_button">
                特价          </a>
            </div>
            <div class="btn_wrapper">
              <a href="#" class="big_button">
                免费游戏          </a>
            </div>
            <div class="btn_wrapper">
              <a href="#" class="big_button">
                即将推出         </a>
            </div>
          </div><!--标签 end-->
          <div style="height:20px;clear:both;width:1px;"></div>
				<div class="list-box show">
					<div id="top_item_list">
					
						<a href="#" class="tab_item   app_impression_tracked">
							<!-- 封面图 -->
							<div class="tab_item_cap">
								<img class="tab_item_cap_img" src="static/image/capsule_184x69 (1).jpg">
							</div>
							<!-- 价格相关 -->
							<div class="discount_block tab_item_discount no_discount">
								<div class="discount_prices">
									<div class="discount_final_price">免费开玩</div>
								</div>
							</div>
							<div class="tab_item_content">
								<!-- 游戏名称 -->
								<div class="tab_item_name">Wizard101</div>
								<!-- 平台和标签 -->
								<div class="tab_item_details">
									<!-- 平台 -->
									<span class="platform_img win"></span>
									<!-- 标签 -->
									<div class="tab_item_top_tags">
										<span class="top_tag">大型多人在线</span>
										<span class="top_tag"> 角色扮演</span> 
										<span class="top_tag"> 免费</span> 
										<span class="top_tag"> 魔法</span>
									</div>
								</div>
							</div>
							<div style="clear: both;"></div>
						</a> 
						
						<a href="#" class="tab_item   app_impression_tracked">
							<!-- 封面图 -->
							<div class="tab_item_cap">
								<img class="tab_item_cap_img" src="static/image/capsule_184x69 (1).jpg">
							</div>
							<!-- 价格相关 优惠-->
							<div class="discount_block tab_item_discount">
								<div class="discount_pct">- 25%</div>
								<div class="discount_prices">
									<div class="discount_original_price">¥ 224.0</div>
									<div class="discount_final_price">¥ 56.0</div>
								</div>
							</div>

							<div class="tab_item_content">
								<!-- 游戏名称 -->
								<div class="tab_item_name">Wizard101</div>
								<!-- 平台和标签 -->
								<div class="tab_item_details">
									<!-- 平台 -->
									<span class="platform_img win"></span>
									<span class="platform_img mac"></span>
									<!-- 标签 -->
									<div class="tab_item_top_tags">
										<span class="top_tag">大型多人在线</span>
										<span class="top_tag"> 角色扮演</span> 
										<span class="top_tag"> 免费</span> 
										<span class="top_tag"> 魔法</span>
									</div>
								</div>
							</div>
							<div style="clear: both;"></div>
						</a> 
						
						<a href="#" class="tab_item   app_impression_tracked">
							<!-- 封面图 -->
							<div class="tab_item_cap">
								<img class="tab_item_cap_img" src="static/image/capsule_184x69 (1).jpg">
							</div>
							<!-- 价格相关 -->
							<div class="discount_block tab_item_discount no_discount">
								<div class="discount_prices">
									<div class="discount_final_price">免费开玩</div>
								</div>
							</div>
							<div class="tab_item_content">
								<!-- 游戏名称 -->
								<div class="tab_item_name">Wizard101</div>
								<!-- 平台和标签 -->
								<div class="tab_item_details">
									<!-- 平台 -->
									<span class="platform_img win"></span>
									<!-- 标签 -->
									<div class="tab_item_top_tags">
										<span class="top_tag">大型多人在线</span>
										<span class="top_tag"> 角色扮演</span> 
										<span class="top_tag"> 免费</span> 
										<span class="top_tag"> 魔法</span>
									</div>
								</div>
							</div>
							<div style="clear: both;"></div>
						</a> 						
						
						<a href="#" class="tab_item   app_impression_tracked">
							<!-- 封面图 -->
							<div class="tab_item_cap">
								<img class="tab_item_cap_img" src="static/image/capsule_184x69 (1).jpg">
							</div>
							<!-- 价格相关 -->
							<div class="discount_block tab_item_discount no_discount">
								<div class="discount_prices">
									<div class="discount_final_price">免费开玩</div>
								</div>
							</div>
							<div class="tab_item_content">
								<!-- 游戏名称 -->
								<div class="tab_item_name">Wizard101</div>
								<!-- 平台和标签 -->
								<div class="tab_item_details">
									<!-- 平台 -->
									<span class="platform_img win"></span>
									<!-- 标签 -->
									<div class="tab_item_top_tags">
										<span class="top_tag">大型多人在线</span>
										<span class="top_tag"> 角色扮演</span> 
										<span class="top_tag"> 免费</span> 
										<span class="top_tag"> 魔法</span>
									</div>
								</div>
							</div>
							<div style="clear: both;"></div>
						</a> 

						<a href="#" class="tab_item   app_impression_tracked">
							<!-- 封面图 -->
							<div class="tab_item_cap">
								<img class="tab_item_cap_img" src="static/image/capsule_184x69 (1).jpg">
							</div>
							<!-- 价格相关 -->
							<div class="discount_block tab_item_discount no_discount">
								<div class="discount_prices">
									<div class="discount_final_price">免费开玩</div>
								</div>
							</div>
							<div class="tab_item_content">
								<!-- 游戏名称 -->
								<div class="tab_item_name">Wizard101</div>
								<!-- 平台和标签 -->
								<div class="tab_item_details">
									<!-- 平台 -->
									<span class="platform_img win"></span>
									<!-- 标签 -->
									<div class="tab_item_top_tags">
										<span class="top_tag">大型多人在线</span>
										<span class="top_tag"> 角色扮演</span> 
										<span class="top_tag"> 免费</span> 
										<span class="top_tag"> 魔法</span>
									</div>
								</div>
							</div>
							<div style="clear: both;"></div>
						</a> 

						<a href="#" class="tab_item   app_impression_tracked">
							<!-- 封面图 -->
							<div class="tab_item_cap">
								<img class="tab_item_cap_img" src="static/image/capsule_184x69 (1).jpg">
							</div>
							<!-- 价格相关 -->
							<div class="discount_block tab_item_discount no_discount">
								<div class="discount_prices">
									<div class="discount_final_price">免费开玩</div>
								</div>
							</div>
							<div class="tab_item_content">
								<!-- 游戏名称 -->
								<div class="tab_item_name">Wizard101</div>
								<!-- 平台和标签 -->
								<div class="tab_item_details">
									<!-- 平台 -->
									<span class="platform_img win"></span>
									<!-- 标签 -->
									<div class="tab_item_top_tags">
										<span class="top_tag">大型多人在线</span>
										<span class="top_tag"> 角色扮演</span> 
										<span class="top_tag"> 免费</span> 
										<span class="top_tag"> 魔法</span>
									</div>
								</div>
							</div>
							<div style="clear: both;"></div>
						</a> 					

					</div>
				</div>
				<!--box1 end-->
           
           <h3 class="banner_tt">
              更新与优惠
            </h3>
           <div class="marketingmessage_container">
              <a class="home_marketing_message" href="#">
                <span style="background-image: url(&quot;static/image/1.jpg&quot;);"></span>
                <div class="discount_block discount_block_inline">
                  <div class="discount_final_price">单击查看详细信息</div>
                </div>
              </a>
              <a data-ds-appid="750920" href="#" class="home_marketing_message">
                <span style="background-image: url(&quot;static/image/2.jpg&quot;);"></span>
                <div>
                  <div class="discount_block  no_discount discount_block_inline"> 
                    <div class="discount_prices">
                      <div class="discount_final_price">¥ 379</div>
                    </div>
                  </div>
                </div>
              </a>
              <a data-ds-appid="730" href="#" class="home_marketing_message small">
                <span style="background-image: url(&quot;static/image/3.jpg&quot;);"></span>
                <div>
                  <div class="discount_block  no_discount discount_block_inline"> 
                    <div class="discount_prices"><div class="discount_final_price">免费</div>
                  </div>
                </div>
              </div>
            </a>
            <a data-ds-appid="414340" href="#" class="home_marketing_message small">
              <span style="background-image: url(&quot;static/image/4.jpg&quot;);"></span>
              <div>
                <div class="discount_block  discount_block_inline"> 
                  <div class="discount_pct">-50%</div>
                <div class="discount_prices">
                  <div class="discount_original_price">¥ 88</div>
                  <div class="discount_final_price">¥ 44</div>
                </div>
              </div>
            </div>
          </a>
        </div><!--end-->
        <div style="clear: both;height: 0;"></div>
        <div class="list-box list-box-sild show" id="index_list_game">
               <div id="NewReleasesTable">
                  <a href="#" class="tab_item   app_impression_tracked cur" >
                            <div class="tab_item_cap">
                              <img class="tab_item_cap_img" src="static/image/capsule_184x69 (1).jpg">
                            </div>
                            <div class="discount_block tab_item_discount no_discount"> 
                              <div class="discount_prices">
                                <div class="discount_final_price">免费开玩</div>
                              </div>
                            </div>    
                            <div class="tab_item_content">
                              <div class="tab_item_name">Wizard101</div>
                              <div class="tab_item_details">
                                <span class="platform_img win"></span>        
                                <div class="tab_item_top_tags">
                                  <span class="top_tag">大型多人在线</span>
                                  <span class="top_tag">, 角色扮演</span>
                                  <span class="top_tag">, 免费</span>
                                  <span class="top_tag">, 魔法</span>
                                </div>
                              </div>
                            </div>
                            <div style="clear: both;"></div>
                      </a>
                      <a href="#" class="tab_item   app_impression_tracked" >
                            <div class="tab_item_cap">
                              <img class="tab_item_cap_img" src="static/image/capsule_184x69 (2).jpg">
                            </div>
                            <div class="discount_block tab_item_discount no_discount"> 
                              <div class="discount_prices">
                                <div class="discount_final_price">免费开玩</div>
                              </div>
                            </div>    
                            <div class="tab_item_content">
                              <div class="tab_item_name">Wizard101</div>
                              <div class="tab_item_details">
                                <span class="platform_img win"></span>        
                                <div class="tab_item_top_tags">
                                  <span class="top_tag">大型多人在线</span>
                                  <span class="top_tag">, 角色扮演</span>
                                  <span class="top_tag">, 免费</span>
                                  <span class="top_tag">, 魔法</span>
                                </div>
                              </div>
                            </div>
                            <div style="clear: both;"></div>
                      </a>
                      <a href="#" class="tab_item   app_impression_tracked" >
                            <div class="tab_item_cap">
                              <img class="tab_item_cap_img" src="static/image/capsule_184x69 (3).jpg">
                            </div>
                            <div class="discount_block tab_item_discount no_discount"> 
                              <div class="discount_prices">
                                <div class="discount_final_price">免费开玩</div>
                              </div>
                            </div>    
                            <div class="tab_item_content">
                              <div class="tab_item_name">Wizard101</div>
                              <div class="tab_item_details">
                                <span class="platform_img win"></span>        
                                <div class="tab_item_top_tags">
                                  <span class="top_tag">大型多人在线</span>
                                  <span class="top_tag">, 角色扮演</span>
                                  <span class="top_tag">, 免费</span>
                                  <span class="top_tag">, 魔法</span>
                                </div>
                              </div>
                            </div>
                            <div style="clear: both;"></div>
                      </a>
                      <a href="#" class="tab_item   app_impression_tracked" >
                            <div class="tab_item_cap">
                              <img class="tab_item_cap_img" src="static/image/capsule_184x69 (4).jpg">
                            </div>
                            <div class="discount_block tab_item_discount no_discount"> 
                              <div class="discount_prices">
                                <div class="discount_final_price">免费开玩</div>
                              </div>
                            </div>    
                            <div class="tab_item_content">
                              <div class="tab_item_name">Wizard101</div>
                              <div class="tab_item_details">
                                <span class="platform_img win"></span>        
                                <div class="tab_item_top_tags">
                                  <span class="top_tag">大型多人在线</span>
                                  <span class="top_tag">, 角色扮演</span>
                                  <span class="top_tag">, 免费</span>
                                  <span class="top_tag">, 魔法</span>
                                </div>
                              </div>
                            </div>
                            <div style="clear: both;"></div>
                      </a>
                      <a href="#" class="tab_item   app_impression_tracked" >
                            <div class="tab_item_cap">
                              <img class="tab_item_cap_img" src="static/image/capsule_184x69 (5).jpg">
                            </div>
                            <div class="discount_block tab_item_discount no_discount"> 
                              <div class="discount_prices">
                                <div class="discount_final_price">免费开玩</div>
                              </div>
                            </div>    
                            <div class="tab_item_content">
                              <div class="tab_item_name">Wizard101</div>
                              <div class="tab_item_details">
                                <span class="platform_img win"></span>        
                                <div class="tab_item_top_tags">
                                  <span class="top_tag">大型多人在线</span>
                                  <span class="top_tag">, 角色扮演</span>
                                  <span class="top_tag">, 免费</span>
                                  <span class="top_tag">, 魔法</span>
                                </div>
                              </div>
                            </div>
                            <div style="clear: both;"></div>
                      </a>
                      <a href="#" class="tab_item   app_impression_tracked" >
                            <div class="tab_item_cap">
                              <img class="tab_item_cap_img" src="static/image/capsule_184x69 (5).jpg">
                            </div>
                            <div class="discount_block tab_item_discount no_discount"> 
                              <div class="discount_prices">
                                <div class="discount_final_price">免费开玩</div>
                              </div>
                            </div>    
                            <div class="tab_item_content">
                              <div class="tab_item_name">Wizard101</div>
                              <div class="tab_item_details">
                                <span class="platform_img win"></span>        
                                <div class="tab_item_top_tags">
                                  <span class="top_tag">大型多人在线</span>
                                  <span class="top_tag">, 角色扮演</span>
                                  <span class="top_tag">, 免费</span>
                                  <span class="top_tag">, 魔法</span>
                                </div>
                              </div>
                            </div>
                            <div style="clear: both;"></div>
                      </a>
               </div>
               <div class="tab_sild_box show">
                    <h2>She is Mermaid</h2>
                    <div class="tab_review_summary">
                      <div class="title">总体用户评测：</div>
                      <span class="game_review_summary not_enough_reviews">2 篇用户评测</span>
                    </div>
                    <div class="tags">
                      <a href="#">角色扮演</a>
                      <a href="#">动作</a>
                      <a href="#">单人</a>
                      <a href="#">砍杀</a>
                      <a href="#">即时</a>
                    </div>
                    <div class="simg">
                      <a href="#">
                         <img src="static/image/a.jpg"/>
                      </a>
                      <a href="#">
                         <img src="static/image/a.jpg"/>
                      </a>
                    </div>
               </div> <!--s1 end-->
               <div class="tab_sild_box ">
                    <h2>She is 2222222</h2>
                    <div class="tab_review_summary">
                      <div class="title">总体用户评测：</div>
                      <span class="game_review_summary not_enough_reviews">2 篇用户评测</span>
                    </div>
                    <div class="tags">
                      <a href="#">角色扮演</a>
                      <a href="#">动作</a>
                      <a href="#">单人</a> 
                    </div>
                    <div class="simg">
                      <a href="#">
                         <img src="static/image/a.jpg"/>
                      </a>
                      <a href="#">
                         <img src="static/image/a.jpg"/>
                      </a>
                    </div>
               </div> <!--s2 end-->
               <div class="tab_sild_box ">
                    <h2>She is 333333333</h2>
                    <div class="tab_review_summary">
                      <div class="title">总体用户评测：</div>
                      <span class="game_review_summary not_enough_reviews">2 篇用户评测</span>
                    </div>
                    <div class="tags">
                      <a href="#">角色扮演</a>
                      <a href="#">动作</a>
                      <a href="#">单人</a>
                      <a href="#">砍杀</a>
                      <a href="#">即时</a>
                    </div>
                    <div class="simg">
                      <a href="#">
                         <img src="static/image/a.jpg"/>
                      </a>
                      <a href="#">
                         <img src="static/image/a.jpg"/>
                      </a>
                    </div>
               </div> <!--s3 end-->
               <div class="tab_sild_box ">
                    <h2>She is 4444</h2>
                    <div class="tab_review_summary">
                      <div class="title">总体用户评测：</div>
                      <span class="game_review_summary not_enough_reviews">2 篇用户评测</span>
                    </div>
                    <div class="tags">
                      <a href="#">角色扮演</a>
                      <a href="#">即时</a>
                    </div>
                    <div class="simg">
                      <a href="#">
                         <img src="static/image/a.jpg"/>
                      </a>
                      <a href="#">
                         <img src="static/image/a.jpg"/>
                      </a>
                    </div>
               </div> <!--s4 end-->
               <div class="tab_sild_box ">
                    <h2>She is 55555</h2>
                    <div class="tab_review_summary">
                      <div class="title">总体用户评测：</div>
                      <span class="game_review_summary not_enough_reviews">2 篇用户评测</span>
                    </div>
                    <div class="tags">
                      <a href="#">角色扮演</a> 
                    </div>
                    <div class="simg">
                      <a href="#">
                         <img src="static/image/a.jpg"/>
                      </a>
                      <a href="#">
                         <img src="static/image/a.jpg"/>
                      </a>
                    </div>
               </div> <!--s5 end-->
               <div class="tab_sild_box">
                    <h2>She is 564433</h2>
                    <div class="tab_review_summary">
                      <div class="title">总体用户评测：</div>
                      <span class="game_review_summary not_enough_reviews">2 篇用户评测</span>
                    </div>
                    <div class="tags">
                      <a href="#">角色扮演</a>
                      <a href="#">动作</a>
                      <a href="#">单人</a> 
                      <a href="#">即时</a>
                    </div>
                    <div class="simg">
                      <a href="#">
                         <img src="static/image/a.jpg"/>
                      </a>
                      <a href="#">
                         <img src="static/image/a.jpg"/>
                      </a>
                    </div>
               </div> <!--s6 end-->
            </div><!--box1 end-->

     </div>
  </div><!--main end-->

</div><!--responsive_page_content END-->
<div id="footer" class="">
    <div class="footer_content"> 
        <div class="rule"></div>
            <div id="footer_logo_steam"><img src="static/image/logo_steam_footer.png" alt="Valve Software" border="0"></div>
      
        <div id="footer_logo">
           <a href="#" target="_blank" rel="noreferrer">
               <img src="static/image/logo_valve_footer.png" alt="Valve Software" border="0">
           </a>
        </div>
        <div id="footer_text">
            <div>©2018 Valve Corporation。保留所有权利。所有商标均为其在美国及其它国家/地区的各自持有者所有。</div>
            <div>
                所有的价格均已包含增值税（如适用）。&nbsp;&nbsp; 
                <a href="#" target="_blank" rel="noreferrer">隐私政策</a>
                &nbsp; | &nbsp;
                <a href="#" target="_blank" rel="noreferrer">法律信息</a>
                &nbsp; | &nbsp;
                <a href="#" target="_blank" rel="noreferrer">Steam 订户协议</a>
                &nbsp; | &nbsp;
                <a href="#" target="_blank" rel="noreferrer">退款</a> 
            </div>  
        </div> 
        <div style="clear: left;"></div>
        <br> 
        <div class="rule"></div> 
        <div class="valve_links">
            <a href="#" target="_blank" rel="noreferrer">关于 Valve</a>
            &nbsp; | &nbsp;
            <a href="#" target="_blank" rel="noreferrer">Steamworks</a>
            &nbsp; | &nbsp;
            <a href="#" target="_blank" rel="noreferrer">工作</a>
            &nbsp; | &nbsp;
            <a href="#" target="_blank" rel="noreferrer">Steam 分销</a>
            &nbsp; | &nbsp;
            <a href="#" target="_blank" rel="noreferrer">礼物卡</a>
            &nbsp; | &nbsp;
            <a href="#" target="_blank" rel="noreferrer"><img src="static/image/ico_facebook.gif"> Steam</a>
            &nbsp; | &nbsp;
            <a href="#" target="_blank" rel="noreferrer"><img src="static/image/ico_twitter.gif"> @steam_games</a>
        </div> 
    </div>
</div>
</body>
<script src="static/js/ft-carousel.min.js" type="text/javascript"></script> 
<script src="static/js/index.js" type="text/javascript"></script>  
</html>