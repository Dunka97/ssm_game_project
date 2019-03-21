<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
		<meta charset="UTF-8">
		<title>游戏管理后台</title>
        <meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
  		 <!-- bootstrap framework -->
		<link href="${pageContext.request.contextPath }/admin/css/bootstrap.min.css" rel="stylesheet" media="screen">
		<!-- main stylesheet -->
		<link href="${pageContext.request.contextPath }/admin/css/main.min.css" rel="stylesheet" media="screen" id="mainCss">
		<!-- elegant icons -->
        <link href="${pageContext.request.contextPath }/admin/css/style.css" rel="stylesheet" media="screen">
        <!-- datepicker -->
        <link href="${pageContext.request.contextPath }/admin/css/datepicker3.css" rel="stylesheet" media="screen">
        <!-- jBox -->
        <link href="${pageContext.request.contextPath }/admin/css/jbox.css" rel="stylesheet" media="screen">
        <link href="${pageContext.request.contextPath }/admin/css/noticeborder.css" rel="stylesheet" media="screen">
        
       
    </head>
    <body class="side_menu_active side_menu_expanded">
        <div id="page_wrapper">

            <!-- header -->
            <header id="main_header">
                <div class="container-fluid">
                	<!--logo-->
                    <div class="brand_section">
                        <a href="#"><img src="${pageContext.request.contextPath }/admin/picture/logo01.png" alt="site_logo" width="108" height="40" style="margin-top: 5px"></a>
                    </div>
                    <div class="header_user_actions dropdown">
                        <div data-toggle="dropdown" class="dropdown-toggle user_dropdown">
                            <div class="user_avatar">
                                <img src="${pageContext.request.contextPath }/admin/picture/head01.png" width="38" height="38">
                            </div>
                            <span class="caret"></span>
                        </div>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="#">个人中心</a></li>
                            <li><a href="#">注销</a></li>
                        </ul>
                    </div>
                </div>
            </header>

            <!-- main content -->
            <div id="main_wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                        	<!-- 查询表单 -->
                        	<form id="search_form" action="${pageContext.request.contextPath }/admin/items" method="post">
	                        	<!--查询条件部分-->
	                            <div class="row">
	                            	<!--按名称查询-->
	                                <div class="col-md-2">
	                                    <input style="height:35px" id="search_item_name" type="text" class="form-control input-sm" placeholder="输入名称" name="item_name" value="">
	                                </div>
	                                
	                                <!-- 标签id -->
	                                 <input type="hidden" name="item_tagids" id="search_form_item_tagids" value=""/>
	                                <!-- 平台id -->
	                                 <input type="hidden" name="item_platform" id="search_form_item_platform" value=""/>
	                                <!-- 提交字段 -->
	                                <input type="hidden" name="sort_name" id="search_form_sort_name" value=""/>
	                                <!-- 提交规则 -->
	                                <input type="hidden" name="sort_rule" id="search_form_sort_rule" value="${itemInfoVo.sort_rule}"/>
	                                
	                                <!--按类型或者平台选择-->
	                                <div class="col-md-1">
	                                    <button style="width:120px" id="search_tagsAndPlatform_btn" type="button" data-toggle="modal" data-target="#tagsAndplatfromLayer"  class="btn btn-primary">选择标签或平台</button>
	                                </div>
	                                
	                                <div class="col-md-9">
	                                    <!--查询按钮 - 提交-->
	                                 	<button id="search_btn" type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp;
	                                 	<!-- 重置查询条件 并提交 -->
	                                 	<button id="reset_search_btn" type="button" onclick="resetSearch()" class="btn btn-primary">重置</button>
	                                </div>
	                            </div> 
                            </form><!-- 查询表单 end  -->
                            <!-- 查询结果显示 -->
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table table-yuk2 toggle-arrow-tiny" id="footable_demo" data-filter="#textFilter" data-page-size="10">
                                        <thead>
                                            <tr>
                                            	<!--描述：游戏数据标签-->
                                                <th onclick="sort('item_id')">id</th>
                                                <th>游戏名称</th>
                                                <th>类型</th>
                                                <th>平台</th>
                                                <!-- 调用排序方法，将自己的字段名传 -->
                                                <th onclick="sort('item_discount')">折扣</th>
                                                <th onclick="sort('item_original_price')">原价</th>
                                                <th>图片地址</th>
                                                <th onclick="sort('item_release_date')">发售日期</th>
                                                <th onclick="sort('is_hot')">是否热门</th>
                                                <th onclick="sort('is_hot_sale')">是否畅销</th>
                                                <th onclick="sort('is_free')">是否免费</th>
                                                <th onclick="sort('is_specials')">是否特价</th>
                                                <th onclick="sort('is_upcoming')">是否即将推出</th>
                                                <th onclick="sort('is_new')">是否新品</th>
                                                <th onclick="sort('is_enable')">状态</th>
                                            </tr>
                                        </thead>
                                    
                                        
                                        <c:forEach items="${itemList }" var="item">
                                         <tbody id="item_info_date">
	                                        	<tr>
	                                                <td>${item.item_id }</td>
	                                                <td>${item.item_name }</td>
													<td class="item_tag_name">${item.item_tagids }</td>
													<td class="item_platform_name">${item.item_platform }</td>
	                                                <td>${item.item_discount==0?'无折扣':item.item_discount }</td>
	                                                <td>${item.item_original_price }</td>
	                                                <td>${item.item_cap_image }</td>
	                                                <td>${item.item_release_date }</td>
	                                                <td>${item.is_hot==true?'热门':'否'}</td>
	                                                <td>${item.is_hot_sale==true?'热销':'否' }</td>
	                                                <td>${item.is_free==true?'免费':'否' }</td>
	                                                <td>${item.is_specials==true?'特价':'否' }</td>
	                                                <td>${item.is_upcoming==true?'即将退出':'否' }</td>
	                                                <td>${item.is_new==true?'新品':'否' }</td>
	                                                <td>${item.is_enable==true?'上架':'已下架' }</td>
	                                                <td>
	                                                	<a herf="#" id="edit_btn" class="btn btn-xs btn-info" data-toggle="modal" data-target="#editLayer" onclick="editItems(${item.item_id})">修改</a>
	                                                	<a herf="#" id="del_btn" class="btn btn-xs ${item.is_enable==true?'btn-warning':'btn-danger'}" onclick="deleteItems(${item.item_id}, ${item.is_enable})">${item.is_enable==true?'下架':'上架' }</a>
	                                                </td>
	                                           	</tr>
                                        </tbody>
                                        </c:forEach>
                 
                                        
                                        <tfoot class="hide-if-no-paging">
                                            <tr>
                                                <td colspan="5">
                                                    <ul class="pagination pagination-sm"></ul>
                                                </td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div><!-- 查询结果显示 end-->
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- add layer 游戏添加弹出层-->
            <div class="modal fade" id="addLayer">
                <div class="modal-dialog modal-content">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title">添加游戏</h4>
                        </div>
                   <div class="modal-body">
                        <!--描述：添加游戏弹出层表单-->
	                    <form class="form-horizontal" id="add_items_form" enctype="multipart/form-data">
	                    
	                    	<!-- item_id -->
							<div class="form-group">
								<label for="add_item_id" class="col-sm-2 control-label">id</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="add_item_id" placeholder="id" name="item_id">
								</div>
							</div>
							
							<!-- 名称 -->
							<div class="form-group">
								<label for="add_item_name" class="col-sm-2 control-label">游戏名称</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="add_item_name" placeholder="游戏名称" name="item_name">
								</div>
							</div>
							
							<!-- 标签 -->
							<div class="form-group">
								<label for="add_item_tagids" class="col-sm-2 control-label">标签</label>
								<div class="col-sm-10">
									<div>
										<input type="hidden" id="add_item_tagids"  name="item_tagids" value="">
										<c:forEach items="${tagidsList }" var="dict_tagids">
											<label><input type="checkbox" name="add_tagids" value="${dict_tagids.dict_id }">${dict_tagids.dict_item_name }</label>&nbsp;&nbsp;
										</c:forEach>
									</div>
								</div>
							</div>
							
							<!-- 平台 -->
							<div class="form-group">
								<label for="add_item_platform" class="col-sm-2 control-label">平台</label>
								<div class="col-sm-10">
									<div>
			                            <input type="hidden" id="add_item_platform"  name="item_platform" value="">
										<c:forEach items="${platformList}" var="dict_name" >
										<label><input type="checkbox" name="add_platform" value="${dict_name.dict_id}">${dict_name.dict_item_name}</label>&nbsp;&nbsp;
										</c:forEach>
                           			</div>
								</div>
							</div>
							
							<!-- 折扣 -->			
							<div class="form-group">
								<label for="add_item_discount" class="col-sm-2 control-label">折扣</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="add_item_discount" placeholder="折扣" name="item_discount">
								</div>
							</div>
							
							<!-- 原价-->	
							<div class="form-group">
								<label for="add_item_original_price" class="col-sm-2 control-label">原价</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="add_item_original_price" placeholder="原价" name="item_original_price">
								</div>
							</div>
							
							<!-- 封面 -->
                            <div class="form-group">
								<label for="add_item_cap_image" class="col-sm-2 control-label">游戏封面</label>
								<div class="col-sm-10">
									<input type="file" class="form-control" id="add_item_cap_image" name="image">
								</div> 
							</div>
							
                            <!-- 发售日期 -->
                            <div class="form-group">
								<label for="add_item_release_date" class="col-sm-2 control-label">发售日期</label>
								<div class="col-sm-10">
									<div class="input-group date" id="dp_component">
                                        <input type="text" class="form-control" placeholder="发售日期" name="item_release_date">
                                        <span class="input-group-addon"><i class="icon_calendar"></i></span>
                                    </div>
								</div>
							</div>
							
							<!-- 标志位 读取数据词典中所有标志位进行加载 -->
							<div class="form-group">
								<label for="add_other" class="col-sm-2 control-label"></label>
								<div class="col-sm-10">
									<div>
										<!-- 读取数据词典中的 标志位 -->
										 <c:forEach items="${flagList }" var="flag">
										 <label><input type="checkbox" class="add_item_flag" name="${flag.dict_field_name }" value="">${flag.dict_item_name }</label>
										 </c:forEach>
                           			</div>
								</div>
							</div>
						</form><!--描述：添加游戏弹出层表单 end-->
                    </div>
                        <div class="modal-footer">
                        	<!-- 表单取消和确认按钮 -->
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">取消</button>
                            <button type="button" class="btn btn-primary btn-sm" onclick="addItem()">确认添加</button>
                        </div>
                    </div>
                </div>
            </div><!-- add layer 游戏添加弹出层 end-->
            
            <!-- edit layer 游戏修改弹出层-->
            <div class="modal fade" id="editLayer">
                <div class="modal-dialog modal-content">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title">修改游戏</h4>
                        </div>
                   	  <div class="modal-body">
                        <!--描述：游戏修改弹出层-->
	                    <form class="form-horizontal" id="edit_items_form" method="post">
	                    	<!-- item_id -->
							<input type="hidden" id="edit_item_id" name="item_id"/>
							
							<!-- 名称 -->
							<div class="form-group">
								<label for="edit_item_name" class="col-sm-2 control-label">游戏名称</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="edit_item_name" placeholder="游戏名称" name="item_name">
								</div>
							</div>
							
							<!-- 标签 -->	
							<div class="form-group">
								<label for="edit_item_tagids" class="col-sm-2 control-label">标签</label>
								<div class="col-sm-10">
									<div>
										<input type="hidden" id="edit_item_tagids"  name="item_tagids" value="">
										<c:forEach items="${tagidsList }" var="dict_tagids">
											<label><input type="checkbox" name="edit_tagids" value="${dict_tagids.dict_id }">${dict_tagids.dict_item_name }</label>&nbsp;&nbsp;
										</c:forEach>
                           			</div>
								</div>
							</div>
							
							<!-- 平台 -->	
							<div class="form-group">
								<label for="edit_item_platform" class="col-sm-2 control-label">平台</label>
								<div class="col-sm-10">
									<div>
			                          <input type="hidden" id="edit_item_platform"  name="item_platform" value="">
										<c:forEach items="${platformList}" var="dict_name" >
										<label><input type="checkbox" name="edit_platform" value="${dict_name.dict_id}">${dict_name.dict_item_name}</label>&nbsp;&nbsp;
										</c:forEach>
                           			</div>
								</div>
							</div>

							<!-- 折扣 -->	
							<div class="form-group">
								<label for="edit_item_discount" class="col-sm-2 control-label">折扣</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="edit_item_discount" placeholder="折扣" name="item_discount">
								</div>
							</div>
							
							<!-- 原价 -->	
							<div class="form-group">
								<label for="edit_item_original_price" class="col-sm-2 control-label">原价</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="edit_item_original_price" placeholder="原价" name="item_original_price">
								</div>
							</div>
							
							<!-- 封面 -->	
                            <div class="form-group">
								<label for="edit_item_cap_image_src" class="col-sm-2 control-label">游戏封面</label>
								<div class="col-sm-10">
									<img id="edit_item_cap_image_src" alt="" src="">
								</div>
							</div>
							
                            <!-- 上传图片 -->	
                            <div class="form-group">
								<label for="edit_item_cap_image" class="col-sm-2 control-label">上传图片</label>
								<div class="col-sm-10">
									<input type="file" class="form-control" id="edit_item_cap_image" name="upload_image">
								</div>
							</div>
							
                            <!-- 发售日期 -->	
                      		<div class="form-group">
								<label for="edit_item_release_date" class="col-sm-2 control-label">发售日期</label>
								<div class="col-sm-10">
									<div class="input-group date" id="dp_component">
                                        <input type="text" class="form-control" placeholder="发售日期" id="edit_item_release_date" name="item_release_date" value="">
                                        <span class="input-group-addon"><i class="icon_calendar"></i></span>
                                    </div>
								</div>
							</div>
							
							<!-- 游戏标志位 -->	
							<div class="form-group">
								<label for="edit_other" class="col-sm-2 control-label"></label>
								<div class="col-sm-10">
									<div>
									<!-- 读取数据词典中的 标志位 -->
										 <c:forEach items="${flagList }" var="flag">
										 <label><input type="checkbox" class="edit_item_flag" name="${flag.dict_field_name }" value="">${flag.dict_item_name }</label>
										 </c:forEach>
                           			</div>
								</div>
							</div>
						</form><!--描述：添加游戏弹出层表单 end-->
                    </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">取消</button>
                            <button type="button" class="btn btn-primary btn-sm" onclick="updateItem()">确认修改</button>
                        </div>
                    </div>
                </div>
            </div><!-- edit layer 游戏修改弹出层 end-->
            
            <!-- search_tagsAndplatfrom_layer 选择标签或平台的查询条件弹出层-->
            <div class="modal fade" id="tagsAndplatfromLayer">
                <div class="modal-dialog modal-content">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title">选择标签或者平台</h4>
                        </div>
                   	  <div class="modal-body">
                        <!--描述：选择标签或平台的查询条件弹出层 表单-->
	                    <form class="form-horizontal" id="search_tagsAndplatfromLayer" enctype="multipart/form-data" method="post">
	                    	<!-- item_id -->
							<!-- <input type="hidden" id="edit_item_id" name="item_id"/> -->
							
							<!-- 标签 -->
							<div class="form-group">
								<label for="edit_item_tagids" class="col-sm-2 control-label">标签</label>
								<div class="col-sm-10">
									<div class="checkbox">
										<input type="hidden" id="search_item_tagids" value="">
									<c:forEach items="${tagidsList }" var="dict_tagids">
										<label><input type="checkbox" name="search_tagids" value="${dict_tagids.dict_id }">${dict_tagids.dict_item_name }</label>&nbsp;&nbsp;
									</c:forEach>
                           			</div>
								</div>
							</div>
							<!-- 平台 -->
							<div class="form-group">
								<label for="edit_item_platform" class="col-sm-2 control-label">平台</label>
								<div class="col-sm-10">
								<input type="hidden" id="search_item_platform" value="">
									<c:forEach items="${platformList}" var="dict_name" >
									<label><input type="checkbox" name="search_platform" value="${dict_name.dict_id}">${dict_name.dict_item_name}</label>&nbsp;&nbsp;
								</c:forEach>
								</div>
							</div>
						</form><!--描述：选择标签或平台的查询条件弹出层 表单 end-->
                    </div>
                        <div class="modal-footer">
                            <button id="search_cancel_btn" type="button" class="btn btn-default btn-sm" data-dismiss="modal">取消</button>
                            <button type="button" class="btn btn-primary btn-sm" onclick="setTagidsAndPlatform()">确认选择</button>
                        </div>
                    </div>
                </div>
            </div><!-- search_tagsAndplatfrom_layer 选择标签或平台的查询条件弹出层 end-->
             
            <!-- main menu 左侧主菜单按钮-->
            <nav id="main_menu">
                <div class="menu_wrapper">
                    <ul>
                        <li class="first_level">
                            <a href="javascript:void(0)">
                                <span class="icon_document_alt first_level_icon"></span>
                                <span class="menu-title">游戏管理</span>
                            </a>
                            <ul>
                                <li class="submenu-title">游戏管理</li>
                                <li><a href="#" data-toggle="modal" data-target="#addLayer">添加游戏</a></li>
                                <li><a href="#">游戏列表</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="menu_toggle">
                    <span class="icon_menu_toggle">
                        <i class="arrow_carrot-2left toggle_left"></i>
                        <i class="arrow_carrot-2right toggle_right" style="display:none"></i>
                    </span>
                </div>
            </nav><!-- main menu 左侧主菜单按钮 end-->
        </div>
		
		 <!-- 引入第三方js文件 -->
        <!-- jQuery -->
        <script src="${pageContext.request.contextPath }/admin/js/jquery.min.js"></script>
        <!-- jQuery Cookie -->
        <script src="${pageContext.request.contextPath }/admin/js/jquerycookie.min.js"></script>
        <!-- Bootstrap Framework -->
        <script src="${pageContext.request.contextPath }/admin/js/bootstrap.min.js"></script>
        <!-- retina images -->
        <script src="${pageContext.request.contextPath }/admin/js/retina.min.js"></script>
        <!-- switchery -->
        <script src="${pageContext.request.contextPath }/admin/js/switchery.min.js"></script>
        <!-- typeahead -->
        <script src="${pageContext.request.contextPath }/admin/js/typeahead.bundle.min.js"></script>
        <!-- fastclick -->
        <script src="${pageContext.request.contextPath }/admin/js/fastclick.min.js"></script>
        <!-- match height -->
        <script src="${pageContext.request.contextPath }/admin/js/jquery.matchheight-min.js"></script>
        <!-- scrollbar -->
        <script src="${pageContext.request.contextPath }/admin/js/jquery.mcustomscrollbar.concat.min.js"></script>
		<!-- moment.js (date library) -->
        <script src="${pageContext.request.contextPath }/admin/js/moment-with-langs.min.js"></script>
        <!-- Yukon ${pageContext.request.contextPath }/admin functions -->
        <script src="${pageContext.request.contextPath }/admin/js/yukon_all.min.js"></script>
	    <!-- page specific plugins -->
        <!-- footable -->
        <script src="${pageContext.request.contextPath }/admin/js/footable.min.js"></script>
        <script src="${pageContext.request.contextPath }/admin/js/footable.paginate.min.js"></script>
        <script src="${pageContext.request.contextPath }/admin/js/footable.filter.min.js"></script>
       	<!-- datepicker -->
        <script src="${pageContext.request.contextPath }/admin/js/bootstrap-datepicker.js"></script>
   		<!-- jBox -->
        <script src="${pageContext.request.contextPath }/admin/js/jbox.min.js"></script>
       	<!-- 自定义js文件-->
        <script src="${pageContext.request.contextPath }/admin/js/dunka_game.js"></script>
       
        
        <!-- js代码 -->
        <script type="text/javascript">

        
		//在页面加载完毕后执行
        $(function() {
        	//加载第三方组件
            //footable
            yukon_footable.goodslist();
            //datepicker
            yukon_datepicker.p_forms_extended();
            init();
        })
       function init(){
			//获取所有class为item_tag_name 的td
			// 参数 $(this).html()  $(this) "${pageContext.request.contextPath }/admin/items/AdminTags"
			var addr = "${pageContext.request.contextPath }/admin/items/AdminTags";
			$(".item_tag_name").each(function(){
				gameTagName($(this).html(),$(this),addr)
			});
			$(".item_platform_name").each(function(){
				gameTagName($(this).html(),$(this),addr)
			});
			//处理查询
			joinTagids("search_tagids",$("#search_item_tagids"));
			joinTagids("search_platform",$("#search_item_platform"));
			
			//处理添加
			joinTagids("add_tagids",$("#add_item_tagids"));
			joinTagids("add_platform",$("#add_item_platform"));
			
			//处理修改
			joinTagids("edit_tagids",$("#edit_item_tagids"));
			joinTagids("edit_platform",$("#edit_item_platform"));
			
			//add flag 通过类选择器，并绑定为其赋值
			$(".add_item_flag").each(function(){
				//绑定点击事件
				$(this).click(function(){
					if(this.checked)
						$(this).val(1);
					else
						$(this).val(0);
				});
			});
			//edit flag 通过类选择器，并绑定为其赋值
			$(".edit_item_flag").each(function(){
				//绑定点击事件
				$(this).click(function(){
					if(this.checked)
						$(this).val(1);
					else
						$(this).val(0);
				});
			});
		}
		
		//排序方法
		function sort(name){
			//排序规则
			var rule = $("#search_form_sort_rule").val();
			if(rule==''||rule=="ASC"){
				rule = "DESC";
			}else if(rule == "DESC"){
				rule = "ASC";
			}
			//将规则和字段传到后台
			
			$("#search_form_sort_name").val(name);
			$("#search_form_sort_rule").val(rule);
			
			$("#search_form").submit();
		}
		//弹出层拼接好的id 并将隐藏域中的值传递到对应的表单中
		function setTagidsAndPlatform(){
			$("#search_form_item_tagids").val($("#search_item_tagids").val());
			$("#search_form_item_platform").val($("#search_item_platform").val());
			$("#search_cancel_btn").click();
		}
		//重置查询条件
		function resetSearch(){
			$("#search_form_item_tagids").val("");
			$("#search_form_item_platform").val("");
			$("#search_form_sort_name").val("");
			$("#search_form_sort_rule").val("");
			
			$("#search_form").submit();
		}
		//添加游戏
		function addItem(){
			$.ajax({
				type:"POST",
				url: "${pageContext.request.contextPath }/admin/items/save",
				//$("#add_items_form").serialize(),序列化不支持文件上传
				data:new FormData($("#add_items_form")[0]),
				cache:false,
				contentType:false,
				processData:false,
				success:function(){
					alert("游戏添加成功!");
					console.log(new FormData($("#add_items_form")[0]));
					window.location.reload();
				}
			});
		}
		//修改游戏
		//打开编辑窗口，并回显数据
		function editItems(id){
			//清除编辑表单的数据
			$("#edit_items_form")[0].reset();
			$.ajax({
				
				
				type:"POST",
				url:"${pageContext.request.contextPath }/admin/items/edit",
				data:{"id":id},
				dataType:"json",
				success:function(data){
					$("#edit_item_id").val(data.item_id);
					$("#edit_item_name").val(data.item_name);
					$("#edit_item_discount").val(data.item_discount);
					$("#edit_item_original_price").val(data.item_original_price);
					
					setTagidsAndPlatformEcho($("input[name=edit_tagids]"), data.item_tagids);
					setTagidsAndPlatformEcho($("input[name=edit_platform]"), data.item_platform); 
				
					
					if(data.item_cap_image != null)
						$("#edit_item_cap_image_src").attr("src","/images/"+data.item_cap_image);
					else
						$("#edit_item_cap_image_src").attr("src"," ");
						
					$("#edit_item_release_date").val(data.item_release_date);
					
					//设置标志位回显
					setFlagEcho("is_hot",data.is_hot);
					setFlagEcho("is_hot_sale",data.is_hot_sale);
					setFlagEcho("is_free",data.is_free);
					setFlagEcho("is_specials",data.is_specials);
					setFlagEcho("is_upcoming",data.is_upcoming);
					setFlagEcho("is_new",data.is_new);
					setFlagEcho("is_enable",data.is_enable);
				}
			});
		}
		//修改游戏
		function updateItem(){
			$.ajax({
				type:"POST",
				url: "${pageContext.request.contextPath }/admin/items/update",
				//$("#add_items_form").serialize(),序列化不支持文件上传
				data:new FormData($("#edit_items_form")[0]),
				cache:false,
				contentType:false,
				processData:false,
				success:function(){
					alert("游戏修改成功!");
					window.location.reload();
				}
			});
		}
		//逻辑删除
		function deleteItems(id,enable){
			var isEnable = !Boolean(enable);
			$.post(
				"${pageContext.request.contextPath }/admin/items/delete",
				{"id":id,"enable":isEnable},
				function(){
					window.location.reload();
				}
			);
		}
		</script>
    </body>
</html>