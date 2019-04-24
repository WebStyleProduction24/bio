{$category = $CI->load->module('cfcm')->connect_fields($category, 'category')}

<div class="section sect--content">
    <div class="wrapper">
        <!-- :SPEEDBAR: -->

        <div class="content-title"><h1>{$category.name}</h1></div>

		{if trim($category.field_catalog_top_desc)}
			<div class="category-desc idesc">
				{$category.field_catalog_top_desc}
			</div>
		{/if}

        {if $pages}
            <div class="category-project-list clearfix">
            {foreach $pages as $item}{view('entry/project-item.tpl', [
                'item' => $item
                ])}{/foreach}
            </div>
        {/if}

        {if $pages}
        {else:}
            {if !empty($_GET['find'])}
                <p>Нечего не найдено, попробуйте другую комбинацию</p>
            {/if}
        {/if}

        {include_tpl('module_paginator')}
          
        {if trim($category.short_desc)}
            <div class="category-desc type-bottom idesc">
                {$category.short_desc}
            </div>
        {/if}
          
    </div>
</div>