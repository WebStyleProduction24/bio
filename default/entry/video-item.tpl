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
    <div class="video-item-item">
    <a class="video-item-image" style="background-image:url({if $pict}{echo $pict;}{else:}{$THEME}_img/blank/inform-youtube.jpg{/if});" href="{site_url($item.full_url)}"></a>
    <div class="video-item-date"><span>{date('d.m.Y',$item.publish_date)}</span></div>
    <div class="video-item-title"><a href="{site_url($item.full_url)}">{$item.title}</a></div>
    <p class="video-item-title">{echo $text;}</p>
    </div>{/if}