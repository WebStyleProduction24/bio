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

	<svg  xmlns:svg="http://www.w3.org/2000/svg" xmlns="http://www.w3.org/2000/svg" height='100' width='100' viewBox='0 0 100 100'>

	<meta name="format-detection" content="telephone=no">
	<meta name="MobileOptimized" content="320">

<!-- 	<link href="{$THEME}_css/style.css?v=4" rel="stylesheet" type="text/css">
	<link href="{$THEME}_css/style_adap.css?v=4" rel="stylesheet" type="text/css"> -->

	<!-- <link href="{$THEME}_css/style_all.css?v=4" rel="stylesheet" type="text/css"> -->

	<!-- Stylesheet data -->
	<link rel="shortcut icon" href="{siteinfo('siteinfo_favicon_url')}" type="image/x-icon">

	<!--[if IE]><script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
	<!-- drawer.css -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/drawer/3.2.2/css/drawer.min.css">
	<link rel="stylesheet" href="{$THEME}_css/widgets.css">
	<link rel="stylesheet" href="{$THEME}_css/main.css">

</head>



<body class="drawer drawer--right">
	<main role="main">
		<div class="social social_blue">
			<a class="social__link" href="#"><i class="fab fa-telegram-plane"></i></a>
			<a class="social__link" href="#"><i class="fab fa-whatsapp"></i></a>
			<a class="social__link" href="#"><i class="fab fa-skype"></i></a>
		</div>
		<!-- HEADER -->
		{include_tpl('main_header_custom')}



							{$content}

		{include_tpl('main_footer_custom')}

	</main>

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
</html>