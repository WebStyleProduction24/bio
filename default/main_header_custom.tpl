
<header class="header">
  <div class="container-fluid header-top">
    <a class="header-logo">
      <img src="{$THEME}_img/logo.svg" class="header-logo__img" alt="">
    </a>
    <div class="header-right">
      <div class="header-phone">


        {$page_type = $CI->core->core_data['data_type'];}
        {if widget('header_tel_1')}
        {$header_tel_1 = fastwidget('header_tel_1', false, array('editor'=>'short','html'=>'inline'));}
        {$header_tel_1_clear = str_replace(array(' ','(',')', '-'), '', widget('header_tel_1'));}
        {$header_tel_1 = str_replace(array('+7 (',')'), array('+7 <span class="header-tel-prefix">(',')</span>'), $header_tel_1);}
        {/if}


        
        <a class="header-phone__link" href="tel:74952054700">+7 (495) 205-47-00</a>
        <a class="header-phone__link" href="tel:79260040137">+7 (926) 004-01-37</a>
      </div>
      <button type="button" class="drawer-toggle drawer-hamburger">
        <span class="drawer-hamburger-icon"></span>
      </button>
      <nav class="header-menu__wrap" role="navigation">
        <ul class="header-menu">
          <li class="header-menu__item"><a href="#" class="header-menu__link">О компании</a></li>
          <li class="header-menu__item header-menu__item_has-child">
            <a href="#" class="header-menu__link">Оборудование и програмы</a>
            <ul class="header-menu__childern">
              <li class="header-menu__item"><a href="#" class="header-menu__link">Основы биометрии</a></li>
              <li class="header-menu__item"><a href="#" class="header-menu__link">FAQ</a></li>
              <li class="header-menu__item"><a href="#" class="header-menu__link">Контакты</a></li>
            </ul>
          </li>
          <li class="header-menu__item"><a href="#" class="header-menu__link">Основы биометрии</a></li>
          <li class="header-menu__item"><a href="#" class="header-menu__link">FAQ</a></li>
          <li class="header-menu__item"><a href="#" class="header-menu__link">Контакты</a></li>
        </ul>
      </nav>
    </div>
  </div>
  <div class="container">
    <div class="slider">
      <div class="slider__item">
        <div class="slider__wrap">
          <span class="slider__title">Биометрическая подпись</span>
          <p class="slider__text">В эпоху, когда мгновенная коммуникация является стандартом, ожидание подписания, оформления, пересылки бумажных документов и последующий их обмен между вами, может казаться мучительно медленным и дорогостоящим. Все чаще предприятия применяют защищенную электронную подпись для рационализации этого процесса.</p>
          <a class="slider__more" href="#">Узнать подробнее</a>
        </div>
      </div>
      <div class="slider__item">
        <div class="slider__wrap">
          <span class="slider__title">Биометрическая подпись</span>
          <p class="slider__text">В эпоху, когда мгновенная коммуникация является стандартом, ожидание подписания, оформления, пересылки бумажных документов и последующий их обмен между вами, может казаться мучительно медленным и дорогостоящим. Все чаще предприятия применяют защищенную электронную подпись для рационализации этого процесса.</p>
          <a class="slider__more" href="#">Узнать подробнее</a>
        </div>
      </div>
      <div class="slider__item">
        <div class="slider__wrap">
          <span class="slider__title">Биометрическая подпись</span>
          <p class="slider__text">В эпоху, когда мгновенная коммуникация является стандартом, ожидание подписания, оформления, пересылки бумажных документов и последующий их обмен между вами, может казаться мучительно медленным и дорогостоящим. Все чаще предприятия применяют защищенную электронную подпись для рационализации этого процесса.</p>
          <a class="slider__more" href="#">Узнать подробнее</a>
        </div>
      </div>
      <div class="slider__item">
        <div class="slider__wrap">
          <span class="slider__title">Биометрическая подпись</span>
          <p class="slider__text">В эпоху, когда мгновенная коммуникация является стандартом, ожидание подписания, оформления, пересылки бумажных документов и последующий их обмен между вами, может казаться мучительно медленным и дорогостоящим. Все чаще предприятия применяют защищенную электронную подпись для рационализации этого процесса.</p>
          <a class="slider__more" href="#">Узнать подробнее</a>
        </div>
      </div>
    </div>
    <div class="particle">
      <img id="emmet" class="next-particle" data-width="500" data-height="400" data-max-width="85%" data-max-height="85%" data-particle-gap="3" data-mouse-force="80" data-noise="30" data-gravity="0.05" data-init-position="bottom" data-init-direction="bottom" data-fade-position="random" data-fade-direction="random" src="{$THEME}_pic/palec.png" display:none;>
    </div>
  </div>
        </header><!-- HEADER [END] -->