<!-- :SPEEDBAR: -->

{$category = $CI->load->module('cfcm')->connect_fields($category, 'category')}

<div class="content-wrap clearfix">
    <div class="wrapper">
        <div class="content-title"><h1>{$category.name}</h1></div>

		{if trim($category.field_catalog_top_desc)}
			<div class="category-desc idesc">
				{$category.field_catalog_top_desc}
			</div>
		{/if}

        {if $pages}
            {foreach $pages as $item}
            {/*$item.prev_text = truncate(strip_tags($item.prev_text), 100, '...')*/}
                {view('entry/article-item.tpl', [
                'page' => $item
                ])}
            {/foreach}
        {/if}

        {include_tpl('module_paginator')}
		
        {if trim($category.short_desc)}
            <div class="category-desc type-bottom idesc">
                {$category.short_desc}
            </div>
        {/if}
    </div>
</div>