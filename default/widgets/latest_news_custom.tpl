{foreach $recent_news as $item}

<div class="articles__item col-lg-3 col-md-6">
	<a href="{site_url($item.full_url)}">
		<div class="img-container-articles">
			<img class="articles__img" src="{$item.field_image}" alt="{$item.title}">
			<div class="articles__title-container-div"><span class="articles__title-container">{$item.title}</span></div>
			<div class="articles__title-container-bcg"></div>
		</div>
	</a>
	<span class="articles__date">{date('d-m-Y',$item.publish_date)}</span>
	<p class="articles__text">{$item.prev_text}</p>
	<a class="articles__link" href="{site_url($item.full_url)}"></a>
</div>

{/foreach}