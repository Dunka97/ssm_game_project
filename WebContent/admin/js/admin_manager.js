$(function () {
    yukon_bs_custom.accordion_active_class();
    yukon_bs_custom.dropdown_click();
    yukon_bs_custom.tooltips_init();
    yukon_bs_custom.popover_init();
    yukon_switchery.init();
    yukon_main_menu.init();
    yukon_style_switcher.init();
    yukon_typeahead.init();
    FastClick.attach(document.body)
});

yukon_bs_custom = {
	    accordion_active_class: function () {
	        $(".panel-collapse").length && ($(".panel-collapse.in").closest(".panel").addClass("panel-active"), $(".panel-collapse").on("hide.bs.collapse", function () {
	            $(this).closest(".panel").removeClass("panel-active")
	        }).on("show.bs.collapse", function () {
	            $(this).closest(".panel").addClass("panel-active")
	        }))
	    },
	    dropdown_click: function () {
	        $(".header_notifications .dropdown-menu").length && $(".header_notifications .dropdown-menu").click(function (a) {
	            a.stopPropagation()
	        })
	    },
	    tooltips_init: function () {
	        $(".bs_ttip").tooltip({
	            container: "body"
	        })
	    },
	    popover_init: function () {
	        $(".bs_popup").popover({
	            container: "body"
	        })
	    }
	};

yukon_switchery = {
	    init: function () {
	        $(".js-switch").length && $(".js-switch").each(function () {
	            new Switchery(this)
	        });
	        $(".js-switch-blue").length && $(".js-switch-blue").each(function () {
	            new Switchery(this, {
	                color: "#41b7f1"
	            })
	        });
	        $(".js-switch-success").length && $(".js-switch-success").each(function () {
	            new Switchery(this, {
	                color: "#8cc152"
	            })
	        });
	        $(".js-switch-warning").length && $(".js-switch-warning").each(function () {
	            new Switchery(this, {
	                color: "#f6bb42"
	            })
	        });
	        $(".js-switch-danger").length && $(".js-switch-danger").each(function () {
	            new Switchery(this, {
	                color: "#da4453"
	            })
	        });
	        $(".js-switch-info").length && $(".js-switch-info").each(function () {
	            new Switchery(this, {
	                color: "#37bc9b"
	            })
	        })
	    }
	};

yukon_main_menu = {
	    init: function () {
	        $("#main_menu ul > li").each(function () {
	            $(this).children("ul").length && $(this).addClass("has_submenu")
	        });
	        $(document).off("click", ".side_menu_expanded #main_menu .has_submenu > a").on("click", ".side_menu_expanded #main_menu .has_submenu > a", function () {
	            if ($(this).parent(".has_submenu").hasClass("first_level")) {
	                var a = $(this).parent(".has_submenu");
	                a.hasClass("section_active") ? a.removeClass("section_active").children("ul").slideUp("200") : (a.siblings().removeClass("section_active").children("ul").slideUp("200"), a.addClass("section_active").children("ul").slideDown("200"))
	            } else a = $(this).parent(".has_submenu"),
	            a.hasClass("submenu_active") ? a.removeClass("submenu_active").children("ul").slideUp("200") : (a.siblings().removeClass("submenu_active").children("ul").slideUp("200"), a.addClass("submenu_active").children("ul").slideDown("200"))
	        });
	        $("#main_menu .has_submenu").hasClass("section_active") ? $("#main_menu .has_submenu.section_active").children("ul").show() : $("#main_menu .has_submenu .act_nav").closest(".has_submenu").children("a").click();
	        $(".menu_toggle").click(function () {
	            $("body").hasClass("side_menu_expanded") ? yukon_main_menu.menu_collapse() : $("body").hasClass("side_menu_collapsed") && yukon_main_menu.menu_expand();
	            $(window).off("debouncedresize").trigger("resize").on("debouncedresize")
	        });
	        $("body").hasClass("side_menu_expanded") && 992 >= $(window).width() && yukon_main_menu.menu_collapse();
	        $("body").hasClass("side_menu_expanded") && yukon_main_menu.menu_scrollbar_create()
	    },
	    menu_expand: function () {
	        $("body").addClass("side_menu_expanded").removeClass("side_menu_collapsed");
	        $(".menu_toggle").find(".toggle_left").show();
	        $(".menu_toggle").find(".toggle_right").hide();
	        yukon_main_menu.menu_scrollbar_create()
	    },
	    menu_collapse: function () {
	        $("body").removeClass("side_menu_expanded").addClass("side_menu_collapsed");
	        $(".menu_toggle").find(".toggle_left").hide();
	        $(".menu_toggle").find(".toggle_right").show();
	        yukon_main_menu.menu_scrollbar_destroy()
	    },
	    menu_cookie: function () {
	        $(".menu_toggle").on("click", function () {
	            $("body").hasClass("side_menu_expanded") ? $.cookie("side_menu", "1") : $("body").hasClass("side_menu_collapsed") && $.cookie("side_menu", "0")
	        });
	        var a = $.cookie("side_menu");
	        void 0 != a && ("1" == a ? yukon_main_menu.menu_expand() : "0" == a && yukon_main_menu.menu_collapse())
	    },
	    position_top: function () {
	        $("body").removeClass("side_menu_active side_menu_expanded side_menu_collapsed").addClass("top_menu_active")
	    },
	    position_side: function () {
	        $("body").removeClass("top_menu_active").addClass("side_menu_active");
	        yukon_main_menu.menu_collapse()
	    },
	    menu_scrollbar_create: function () {
	        $("#main_menu .menu_wrapper").mCustomScrollbar({
	            theme: "minimal-dark",
	            scrollbarPosition: "outside"
	        })
	    },
	    menu_scrollbar_destroy: function () {
	        $("#main_menu .menu_wrapper").mCustomScrollbar("destroy")
	    }
	};

