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
          <div class="gallery-wrap">
              <ul class="gallery-list">
                  {foreach $album.images as $image}<li>
                      <div class="entry-inner">
                          <a class="o-pict-crop o-hvr" href="{site_url($album_link . 'image/'. $image.id)}" title="" style="background-image:url({media_url($thumb_url . $image.full_name)});">
                              <img src="{media_url($thumb_url . $image.full_name)}" alt="">
                              {if strip_tags(trim($image.description)) != ""}
                                  <span class="entry-inner-titles">{echo strip_tags($image.description)}</span>
                              {/if}
                          </a>
                      </div>
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