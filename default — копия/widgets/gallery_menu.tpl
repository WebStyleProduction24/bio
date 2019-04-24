<ul class="speedbar" xmlns:v="http://rdf.data-vocabulary.org/#">
	<li typeof="v:Breadcrumb"><a rel="v:url" property="v:title" href="{site_url('/')}">На главную</a></li>
	{if $album.name}
		<li typeof="v:Breadcrumb"><a rel="v:url" property="v:title" href="{site_url('gallery')}">Фотогалерея</a></li>
		<li typeof="v:Breadcrumb"><span property="v:title" rel="v:url">{$album.name}</span></li>
	{else:}
		<li typeof="v:Breadcrumb"><span property="v:title" rel="v:url">Фотогалерея</span></li>
		<li typeof="v:Breadcrumb"><span property="v:title" rel="v:url">{$album.name}</span></li>
	{/if}
</ul>