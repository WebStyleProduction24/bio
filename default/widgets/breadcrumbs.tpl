{$loc_last_item = array_pop($navi_cats)}

{if $loc_last_item}
<div class="breadcrumbs-wrap">
	<div class="wrapper">
    <ul class="breadcrumbs-list">
      <li class="breadcrumbs__item">
        <a class="breadcrumbs__link" href="{site_url('')}">Главная</a>
      </li>
      {foreach $navi_cats as $item}
        {if $item.name}
          <li class="breadcrumbs__item">
            <a class="breadcrumbs__link" href="{site_url($item.path_url)}">{$item.name}</a>
          </li>
        {/if}
      {/foreach} 
      <li class="breadcrumbs__item hidden-xs hidden-sm">{$loc_last_item.name}</li>
    </ul>
  </div>
</div>
{/if}