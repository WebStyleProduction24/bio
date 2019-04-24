{$loc_main_title = $current_category.id ? $current_category.name : 'Стеллажи. Фотографии'}

 <article class="content-page">
  <div class="content-page-heads">
  <!-- :SPEEDBAR: -->
  <div class="content-title"><h1>{echo $loc_main_title;}</h1></div>
  </div>
  <div class="wrapper">
    <div class="content-page-wrap">
		<!-- Category Description -->
		{if trim($current_category.description) != ""}
			<div class="gallery-desc-top idesc">
				{$current_category.description}
			</div>
		{/if}

		{if count($albums) > 0}
			<div class="gallery-album-wrap">
				<ul class="gallery-album-list gallery-curve">
                {foreach $albums as $item}
                    {if $item.count <= 0}{continue;}{/if}
                    <li class="gallery-album-item">
                        <p class="gallery-album-item-title">{echo $item['name'];}</p>

                        {$img = $CI->load->module('gallery')->gallery_m->get_album_images($item.id)}
                        {if $img}
                        {$count=0}
                        <ul class="gallery-image-list">
                            {foreach $img as $image}<li class="gallery-image-item">
                                {$imgData = $CI->load->module('gallery')->gallery_m->get_image_info($image.id);}
                                    <a href="{echo getPictByGallery($image, 'large')}" data-gallery="item-gallery-{echo $item.id;}" class="gallery-image-item-image o-pict-crop o-hvr" style="background-image:url({echo getPictByGallery($image, 'small')})" title="{echo $imgData.title;}"><img src="{echo getPictByGallery($image, 'small')}" alt=""></a>
                                </li>{/foreach}
                        </ul>
                        {/if}

                        {if $item['description']}
                        <div class="idesc">
                            {echo $item['description'];}
                        </div>
                        {/if}
                    </li>
                {/foreach}
                </ul>
			</div>
		{else:}
			<p>
				Нечего не найдено.
			</p>
		{/if}

    </div>
  </div>
</article>