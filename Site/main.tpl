{include $_SERVER['DOCUMENT_ROOT'] . '/templates/default/functions_ajax.php'}<!DOCTYPE html>
<html lang="{current_language()}">
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

<!-- 	<link href="{$THEME}_css/style.css?v=4" rel="stylesheet" type="text/css">
	<link href="{$THEME}_css/style_adap.css?v=4" rel="stylesheet" type="text/css"> -->

	<link href="{$THEME}_css/style_all.css?v=4" rel="stylesheet" type="text/css">

	<!-- Stylesheet data -->
	<link rel="shortcut icon" href="{siteinfo('siteinfo_favicon_url')}" type="image/x-icon">
</head>
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

<script src="{$THEME}_js/jquery.js"></script>
<script src="{$THEME}_js/script_libs.js?v=5"></script>
<script src="{$THEME}_js/script_site.js?v=5"></script>
<script src="//yastatic.net/share2/share.js"></script>
</body>
</html>