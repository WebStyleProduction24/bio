<!-- :SPEEDBAR: -->

<div class="content-wrap clearfix">
    <div class="wrapper">
<article class="page-wrap">
    <div class="content-title"><h1>{$page.title}</h1></div>

    <aside class="sblock">
        {widget('block_contacts')}
    </aside>
    <div class="page-contacts-map">{$page.prev_text}</div>
    <div class="sblock">{$page.full_text}</div>

    {echo adminEdit('/admin/pages/edit/' . $page.id, 'Редактировать страницу', true);}
</article>
        </div>
    </div>