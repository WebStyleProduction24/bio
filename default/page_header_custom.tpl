  <!-- HEADER --> 

  <header class="header header_inner">
    <div class="container-fluid header-top">
      <a class="header-logo" href="{site_url('')}">
        <img src="{$THEME}_img/logo-custom.svg" class="header-logo__img" alt="">
      </a>
      {widget('breadcrumbs_custom')}
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
  </header>

  <!-- HEADER [END] -->
