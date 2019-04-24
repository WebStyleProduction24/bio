{if $category['page_tpl'] == '' && $category['tpl'] == 'category_catalog'}
	{include_tpl('page_catalog')}
{else:}
<!-- :SPEEDBAR: -->
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
</div>
{/if}