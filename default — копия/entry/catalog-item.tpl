{$page = $CI->load->module('cfcm')->connect_fields($page, 'page')}
<div class="product-item">
    {if $page.field_image}
    <a class="product-item-image o-hvr" href="{site_url($page.full_url)}"><img src="{echo $page.field_image;}" alt="{echo altTitle($page.title);}"></a>
    {/if}
    <div class="product-item-content">
        <div class="product-item-title"><a href="{site_url($page.full_url)}">{$page.title}</a></div>
        <div class="product-item-desc idesc">
          <div class="product-item-desc-ins">
            {echo $page.prev_text;}
          </div>
        </div>
        <div class="product-item-toggler"><button type="button" class="js-product-item-toggle" tabindex="0">Развернуть</button></div>
				<div class="product-item-link"><a class="o-more-link o-hvr" href="{site_url($page.full_url)}">Подробнее</a></div>
    </div>
</div>