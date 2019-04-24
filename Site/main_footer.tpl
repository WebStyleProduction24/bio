{$page_type = $CI->core->core_data['data_type'];}
<footer class="section sect--footer">
    <div class="wrapper clearfix">
        <div class="footer-col col-nav">
            <ul class="footer-nav-links">{load_menu('footer-nav')}</ul>
            
    
            <div class="footer-heads-phones">
                {if header_tel_1}
                    {$header_tel_1 = fastwidget('header_tel_1', false, array('editor'=>'short','html'=>'inline'));}
                    {$header_tel_1_clear = str_replace(array(' ','(',')', '-'), '', widget('header_tel_1'));}
                    {$header_tel_1 = str_replace(array('+7 (',')'), array('+7 <span class="footer-tel-prefix">(',')</span>'), $header_tel_1);}
                    <div class="footer-heads-phones-item"><a class="btn-header-tel" href="tel:{echo $header_tel_1_clear;}"><span class="ics ic-header-tel"></span><span class="txt-label">{echo $header_tel_1;}</span></a></div>
                {/if}
                {if widget('header_tel_2')}
                    {$header_tel_2 = fastwidget('header_tel_2', false, array('editor'=>'short','html'=>'inline'));}
                    {$header_tel_2_clear = str_replace(array(' ','(',')', '-'), '', widget('header_tel_2'));}
                    {$header_tel_2 = str_replace(array('+7 (',')'), array('+7 <span class="footer-tel-prefix">(',')</span>'), $header_tel_2);}
                    <div class="footer-heads-phones-item"><a class="btn-header-tel" href="tel:{echo $header_tel_2_clear;}"><span class="ics ic-header-tel"></span><span class="txt-label">{echo $header_tel_2;}</span></a></div>
                {/if}

                {$headerEmail = fastwidget('header_email', false, array('editor'=>'short','html'=>'inline'));}
                {$headerEmail_ =  preg_replace("/\s/",'',strip_tags($headerEmail)); } 
                <div class="footer-heads-email">
                    <a href="mailto:{echo $headerEmail_;}">
                        <div class="ics icon-email"></div>
                        <span class="txt-label">{echo $headerEmail;}</span>
                    </a>
                </div>
            </div>
                    
            <div class="footer-timework">
                <div class="ics icon-timework-white"></div>
                {echo fastwidget('footer_timework', false, array('editor'=>'short','html'=>'true'));}
            </div>
            <div class="footer-copyright">
                <div class="footer-copyright-icon">&copy;</div>
                <div class="footer-copyright-content">
                    {echo fastwidget('footer_copyright', false, array('editor'=>'admin','html'=>'true'));}
                </div>
            </div>
        </div>
        <div class="footer-col col-catalog">
            <ul class="footer-nav-catalog">{load_menu('footer-catalog')}</ul>
        </div>
        <div class="footer-col col-blog">
            {widget('latest_blog')}
        </div>
    </div>
</footer>
