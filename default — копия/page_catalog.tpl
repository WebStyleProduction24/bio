<div class="section sect--content">
    <div class="wrapper">
        <!-- :SPEEDBAR: -->

        {/*}
        <div class="content-title">
            <p>Каталог</p>
        </div>
        {*/}

        {include_tpl('main_sidebar')}
        <div class="content-side-center">
        		<article class="page-catalog">
              <div class="content-title"><h1>{$page.title}</h1></div>
              <div class="page-catalog-text idesc">
                  {$page.full_text}
              </div>
                        
              
              {if $page.field_gallery_id}
               {$img = $CI->load->module('gallery')->gallery_m->get_album_images($page.field_gallery_id)}
               {if $img}
                 {$count=0}
                 <div class="content-page-gallery-list">
                    {foreach $img as $image}<div class="ii-item">
                        {$getData = $CI->load->module('gallery')->gallery_m->get_image_desc($image.id)}
                        <a class="pict fancybox this_find_img o-hvr" href="{echo getPictByGallery($image, 'large')}" {if $getData.title}data-caption="{echo htmlentities(strip_tags($getData.title));}"{/if} {if $getData.title}title="{echo htmlentities(strip_tags($getData.title));}"{/if}><span class="pict_cover_bg" style="background-image:url({echo getPictByGallery($image, 'prev')})"><img src="{echo getPictByGallery($image, 'prev')}" alt=" "></span></a>
                      {$count++} 
                      </div>{if $count==90}{break}{/if}{/foreach}
                   </div>
               {/if}
              {/if}
            </article>
        </div>
    </div>
</div>