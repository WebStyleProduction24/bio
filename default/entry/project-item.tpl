<div class="ii-item">
    {$item = $CI->load->module('cfcm')->connect_fields($item, 'page')}
    {if !$item.field_image}
        {$item.field_image = $THEME . '_img/blank/ready-work-logo.png';}
    {/if}
    <div class="main-ready-work-item">
        <div class="main-ready-work-item-image"><img src="{echo $item.field_image;}" alt=""></div>
        {/*}
        <div class="main-ready-work-item-images">
            <div class="main-ready-work-item-images-item" style="background-image:url({$THEME}_img/blank/ready-work-image.png);"></div>
            <div class="main-ready-work-item-images-item" style="background-image:url({$THEME}_img/blank/ready-work-image.png);"></div>
            <div class="main-ready-work-item-images-item" style="background-image:url({$THEME}_img/blank/ready-work-image.png);"></div>
            <div class="main-ready-work-item-images-item" style="background-image:url({$THEME}_img/blank/ready-work-image.png);"></div>
            <div class="main-ready-work-item-images-item" style="background-image:url({$THEME}_img/blank/ready-work-image.png);"></div>
        </div>
        {*/}
        <div class="main-ready-work-item-desc idesc">
            {$item.prev_text}
        </div>
        <div class="main-ready-work-item-link"><a href="{site_url($item.full_url)}">Подробнее о проекте</a></div>
    </div>
</div>