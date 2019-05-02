


<div class="product-info col-lg-12">
  <ul class="product-tab">
    <li data-id="1" class="product-tab__item product-tab__item-active">Полное ОПИСАНИЕ</li>
    <li data-id="2" class="product-tab__item">Видео</li>
    <li data-id="3" class="product-tab__item">по</li>
  </ul>

    {$page.full_text}
    {echo adminEdit('/admin/pages/edit/' . $page.id, 'Редактировать страницу', true);}

  <a href="#" class="btn btn_back">Назад в каталог</a>
</div>







<!-- 
<div class="section sect--content">
    <div class="wrapper">
      <article class="page-wrap">
          <div class="content-title"><h1>{$page.title}</h1></div>
      
          <div class="content-page-wrap idesc">
              {$page.full_text}
          </div>
      
          {echo adminEdit('/admin/pages/edit/' . $page.id, 'Редактировать страницу', true);}
      </article>
    </div>
</div> -->