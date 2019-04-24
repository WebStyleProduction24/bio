{$page = $CI->load->module('cfcm')->connect_fields($page, 'page')}
<div class="articles-item">
    <div class="articles-item-content">
        <div class="articles-item-title"><a href="{site_url($page.full_url)}">{$page.title}</a></div>
        {if $page.field_article_author}
            <div class="articles-item-author">{echo $page.field_article_author;}</div>
        {/if}
        <div class="articles-item-text">{$page.prev_text}</div>
    </div>
</div>