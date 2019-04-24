{$category = $CI->load->module('cfcm')->connect_fields($category, 'category')}

<div class="section sect--content">
    <div class="wrapper">
        <!-- :SPEEDBAR: -->
				
        {/*}
        <div class="content-title">
            <p>Каталог</p>
        </div>
        {*/}

        {include_tpl('main_sidebar')}
        <div class="content-side-center">
            <div class="content-title"><h1>{$category.name}</h1>{if !empty($_GET['find'])}<span class="content-title-search">Ищем: {echo altTitle($_GET['find']);}</span>{/if}</div>
            {if trim($category.field_catalog_top_desc)}
                <div class="category-desc idesc">
                    {$category.field_catalog_top_desc}
                </div>
            {/if}

            <form method="get" class="search-products clearfix">
                <label class="search-products-button o-hvr"> 
                    <input type="submit" value=" ">
                    Поиск
                </label>
                <div class="search-products-input">
                    <input type="text" name="find" placeholder="Название продукта" value="{echo altTitle($_GET['find']);}" required>
                </div>
            </form>

            {if $pages}
                {foreach $pages as $item}
                    {view('entry/catalog-item.tpl', [
                    'page' => $item
                    ])}
                {/foreach}
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
</div>