yukon_style_switcher = {
	    init: function () {
	        var a = $("#style_switcher");
	        $(".switcher_toggle").on("click", function (b) {
	            a.hasClass("switcher_open") ? a.removeClass("switcher_open") : a.addClass("switcher_open");
	            b.preventDefault()
	        });
	        $("#fixed_layout_switch").attr("checked", !1).on("change", function () {
	            $("#fixed_layout_switch").prop("checked") ? ($("body").addClass("fixed_layout"), $("#fixed_layout_bg_switch").show()) : ($("body").removeClass("fixed_layout"), $("#fixed_layout_bg_switch").hide());
	            $(window).resize()
	        });
	        $("#top_menu_switch").attr("checked", !1).on("change", function () {
	            $("#top_menu_switch").prop("checked") ? (yukon_main_menu.position_top(), yukon_main_menu.menu_scrollbar_destroy()) : (yukon_main_menu.position_side(), yukon_main_menu.menu_scrollbar_create());
	            $(window).resize()
	        });
	        $("#breadcrumbs_hide").attr("checked", !1).on("change", function () {
	            $("#breadcrumbs_hide").prop("checked") ? $("body").addClass("hide_breadcrumbs") : $("body").removeClass("hide_breadcrumbs")
	        });
	        $("#topBar_style_switch li").on("click", function () {
	            var a = $(this).attr("title");
	            $("#topBar_style_switch li").removeClass("style_active");
	            $(this).addClass("style_active");
	            $("#main_header").removeClass("topBar_style_1 topBar_style_2 topBar_style_3 topBar_style_4 topBar_style_5 topBar_style_6 topBar_style_7 topBar_style_8 topBar_style_9 topBar_style_10 topBar_style_11 topBar_style_12 topBar_style_13 topBar_style_14").addClass(a)
	        });
	        $("body").hasClass("fixed_layout") || $("#fixed_layout_bg_switch").hide();
	        $("#fixed_layout_bg_switch ul li").on("click", function () {
	            var a = $(this).attr("title");
	            $("#fixed_layout_bg_switch ul li").removeClass("style_active");
	            $(this).addClass("style_active");
	            $("body").removeClass("bg_0 bg_1 bg_2 bg_3 bg_4 bg_5 bg_6 bg_7").addClass(a)
	        });
	        $("#showCSSModal").on("show.bs.modal", function (a) {
	            $bodyClasses = $("body").attr("class");
	            $headerClasses = $("#main_header").attr("class");
	            $bodyClassesStr = '// &lt;body&gt; classes<br>&lt;body class="' + $bodyClasses + '"&gt;...&lt;/body&gt;';
	            $headerClassesStr = "undefined" !== typeof $headerClasses && "" != $headerClasses ? '<br><br>// &lt;header&gt; classes<br>&lt;header id="main_header" class="' + $headerClasses + '"&gt;...&lt;/header&gt;' : "";
	            $("#showCSSPre").html($bodyClassesStr + "" + $headerClassesStr)
	        })
	    }
	};

yukon_typeahead = {
	    init: function () {
	        $("#main_header .search_section > input").val("").typeahead({
	            hint: !0,
	            highlight: !0,
	            minLength: 1
	        }, {
	            name: "states",
	            displayKey: "value",
	            source: function (a) {
	                return function (b, c) {
	                    var d, e;
	                    d = [];
	                    e = new RegExp(b, "i");
	                    $.each(a, function (a, b) {
	                        e.test(b) && d.push({
	                            value: b
	                        })
	                    });
	                    c(d)
	                }
	            }("Alabama;Alaska;Arizona;Arkansas;California;Colorado;Connecticut;Delaware;Florida;Georgia;Hawaii;Idaho;Illinois;Indiana;Iowa;Kansas;Kentucky;Louisiana;Maine;Maryland;Massachusetts;Michigan;Minnesota;Mississippi;Missouri;Montana;Nebraska;Nevada;New Hampshire;New Jersey;New Mexico;New York;North Carolina;North Dakota;Ohio;Oklahoma;Oregon;Pennsylvania;Rhode Island;South Carolina;South Dakota;Tennessee;Texas;Utah;Vermont;Virginia;Washington;West Virginia;Wisconsin;Wyoming".split(";"))
	        })
	    }
	};

