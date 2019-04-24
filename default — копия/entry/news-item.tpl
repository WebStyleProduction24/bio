{$page = $CI->load->module('cfcm')->connect_fields($page, 'page')}
<div class="news-item">
    {if $page.field_image}
    <a class="news-item-image o-pict-crop o-hvr" href="{site_url($page.full_url)}" style="background-image:url('{echo $page.field_image;}');"></a>
    {/if}
    <div class="news-item-content">
    		<div class="news-item-heads">
          <span class="news-item-date">{echo mb_strtolower(tpl_locale_date('d F Y', $page.publish_date))}</span>
          <p class="news-item-title"><a href="{site_url($page.full_url)}">{$page.title}</a></p>
          <div class="news-item-text idesc">
              {echo $page.prev_text;}
          </div>
        </div>
        <div class="news-item-link">
        	<a class="o-more-link o-hvr" href="{site_url($page.full_url)}">Читать подробнее</a>
        </div>
    </div>
</div>