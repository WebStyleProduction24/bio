{$loc_params = $parent_banner->getEffects()}
<div class="main-slider-wrap">
  <div class="main-slider">
    <div class="main-slider-list sldr-nav" id="js-slider-main"
         data-slider="banner-simple"
         data-autoplay="{echo $loc_params['autoplay'] == 1 ? 'true' : 'false'}"
         data-autoplayspeed="{echo $loc_params['autoplaySpeed']*1000}"
         data-arrows="{echo $loc_params['arrows'] == 1 ? 'true' : 'false'}"
         data-dots="{echo $loc_params['dots'] == 1 ? 'true' : 'false'}"
         data-fade="{echo $loc_params['fade'] == 1 ? 'true' : 'false'}"
         data-infinite="{echo $loc_params['infinite'] == 1 ? 'true' : 'false'}"
         data-speed="{echo $loc_params['scrollSpeed']*1000}"
    >
      {foreach $parent_banner->getBannerImages() as $item}
        {$loc_url_target = $item->getTarget() == 1 ? "target=\"_blank\"" : ""}
        {if $item->getImageOriginPath()}
        <div class="entry-main-slider">
          <div class="entry-main-slider-img js-parallax" style="background-image:url({echo $item->getImageOriginPath()});"></div>
          <div class="main-slider-desc">
            <div class="main-slider-info">
              <div class="idesc">
                {if trim($item->getName())}<p class="main-slider-desc-title">{echo $item->getName()}</p>{/if}
                {if trim($item->getDescription())}{echo $item->getDescription()}{/if}
              </div>
              {if $item->getStatisticUrl()}
                <a class="o-btn o-hvr" {$loc_url_target} href="{echo $item->getStatisticUrl()}" rel="nofollow">Подробнее</a>
              {/if}
            </div>
          </div>
        </div>
        {/if}
      {/foreach}
    </div>
  </div>
</div>