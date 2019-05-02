

<ul class="breadcrumbs">


	<li class="breadcrumbs__item">
		<a class="breadcrumbs__link" href="{site_url('')}">Главная</a>
	</li>

	{foreach $navi_cats as $item}
	{if $item.name}

	<li class="breadcrumbs__item">
		<a href="{site_url($item.path_url)}" class="breadcrumbs__link">{$item.name}</a>
	</li> 

	{/if}

	{/foreach}

</ul>