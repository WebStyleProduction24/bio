<div class="section sect--main-advantages">
    <div class="wrapper">
        <div class="block-advantages-list home-mobile-slider"> 
            {$getAdvantages = load_menu('main-category');}
            {echo str_replace(array("\n"), '', $getAdvantages);}
        </div>
    </div>
</div>


<div class="section sect--main-about">
    <div class="wrapper clearfix">
        <div class="main-about-left">
            <div class="section-title mobile-show-more">
                <h1>{echo $page.title;}</h1>
                <p class="mobile-show-more-titile">Биометрические системы. Если ваше внимание привлекла эта страница, значит вы ...</p>
            </div>
            <div class="idesc mobile-hidden">
                {$page.prev_text}
                <a class="o-more-link o-hvr" href="/printsipy-biometrii">Принципы биометрии</a>
            </div>
            {echo adminEdit('/admin/pages/edit/142', 'Главная страница', true);}
        </div>
        <div class="main-about-right">
            {widget('latest_news')}
        </div>
    </div>
</div>

{/*}
{widget('latest_projects')}
{*/}

{load_menu('main-brands')}