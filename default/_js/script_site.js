$(document).ready(function(){


	var $document=$(document);var $html=$('html');var $body=$('#body');var $wrapWidth=$body.width();
	if($wrapWidth < 860){ 
		$('.mobile-show-more').on('click', function(){
			$('.mobile-hidden').slideToggle('slow');
		}); 
		if($('.home-mobile-slider').length ) {
			$('.home-mobile-slider').slick({
				dots: false,
				speed: 300,
				slidesToShow: 4,
				slidesToScroll: 4,
				vertical: true,
				verticalSwiping: true,
				nextArrow: '<button type="button" class="slick-next home-mobile-link">></button>',
				prevArrow: '<button type="button" class="slick-prev home-mobile-link"><</button>',
				arrows: false
			}); 

		}
	}
	if($wrapWidth>767){var $headerCatalogNav=Number($('#js-get-header-nav-two').position().top);$(window).scroll(function(){if($(window).scrollTop()>$headerCatalogNav){$body.addClass('fixeds-panel fixeds-catalog');}else if($(window).scrollTop()>100){$body.addClass('fixeds-panel');$body.removeClass('fixeds-catalog');}else{$body.removeClass('fixeds-panel fixeds-catalog');}});}var $sliderMain=$('#js-slider-main');if($sliderMain.length){if($wrapWidth>1000){$sliderMain.slick({'dots':$sliderMain.data("dots"),'arrows':$sliderMain.data("arrows"),'speed':$sliderMain.data("speed"),'autoplay':$sliderMain.data("autoplay"),'autoplaySpeed':$sliderMain.data("autoplayspeed"),'fade':$sliderMain.data("fade"),'infinite':$sliderMain.data("infinite"),'slidesToShow':1,'centerMode':false,'prevArrow':'<span class="slider-arrw-prev"><span class="ics ic-btn-slider-prev"></span></span>','nextArrow':'<span class="slider-arrw-next"><span class="ics ic-btn-slider-next"></span></span>','customPaging':function(slider,i){return'<span class="btn-slick"></span>';}});}else{$sliderMain.slick({'dots':$sliderMain.data("dots"),'arrows':$sliderMain.data("arrows"),'speed':$sliderMain.data("speed"),'autoplay':$sliderMain.data("autoplay"),'autoplaySpeed':$sliderMain.data("autoplayspeed"),'infinite':$sliderMain.data("infinite"),'slidesToShow':1,'centerMode':true,'draggable':true,'prevArrow':'<span class="slider-arrw-prev"><span class="ics ic-btn-slider-prev"></span></span>','nextArrow':'<span class="slider-arrw-next"><span class="ics ic-btn-slider-next"></span></span>','customPaging':function(slider,i){return'<span class="btn-slick"></span>';}});}}var $brandSlider=$('#js-slider-brand');if($brandSlider.find('.ii-item').length>=2){$brandSlider.slick({'dots':false,'arrows':true,'speed':500,'autoplay':false,'fade':false,'infinite':true,'slidesToShow':4,'slidesToScroll':4,'centerMode':false,'prevArrow':'<span class="main-slider-arrw-wrap type-prev"><span class="ics icon-arrw-btn-prev"></span></span>','nextArrow':'<span class="main-slider-arrw-wrap type-next"><span class="ics icon-arrw-btn-next"></span></span>','customPaging':function(slider,i){return'<span class="btn-slick"></span>';},'responsive':[{'breakpoint':1070,'settings':{'slidesToShow':3,'slidesToScroll':3,'arrows':true}},{'breakpoint':860,'settings':{'slidesToShow':3,'slidesToScroll':3,'arrows':true}},{'breakpoint':600,'settings':{'slidesToShow':2,'slidesToScroll':2,'arrows':false,'dots':true}}]});};var $readyWorkSlider=$('#js-ready-work');if($readyWorkSlider.find('.ii-item').length>2){$readyWorkSlider.slick({'dots':true,'arrows':true,'speed':500,'autoplay':false,'fade':false,'infinite':true,'slidesToShow':2,'slidesToScroll':2,'centerMode':false,'prevArrow':'<span class="main-slider-arrw-wrap type-prev"><span class="ics icon-arrw-btn-prev"></span></span>','nextArrow':'<span class="main-slider-arrw-wrap type-next"><span class="ics icon-arrw-btn-next"></span></span>','customPaging':function(slider,i){return'<span class="btn-slick"></span>';},'responsive':[{'breakpoint':1070,'settings':{'slidesToShow':2,'slidesToScroll':2,'dots':true}},{'breakpoint':860,'settings':{'slidesToShow':2,'slidesToScroll':2,'dots':true}},{'breakpoint':600,'settings':{'slidesToShow':1,'slidesToScroll':1,'dots':true}}]});};$(".js-mask-telphone:not(.runned)").mask("+7 (999) 999-99-99").addClass('runned');$("a.fancybox, a.lightbox, a[href$='.jpg'],a[href$='.jpeg'],a[href$='.png'],a[href$='.gif']").not('.nofancy').attr('data-fancybox','gallery').fancybox({'type':'image'});$document.on('click','[data-obox]:not(.disabled)',function(){var $this=$(this);$this.addClass('disabled');$.mlsAjax.preloaderShow({type:"frame",frame:$body});var $query={'action':'ajax'};var $get=$this.attr('data-obox');if($get)$query['do']=$get;var $postDATA=$this.attr('data-obox-post');if($postDATA){$postDATA=$postDATA.replace(/\[\[/g,'{');$postDATA=$postDATA.replace(/\]\]/g,'}');$postDATA=$postDATA.replace(/'/g,'"');$postDATA=$.parseJSON($postDATA);$query['query']=$postDATA;};$.ajax({url:'/',dataType:'html',type:"POST",data:$query,success:function($responses){$.fancybox.open('<div class="fancybox-content-insert">'+$responses+'</div>');$(".js-mask-telphone:not(.runned)").mask("+7 (999) 999-99-99").addClass('runned');$this.removeClass('disabled');}});return false;});var $responeInfoIndx=0;$document.on('submit','[data-oform]',function(){var $form=$(this);var $do=$form.attr('data-oform');var $url=$form.attr('data-oform-url');if(!$url)$url='';var $formReset=$form.attr('data-oform-send');$.mlsAjax.preloaderShow({type:"frame",frame:$form});$form.find('select, input, textarea').removeClass('inpt_request');$document.trigger('infobox-hide-remove');$responeInfoIndx++;var $responeInfoName='infobox-hide-remove.id'+$responeInfoIndx;var $options={'url':"/"+$url,'type':'POST',dataType:'json',data:{'action':'ajax','do':$do},success:function($responses,statusText,xhr,$form){if($responses['form']['error']==0){var $responeInfo=$('<div class="sends_position"><span>'+$responses['form']['text']+'</span></div>').hide();$form.addClass('suffsend');$responeInfo.appendTo($form).fadeIn(500);if($formReset!='lock'){$document.on($responeInfoName,function(){$responeInfo.fadeOut(500,function(){$responeInfo.remove();$form.find('input[type="reset"]').click();});$document.off($responeInfoName);});setTimeout(function(){$document.trigger($responeInfoName);$body.trigger('hide_all');$.fancybox.close();},5000);}}else{if($responses['form']['inputs']){$.each($responses['form']['inputs'],function(index,value){$form.find('[name="'+index+'"]').addClass('inpt_request');});}var $responeInfo=$('<div class="order_sends clr-red"><span>'+$responses['form']['text']+'</span></div>').hide();$form.addClass('suffsend');$responeInfo.appendTo($form).slideDown(500);$document.on($responeInfoName,function(){$responeInfo.slideUp(500,function(){$responeInfo.remove();});$document.off($responeInfoName);});setTimeout(function(){$document.trigger($responeInfoName);},10000);};}};$form.ajaxSubmit($options);return false;});var $firstSmartNav=false;var $adapNav;var $btnSmartNav=$('#btn-js-smart-menu');$btnSmartNav.click(function(){var $this=$(this);if($html.hasClass('show-menu')){$html.removeClass('show-menu');$this.removeClass('current');history.pushState("",document.title,window.location.pathname+window.location.search);$(window).off('popstate');}else{$html.addClass('show-menu');$this.addClass('current');if(!$firstSmartNav){var $getNavListOne=$('#js-get-header-nav-one').html();var $getNavListTwo=$('#js-get-header-nav-two').html();var $navInsert=$('#js-smart-nav-insert');$navInsert.html('<ul class="smart-nav-listings">'+$getNavListOne+$getNavListTwo+'</ul>'); $('.smart-nav-listings li').each(function(){ if( $(this).find('a').text() == 'FAQ' ) { $(this).remove(); } }); $firstSmartNav=true;}window.location.hash='menu';$(window).on('popstate',function(e){$btnSmartNav.trigger('click');$(window).off('popstate');});}return false;});$document.on('click','.js-smart-nav-close',function(){$btnSmartNav.trigger('click');return false;});$document.on('click','#js-smart-nav-insert .type-cat-arrw',function(){var $wrapWidth=$('#body').width();if($wrapWidth<767){var $this=$(this);var $wrap=$this.parents('li');if($wrap.find('> .nav-droplist').length){if($wrap.hasClass('current')){$wrap.removeClass('current');return false;}else{$wrap.siblings('li').removeClass('current');$wrap.addClass('current');return false;}}}});$document.on('click','.sblock-catalog-item-button.type-item-toggle > .sblock-catalog-item-link',function(){var $this=$(this).parent();if($this.hasClass('current')){$this.removeClass('current');}else{$('.sblock-catalog-item-button').removeClass('current');$this.addClass('current');if($wrapWidth<767){var body=$("html, body");body.stop().animate({scrollTop:$this.offset().top},500,'linear',function(){});}}return false;});if($wrapWidth<767){$jsBlockCatalog=$('#js-sblock-catalog');if($jsBlockCatalog.length){var body=$("html, body");body.stop().animate({scrollTop:$('.content-side-center').offset().top},500,'linear',function(){});}}$('.js-product-item-toggle').click(function(){var $this=$(this);var $review=$this.parents('.product-item-content');$review.toggleClass('current');return false;});$('.product-item-content').each(function(index,element){var $content=$(this);var $desc=$content.find('.product-item-desc');var $descIns=$content.find('.product-item-desc-ins');if($desc.height()>($descIns.height()-20)){$content.addClass('noshadown').find('.product-item-toggler').remove();}});$(".faq_list dd").each(function(){var _el=$(this);var _h=_el.height();_el.css({'height':_h});});$(".faq_list dd").hide();$(".faq_list dt").click(function(){var _el=$(this);if(_el.hasClass('current')){_el.parents('ul').find('dt').removeClass('current').next().slideUp("fast");return false;};_el.parents('ul').find('dt').removeClass('current').next().slideUp("fast");_el.addClass('current').next("dd").slideToggle("fast");});var $slidernewslist=$('.slider-news-list');if($slidernewslist.length){$slidernewslist.slick({'dots':$slidernewslist.data("dots"),'arrows':$slidernewslist.data("arrows"),'speed':$slidernewslist.data("speed"),'autoplay':$slidernewslist.data("autoplay"),'autoplaySpeed':$slidernewslist.data("autoplayspeed"),'fade':$slidernewslist.data("fade"),'infinite':$slidernewslist.data("infinite"),'slidesToShow':1,'centerMode':false,'draggable':true,'prevArrow':'<span class="slider-arrw-prev"><</span>','nextArrow':'<span class="slider-arrw-next">></span>','customPaging':function(slider,i){return'<span class="btn-slick"></span>';}});}});