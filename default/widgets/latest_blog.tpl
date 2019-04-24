<div class="section-title">Блог <a class="o-more-link o-hvr" href="/blog">Читать все посты</a></div>
<div class="block-blog-item-list">
    {foreach $recent_news as $item}
        {$item = $CI->load->module('cfcm')->connect_fields($item, 'page')}
        {if !$item.field_image}
            {$item.field_image = $THEME . '_img/blank/blog-item.jpg';}
        {/if}
    <div class="block-blog-item" style="background-image:url({echo $item.field_image;})">
        <div class="block-blog-item-date">{echo mb_strtolower(tpl_locale_date('d F Y', $item.publish_date))}</div>
        <div class="block-blog-item-title">{$item.title}</div>
        <a class="block-blog-item-link" href="{site_url($item.full_url)}">Подробнее</a>
    </div>
    {/foreach}
</div>