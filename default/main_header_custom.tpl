
<header class="header">
  <div class="container-fluid header-top">
    <a class="header-logo">
      <img src="{$THEME}_img/logo-custom.svg" class="header-logo__img" alt="">
    </a>
    <div class="header-right">
      <div class="header-phone">        
        <a class="header-phone__link" href="tel:74952054700">+7 (495) 205-47-00</a>
        <a class="header-phone__link" href="tel:79260040137">+7 (926) 004-01-37</a>
      </div>
      <button type="button" class="drawer-toggle drawer-hamburger">
        <span class="drawer-hamburger-icon"></span>
      </button>
      {load_menu('header-panel-custom')}
    </div>
  </div>
  <div class="container">
    {$loc_main_banner_list_center = getBanner('main_slider', 'object')}
    {if count($loc_main_banner_list_center) > 0}
      {$loc_params = $loc_main_banner_list_center->getEffects()}
      <div class="slider">
        {foreach $loc_main_banner_list_center->getBannerImages() as $item}
        <div class="slider__item">
          <div class="slider__wrap">
            <span class="slider__title">{echo $item->getName()}</span>
            <p class="slider__text">{echo $item->getDescription()}</p>
            <a class="slider__more" href="{echo $item->getStatisticUrl()}">Узнать подробнее</a>
          </div>
        </div>
        {/foreach}
      </div>
      {echo adminEdit('/admin/components/init_window/xbanners/edit_banner/3', 'Слайдер - центральная часть', true);}
      {/if}
    <div class="particle">
      <img id="emmet" class="next-particle" data-width="500" data-height="400" data-max-width="85%" data-max-height="85%" data-particle-gap="3" data-mouse-force="80" data-noise="30" data-gravity="0.05" data-init-position="bottom" data-init-direction="bottom" data-fade-position="random" data-fade-direction="random" src="{$THEME}_pic/palec.png" display:none;>
    </div>
  </div>
        </header><!-- HEADER [END] -->