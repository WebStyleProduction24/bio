{$loc_main_title = $current_category.id ? $current_category.name : 'Фото'}

 <article class="content-page">
  <div class="content-page-heads">
      <!-- :SPEEDBAR: -->
      <div class="content-title"><h1>{$album.name}</h1></div>
  </div>
  <div class="wrapper">
    <div class="content-page-wrap">

		<!-- Category Description -->
		{if trim($album.description) != ""}
			<div class="gallery-desc-top idesc idesc">
				{$album.description}
			</div>
		{/if}

		{if count($album.images) > 0}
			{$zIndx = 0;}
			<div class="gallery-wrap">
				<ul class="gallery-list gallery-curve">
					{foreach $album.images as $item}<li>
						{$item.loc_prev_url = $album_url .$item['file_name'] .'_prev' .$item['file_ext'];}
						{$item.loc_thumb_url = $album_url ."_thumbs/" .$item['full_name'];}
						{$item.loc_filter_desc = strip_tags(trim($item.description));}
						<div class="entry-inner">
							<a class="o-pict-crop o-hvr" href="{media_url($item.loc_prev_url)}" title="{$item.loc_filter_desc}" style="background-image:url({media_url($item.loc_thumb_url)});">
								<img src="{media_url($item.loc_thumb_url)}" alt="">
								{if strip_tags(trim($item.description)) != ""}
									<span class="entry-inner-titles">{echo strip_tags($item.description)}</span>
								{/if}
							</a>
						</div>
						{$zIndx++;}
					</li>{/foreach}
				</ul>
			</div>
			{include_tpl('../module_paginator')}
		{else:}
			<p>
				Нечего не найдено.
			</p>
		{/if}
    
    
    </div>
  </div>
</article>