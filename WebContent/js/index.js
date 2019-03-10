(function(){
  function showMenu(pmid,cmid){
		  $(pmid).mouseenter(function(){
        $('.popup_block_new').hide(300);
		  	$(cmid).show(300);
		  	$('.store_nav').mouseleave(function(){
		  		$(cmid).hide(300);
		  		$(this).unbind();
		  	})
		  })
   };
   showMenu('#foryou_tab','#foryou_flyout');
   showMenu('#genre_tab','#foryou_flyout2');
   showMenu('#software_tab','#foryou_flyout3');
   showMenu('#hardware_tab','#foryou_flyout4');
   showMenu('#videos_tab','#foryou_flyout5');
/////////轮播///////////
   $("#carousel_1").FtCarousel();
   $("#carousel_2").FtCarousel({auto: false});
///////换图片////////   //
   $('.carousel-inner').on('mouseover','.small img',function(){
   	  var srcstr = $(this).attr('src');
   	  $(this).parent().parent().parent().find('.big').find('img').attr('src',srcstr); 
   });
/////列表侧边显示////   
  $('#index_list_game').on('mouseover','a',function(){
      $(this).addClass('cur').siblings().removeClass('cur');
      var ind = $(this).index();
      $('.tab_sild_box').removeClass('show').eq(ind).addClass('show');
  });

})();