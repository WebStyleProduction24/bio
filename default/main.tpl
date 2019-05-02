{include $_SERVER['DOCUMENT_ROOT'] . '/templates/default/functions_ajax.php'}<!DOCTYPE html>
<html lang="{current_language()}"  xmlns="http://www.w3.org/1999/xhtml">
<head>
	{$page_type = $CI->core->core_data['data_type'];}
	<!-- Meta data -->
	<meta charset="UTF-8">
	{if $CI->uri->segment(1) == 'sitemap'}
	{$site_title = 'Карта сайта'}
	{/if}
	<title>{$site_title}</title>
	<meta name="description" content="{$site_description}">
	<meta name="keywords" content="{$site_keywords}">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="author" content="Edinstvo.Pro">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<meta name="format-detection" content="telephone=no">
	<meta name="MobileOptimized" content="320">

<!-- 	<link href="{$THEME}_css/style.css?v=4" rel="stylesheet" type="text/css">
	<link href="{$THEME}_css/style_adap.css?v=4" rel="stylesheet" type="text/css"> -->

	<!-- Stylesheet data -->
	<link rel="shortcut icon" href="{siteinfo('siteinfo_favicon_url')}" type="image/x-icon">



	{if $page_type == 'main'}

	<!--[if IE]><script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
	<!-- drawer.css -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/drawer/3.2.2/css/drawer.min.css">
	<link rel="stylesheet" href="{$THEME}_css/widgets.css">
	<link rel="stylesheet" href="{$THEME}_css/main.css">
	<link rel="stylesheet" href="{$THEME}_css/custom.wsp24.css">

	{elseif $page_type == 'page'}

	<!--[if IE]><script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
	<!-- drawer.css -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/drawer/3.2.2/css/drawer.min.css">
	<link rel="stylesheet" href="{$THEME}_css/widgets.css">
	<link rel="stylesheet" href="{$THEME}_css/main.css">

	{else:}

	<link href="{$THEME}_css/style_all.css?v=4" rel="stylesheet" type="text/css">
	{/if}



</head>


{if $page_type == 'main'}

<body class="drawer drawer--right">
	<main role="main">
		<div class="social social_blue">
			<a class="social__link" href="#"><i class="fab fa-telegram-plane"></i></a>
			<a class="social__link" href="#"><i class="fab fa-whatsapp"></i></a>
			<a class="social__link" href="#"><i class="fab fa-skype"></i></a>
		</div>
		<!-- HEADER -->
		{include_tpl('main_header_custom')}

		
		{include_tpl('main_homepage_custom')}

		{include_tpl('main_footer_custom')}

	</main>

	{elseif $page_type == 'page'}

	<body id="body" class="{if $page_type == 'main'}page-type-main{else:}page-type-other{/if}">


		<div class="social"> 
			<a class="social__link" href="#"><i class="fab fa-telegram-plane"></i></a>
			<a class="social__link" href="#"><i class="fab fa-whatsapp"></i></a>
			<a class="social__link" href="#"><i class="fab fa-skype"></i></a>
		</div> 


		{include_tpl('page_header_custom')}

		<section class="main main_inner">
			<div class="container">

				{load_menu('header-product-custom')}


				<div class="product row">
					{include_tpl('product_page')}
				</div>
			</div>
		</section>


		{include_tpl('main_footer_custom')}

		{else:}


		<body id="body" class="{if $page_type == 'main'}page-type-main{else:}page-type-other{/if}">
			<div class="wrap" id="wraps">
				<div class="wraps">
					{include_tpl('main_header')}

					{if $CI->uri->segment(1) == 'sitemap'}
					<div class="breadcrumbs-wrap">
						<div class="wrapper">
							<ul class="breadcrumbs-list speedbar" xmlns:v="http://rdf.data-vocabulary.org/#">
								<li class="breadcrumbs__item" typeof="v:Breadcrumb"><a class="breadcrumbs__link" href="/" rel="v:url" property="v:title">Главная</a></li>
								<li class="breadcrumbs__item hidden-xs hidden-sm" typeof="v:Breadcrumb" rel="v:url nofollow" property="v:title">Карта сайта</li>
							</ul>
						</div>
					</div>
					<div class="content-wrap clearfix">
						<div class="wrapper">
							<div class="side-center">
								<article class="page-wrap">
									<div class="content-title"><h1>Карта сайта</h1></div>
									<div class="content-page-wrap idesc">
										{$content}
									</div>
								</article>
							</div>
						</div>
					</div>
					{else:}
					{$speedbar = widget('breadcrumbs');}
					{echo str_replace('<!-- :SPEEDBAR: -->', $speedbar, $content);}
					{/if}

					{include_tpl('main_footer')}
				</div>
			</div>


			<div class="smart-nav-wrap">
				<div class="smart-nav-list">
					<div class="smart-nav-heads">
						<div class="smart-nav-heads-button js-smart-nav-close"><span class="smart-icon smart-icon-menu"></span></div>
					</div>
					<div class="smart-nav-list-insert" id="js-smart-nav-insert"></div>
				</div>
			</div>
			<div class="smart-nav-layer js-smart-nav-close"></div>

			{/if}

			{if $page_type == 'main'}



			<!-- Scripts load -->
			<script src="{$THEME}_js/jquery-1.11.3.min.js"></script>
			<script src="{$THEME}_js/jquery-ui.min.js"></script>
			<script src="{$THEME}_js/widgets.js"></script>
			<!-- iScroll -->
			<script src="https://cdnjs.cloudflare.com/ajax/libs/iScroll/5.2.0/iscroll.min.js"></script>
			<!-- drawer.js -->
			<script src="https://cdnjs.cloudflare.com/ajax/libs/drawer/3.2.2/js/drawer.min.js"></script>
			<script src="{$THEME}_js/functions.js"></script>
		</body>


		{elseif $page_type == 'page'}


<!-- 
	<script src="{$THEME}_js/jquery.js"></script>
	<script src="{$THEME}_js/script_libs.js?v=5"></script>
	<script src="{$THEME}_js/script_site.js?v=5"></script> -->
	<script src="//yastatic.net/share2/share.js"></script>

	<!-- Scripts load -->
	<script src="{$THEME}_js/jquery-1.11.3.min.js"></script>
	<script src="{$THEME}_js/jquery-ui.min.js"></script>
	<script src="{$THEME}_js/widgets.js"></script>
	<!-- iScroll -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/iScroll/5.2.0/iscroll.min.js"></script>
	<!-- drawer.js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/drawer/3.2.2/js/drawer.min.js"></script>
	<script src="{$THEME}_js/functions.js"></script>
</body>

{else:}

<!-- 
	<script src="{$THEME}_js/jquery.js"></script>
	<script src="{$THEME}_js/script_libs.js?v=5"></script>
	<script src="{$THEME}_js/script_site.js?v=5"></script> -->
	<script src="//yastatic.net/share2/share.js"></script>



	
	<!-- Scripts load -->
	<script src="{$THEME}_js/jquery-1.11.3.min.js"></script>
	<script src="{$THEME}_js/jquery-ui.min.js"></script>
	<script src="{$THEME}_js/widgets.js"></script>
	<!-- iScroll -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/iScroll/5.2.0/iscroll.min.js"></script>
	<!-- drawer.js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/drawer/3.2.2/js/drawer.min.js"></script>
	<script src="{$THEME}_js/functions.js"></script>
</body>

{/if}



</html>