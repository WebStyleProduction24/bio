<div class="section-title">Новости <a class="o-more-link o-hvr" href="/novosti">Все</a></div>
<div class="slider-news-list">
{$indxTemplate = 0;}
{foreach $recent_news as $item}
    {$item = $CI->load->module('cfcm')->connect_fields($item, 'page')}
    {if !$item.field_image}
        {$item.field_image = $THEME . '_img/blank/blog-item.jpg';}
    {/if}
    {if $indxTemplate === 0}
    <div class="slide-news">
        <div class="block-news-item" style="background-image:url({echo $item.field_image;})">
            <div class="block-news-item-date">{echo mb_strtolower(tpl_locale_date('d F Y', $item.publish_date))}</div>
            <div class="block-news-item-share o-ydshare">
                <div
                        class="ya-share2"
                        data-services="gplus,twitter,vkontakte,facebook,odnoklassniki,moimir"
                        data-title="{echo str_replace(array('"', "'"), '', $item.title);}"
                        data-description=""
                        data-image="{echo $item.field_image;}"
                        data-size="s"
                ></div>
            </div>
            <div class="block-news-item-title">{$item.title}</div>
            <a class="block-news-item-link" href="{site_url($item.full_url)}">Подробнее</a>
        </div>
    </div>
    {else:}
    <div class="slide-news"> 
        <div class="block-news-item-row">
            <div class="block-news-item-row-heads clearfix">
                <div class="block-news-item-row-reads"><span class="ics ic-item-date"></span>{echo $item.showed;}</div>
                <div class="block-news-item-row-date">{echo mb_strtolower(tpl_locale_date('d F Y', $item.publish_date))}</div>
            </div>
            <div class="block-news-item-row-title"><a href="{site_url($item.full_url)}">{$item.title}</a></div>
            <div class="block-news-item-row-share">
                <div class="block-news-item-row-share-title">Поделиться</div>
                <div class="block-news-item-row-share-content o-ydshare">
                    <div
                            class="ya-share2"
                            data-services="gplus,twitter,vkontakte,facebook,odnoklassniki,moimir"
                            data-title="{echo str_replace(array('"', "'"), '', $item.title);}"
                            data-description=""
                            {if !$item.field_image}data-image="{echo $item.field_image;}"{/if}
                            data-size="s"
                    ></div>
                </div>
            </div>
        </div>
    </div>
    {/if}
    {$indxTemplate++;}
{/foreach}
</div>