yukon_jBox = {
	    p_components_notifications_popups: function () {
	        new jBox("Modal", {
	            width: 340,
	            height: 180,
	            attach: $("#jbox_modal_drag"),
	            draggable: "title",
	            closeButton: "title",
	            title: "Click here to drag me around",
	            content: "You can move this modal window"
	        });
	        new jBox("Confirm", {
	            closeButton: !1,
	            confirmButton: "Yes",
	            cancelButton: "No",
	            _onOpen: function () {
	                this.submitButton.off("click.jBox-Confirm" + this.id).on("click.jBox-Confirm" + this.id, function () {
	                    new jBox("Notice", {
	                        offset: {
	                            y: 36
	                        },
	                        content: "Comment deleted: id=34"
	                    });
	                    this.close()
	                }.bind(this))
	            }
	        });
	        $("#jbox_n_default").click(function () {
	            new jBox("Notice", {
	                offset: {
	                    y: 36
	                },
	                stack: !1,
	                autoClose: 3E4,
	                animation: {
	                    open: "slide:top",
	                    close: "slide:right"
	                },
	                onInit: function () {
	                    this.options.content = "Default notification"
	                }
	            })
	        });
	        $("#jbox_n_audio").click(function () {
	            new jBox("Notice", {
	                attributes: {
	                    x: "right",
	                    y: "bottom"
	                },
	                theme: "NoticeBorder",
	                color: "green",
	                audio: "assets/lib/jBox-0.3.0/Source/audio/bling2",
	                volume: "100",
	                stack: !1,
	                autoClose: 3E3,
	                animation: {
	                    open: "slide:bottom",
	                    close: "slide:left"
	                },
	                onInit: function () {
	                    this.options.title = "Title";
	                    this.options.content = "Notification with audio effect"
	                }
	            })
	        });
	        $("#jbox_n_audio50").click(function () {
	            new jBox("Notice", {
	                attributes: {
	                    x: "right",
	                    y: "top"
	                },
	                offset: {
	                    y: 36
	                },
	                theme: "NoticeBorder",
	                color: "blue",
	                audio: "assets/lib/jBox-0.3.0/Source/audio/beep2",
	                volume: "60",
	                stack: !1,
	                autoClose: 3E3,
	                animation: {
	                    open: "slide:top",
	                    close: "slide:right"
	                },
	                onInit: function () {
	                    this.options.title = "Title";
	                    this.options.content = "Volume set to 60%"
	                }
	            })
	        })
	    }
	};





footable = {
	    p_pages_mailbox: function () {
	        $("#mailbox_table").footable({
	            toggleSelector: " > tbody > tr > td > span.footable-toggle"
	        })
	    },
	    item_list: function () {
	        $("#footable_demo").footable({
	            toggleSelector: " > tbody > tr > td > span.footable-toggle"
	        }).on({
	            footable_filtering: function (a) {
	                var b = $("#userStatus").find(":selected").text();
	                b && 0 < b.length && (a.filter += a.filter && 0 < a.filter.length ? " " + b : b, a.clear = !a.filter)
	            }
	        });
	        $("#clearFilters").click(function (a) {
	            a.preventDefault();
	            $("#userStatus").val("");
	            $("#footable_demo").trigger("footable_clear_filter")
	        });
	        $("#userStatus").change(function (a) {
	            a.preventDefault();
	            $("#footable_demo").data("footable-filter").filter($("#textFilter").val())
	        });
	        $("#textFilter, #userStatus").val("")
	    }
	};

datepicker = {
	    p_forms_extended: function () {
	        $.isFunction($.fn.datepicker) && ($.fn.datepicker.DPGlobal.template = $.fn.datepicker.DPGlobal.template.replace(/\&laquo;/g, '<i class="arrow_carrot-left"></i>').replace(/\&raquo;/g, '<i class="arrow_carrot-right"></i>'));
	        $("#dp_basic").length && $("#dp_basic").datepicker({
	            autoclose: !0
	        });
	        $("#dp_component").length && $("#dp_component").datepicker({
	            autoclose: !0
	        });
	        $("#dp_range").length && $("#dp_range").datepicker({
	            autoclose: !0
	        });
	        $("#dp_inline").length && $("#dp_inline").datepicker()
	    }
	};