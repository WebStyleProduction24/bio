{$page_prev = prevnext_page($page.id, $page.category, $page.publish_date, 'prev');}
{$page_next = prevnext_page($page.id, $page.category, $page.publish_date, 'next');}
{if $page_prev || $page_next}
<aside class="page-inset-navigation">
    {if $page_prev}
    <a class="btn-page-inset-navigation type-prev" href="{site_url($page_prev.full_url)}" title="{echo altTitle($page_prev.title);}"><span class="ics ic-sldr-left-gray"></span><span class="ics ic-sldr-left-red"></span> <span class="txt-label">ПРЕДЫДУЩАЯ<br> НОВОСТЬ</span></a>
    {/if}
    {if $page_next}
    <a class="btn-page-inset-navigation type-next" href="{site_url($page_next.full_url)}" title="{echo altTitle($page_next.title);}"><span class="ics ic-sldr-right-gray"></span><span class="ics ic-sldr-right-red"></span> <span class="txt-label">СЛЕДУЮЩАЯ<br> НОВОСТЬ</span></a>
    {/if}
</aside>
{/if}