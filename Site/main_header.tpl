{$page_type = $CI->core->core_data['data_type'];}
{if widget('header_tel_1')}
    {$header_tel_1 = fastwidget('header_tel_1', false, array('editor'=>'short','html'=>'inline'));}
    {$header_tel_1_clear = str_replace(array(' ','(',')', '-'), '', widget('header_tel_1'));}
    {$header_tel_1 = str_replace(array('+7 (',')'), array('+7 <span class="header-tel-prefix">(',')</span>'), $header_tel_1);}
{/if}
<header class="header-wrap clearfix">
		<div class="header-nav-links-wrap">
      <nav class="header-nav-links">
          <div class="wrapper">
          		<a class="fix-header-logo" href="/" title="На главную"></a>
              <ul class="header-nav-links-list clearfix" id="js-get-header-nav-one">
                  {load_menu('header-panel')}
                  <li class="type-right"><a href="/faq"><span class="ics icon-faq"></span>FAQ</a></li>
                  <li class="type-right fix-header-tel"><a href="tel:{echo $header_tel_1_clear;}">{echo $header_tel_1;}</a></li>
              </ul>
              {echo adminEdit('/admin/components/cp/menu/menu_item/header', 'Меню: Шапка - Начальное меню', true);}
          </div>
      </nav>
    </div>
    <div class="header-heads">
        <div class="wrapper">
            <div class="header-heads-ins">
                <div class="header-heads-col col-menu display-none">
									<div class="smart-header-button" id="btn-js-smart-menu"><span class="smart-icon smart-icon-menu"></span></div>
                </div>
                <div class="header-heads-col col-logo">
                    <a class="header-heads-logo-link" href="/">
                        <img src="{$THEME}_img/logo.svg" alt="">
                        <span class="header-heads-logo-text">Автоматизированные<br> системы распознавания</span>
                    </a>
                </div>
                <div class="header-heads-col col-timework">
                    <div class="header-heads-timework">
                        <div class="ics icon-timework" data-btn-contacts-drop="#box-contacts-timework" data-btn-contacts-title="Время работы"></div>
                        <div class="header-heads-timework-drop" id="box-contacts-timework">
                        {echo fastwidget('header_timework', false, array('editor'=>'short','html'=>'true'));}
                        </div>
                    </div>
                </div>
                <div class="header-heads-col col-address">
                    <div class="header-heads-address">
                        <div class="ics icon-address" data-btn-contacts-drop="#box-contacts-address" data-btn-contacts-title="Наш адрес"></div>
                        <div class="header-heads-address-drop" id="box-contacts-address">
                        {echo fastwidget('header_address', false, array('editor'=>'short','html'=>'true'));}
                        </div>
                    </div>
                </div>
                <div class="header-heads-col col-phones">
                    <div class="header-heads-phones">
                        {if $header_tel_1}
                            <div class="header-heads-phones-item"><a class="btn-header-tel" href="tel:{echo $header_tel_1_clear;}"><span class="ics ic-header-tel"></span><span class="txt-label">{echo $header_tel_1;}</span></a></div>
                        {/if}
                        {if widget('header_tel_2')}
                            {$header_tel_2 = fastwidget('header_tel_2', false, array('editor'=>'short','html'=>'inline'));}
                            {$header_tel_2_clear = str_replace(array(' ','(',')', '-'), '', widget('header_tel_2'));}
                            {$header_tel_2 = str_replace(array('+7 (',')'), array('+7 <span class="header-tel-prefix">(',')</span>'), $header_tel_2);}
                            <div class="header-heads-phones-item"><a class="btn-header-tel" href="tel:{echo $header_tel_2_clear;}"><span class="ics ic-header-tel"></span><span class="txt-label">{echo $header_tel_2;}</span></a></div>
                        {/if}

                        {$headerEmail = fastwidget('header_email', false, array('editor'=>'short','html'=>'inline'));} 
                        {$headerEmail_ =  preg_replace("/\s/",'',strip_tags($headerEmail)); } 
                        <div class="header-heads-email">
                            <a href='mailto:{echo $headerEmail_;}'>
                                <div class="ics icon-email"></div>
                                <span class="txt-label">{echo $headerEmail;}</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

{if $page_type == 'main'}
    {$loc_main_banner_list_center = getBanner('main_slider', 'object')}
    {if count($loc_main_banner_list_center) > 0}
        {$loc_params = $loc_main_banner_list_center->getEffects()}
        <div class="header-middle-wrap">
            <div class="wrapper clearfix">
                <div class="header-middle-slider" id="js-slider-main"
                     data-slider="banner-simple"
                     data-autoplay="{echo $loc_params['autoplay'] == 1 ? 'true' : 'false'}"
                     data-autoplayspeed="{echo $loc_params['autoplaySpeed']*1000}"
                     data-arrows="{echo $loc_params['arrows'] == 1 ? 'true' : 'false'}"
                     data-dots="{echo $loc_params['dots'] == 1 ? 'true' : 'false'}"
                     data-fade="{echo $loc_params['fade'] == 1 ? 'true' : 'false'}"
                     data-infinite="{echo $loc_params['infinite'] == 1 ? 'true' : 'false'}"
                     data-speed="{echo $loc_params['scrollSpeed']*1000}">
                    {foreach $loc_main_banner_list_center->getBannerImages() as $item}
                        <div class="header-slider-item">
                            <div class="wrapper clearfix">
                                <div class="header-slider-item-inset">
                                    <p class="header-slider-item-title">{echo $item->getName()}</p>
                                    <div class="idesc">{echo $item->getDescription()}</div>
                                    {if $item->getUrl()}<a class="header-slider-item-button o-hvr" {$loc_url_target} {if $item->getStatisticUrl()}href="{echo $item->getStatisticUrl()}"{/if}>Узнать подробнее</a>{/if}
                                </div>
                            </div>
                        </div>
                    {/foreach}
                </div>
                {echo adminEdit('/admin/components/init_window/xbanners/edit_banner/3', 'Слайдер - центральная часть', true);}
            </div>
        </div>
    {/if}
{/if}


<div class="header-nav-catalog-wrap">
  <nav class="header-nav-catalog">
      <div class="wrapper">
          <ul class="header-nav-catalog-list" id="js-get-header-nav-two">{load_menu('header-catalog')}</ul>
          {echo adminEdit('/admin/components/cp/menu/menu_item/header', 'Меню: Шапка - Главный каталог', true);}
      </div>
  </nav>
</div>