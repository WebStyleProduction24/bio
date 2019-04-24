<div class="block-inform-video">
    <div class="content-title">
        <p>Последнее видео</p>
        <a class="btn-more-items-link" href="/video">Все материалы</a>
    </div>
    {foreach $recent_news as $item}
        {$item = $CI->load->module('cfcm')->connect_fields($item, 'page');}
    {if $item.field_youtube || $item.field_image}
        {$text = truncate(strip_tags($item.prev_text), 100, '...')}
        {if $item.field_image}
            {$pict = $item.field_image;}
        {else:}
            {$pict = getYoutube($item.field_youtube);}
            {if $pict['image']}
                {$pict = $pict['image'];}
            {else:}
                {$pict = false;}
            {/if}
        {/if}
    <div class="block-inform-video-item">
        <a class="block-inform-video-image" style="background-image:url({if $pict}{echo $pict;}{else:}{$THEME}_img/blank/inform-youtube.jpg{/if});" href="{site_url($item.full_url)}"></a>
        <div class="block-inform-video-date"><span>{date('d.m.Y',$item.publish_date)}</span></div>
        <div class="block-inform-video-title"><a href="{site_url($item.full_url)}">{$page.title}</a></div>
        <p class="block-inform-video-title">{echo $text;}</p>
    </div>{/if}
    {/foreach}
</div>