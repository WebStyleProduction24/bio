<div class="section sect--ready-work">
    <div class="wrapper">
        <div class="section-title">Выполненные проекты <a class="o-more-link o-hvr" href="/vypolnennye-proekty">Все</a></div>
        <div class="main-ready-work-list sldr-nav-dots" id="js-ready-work">{foreach $recent_news as $item}{view('entry/project-item.tpl', [
                'item' => $item
                ])}{/foreach}</div>
    </div>
</div>