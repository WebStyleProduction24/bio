<?php
if (!function_exists('getYoutube')) {
    function getYoutube($url = false){
        if(!$url) return false;
        $images = array();

        $videoshow = '';
        if(preg_match('/youtube\.com\/watch\?v=([^\&\?\/]+)/', $url, $id)) {
            $videoshow = $id[1];
        } elseif (preg_match('/youtube\.com\/embed\/([^\&\?\/]+)/', $url, $id)) {
            $videoshow = $id[1];
        } elseif (preg_match('/youtube\.com\/v\/([^\&\?\/]+)/', $url, $id)) {
            $videoshow = $id[1];
        } elseif (preg_match('/youtu\.be\/([^\&\?\/]+)/', $url, $id)) {
            $videoshow = $id[1];
        } else {
            $videoshow = $url;
        };

        return array('image' => $tpls = '//i1.ytimg.com/vi/'.$videoshow.'/hqdefault.jpg', 'code' => $videoshow);

        return $tpls;

    };
};


if (!function_exists('getPictByGallery')) {
    function getPictByGallery($image, $thumb = false, $width = false, $height = false, $type = false) {
        $result = '';
        $pictUrl = site_url('uploads/gallery') . '/' . $image['album_id'] . '/' . $image['file_name'];

        switch ($thumb) {
            case 'large':
            case 'full':
            case 'photo':
                $result = $pictUrl . $image['file_ext'];
                break;
            case 'prev':
                $result = $pictUrl . '_prev' . $image['file_ext'];
                break;
            case 'small':
                $result = site_url('uploads/gallery') . '/' . $image['album_id'] . '/_thumbs/' . $image['file_name'] . $image['file_ext'];
                break;
            case 'thumb':
                $result = thumbnail($pictUrl . $image['file_ext'], $width, $height, $type);
                break;
            case 'imgtag':
            default:
                $result = '<img src="' . $pictUrl . $image['file_ext'] . '" alt="">';
        }

        return $result;
    };
};






if (!function_exists('tpl_locale_date')) {

    function tpl_locale_date($format, $timestamp = 0, $nominative_month = false) {

        /* Get current language locale */
        $lang_locale = MY_Controller::getCurrentLanguage()['locale'];

        if (!$timestamp) {
            $timestamp = time();
        } elseif (!preg_match('/^[0-9]+$/', $timestamp)) {
            $timestamp = strtotime($timestamp);
        }

        switch ($lang_locale) {
            case 'ru_RU':
                $F = $nominative_month ? [
                    1 => 'Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь', 'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь'
                ] : [
                    1 => 'Января', 'Февраля', 'Марта', 'Апреля', 'Мая', 'Июня', 'Июля', 'Августа', 'Сентября', 'Октября', 'Ноября', 'Декабря'
                ];
                $M = [
                    1 => 'Янв', 'Фев', 'Мар', 'Апр', 'Май', 'Июн', 'Июл', 'Авг', 'Сен', 'Окт', 'Ноя', 'Дек'
                ];
                $l = [
                    'Воскресенье',
                    'Понедельник',
                    'Вторник',
                    'Среда',
                    'Четверг',
                    'Пятница',
                    'Суббота',
                ];
                $D = [
                    'Вс',
                    'Пн',
                    'Вт',
                    'Ср',
                    'Чт',
                    'Пт',
                    'Сб',
                ];
                break;

            case 'uk_UA':
                $F = $nominative_month ? [
                    1 => 'Січень', 'Лютий', 'Березень', 'Квітень', 'Травень', 'Червень', 'Липень', 'Серпень', 'Вересень', 'Жовтень', 'Листопад', 'Грудень'
                ] : [
                    1 => 'Січня', 'Лютого', 'Березня', 'Квітня', 'Травня', 'Червня', 'Липня', 'Серпня', 'Вересеня', 'Жовтня', 'Листопада', 'Грудня'
                ];
                $M = [
                    1 => 'Січ', 'Лют', 'Бер', 'Кві', 'Тра', 'Чер', 'Лип', 'Сер', 'Вер', 'Жов', 'Лис', 'Гру'
                ];
                $l = [
                    'Неділя',
                    'Понеділок',
                    'Вівторок',
                    'Середа',
                    'Четвер',
                    'П&#8217;ятниця',
                    'Субота',
                ];
                $D = [
                    'Вс',
                    'Пн',
                    'Вт',
                    'Ср',
                    'Чт',
                    'Пт',
                    'Сб',
                ];
                break;

            default:
                return date($format, $timestamp);
        }

        $format = str_replace('F', $F[date('n', $timestamp)], $format);
        $format = str_replace('M', $M[date('n', $timestamp)], $format);
        $format = str_replace('l', $l[date('w', $timestamp)], $format);
        $format = str_replace('D', $D[date('w', $timestamp)], $format);

        return date($format, $timestamp);
    }

}


if (!function_exists('altTitle')) {
    function altTitle($title){
        $title = strip_tags($title);
        $title = str_replace(array('"','\''),'', $title);
        return $title;
    };
};




function adminEdit($url, $title, $full = false)
{
    $CI = & get_instance();
    if($CI->dx_auth->is_admin())
    {
        if($full)
        {
            $tpls = '<div class="pos_edit"><a class="widget_edit" href="' . site_url($url) . '" target="_blank" title="' . htmlentities($title) . '"></a></div>
        ';
        }
        else
        {
            $tpls = '<div class="pos_edit"><a class="widget_edit" href="' . site_url('/admin/components/cp/' . $url) . '" target="_blank" title="' . htmlentities($title) . '"></a></div>
        ';
        }
        echo $tpls;
    }
}

/** Окончание в зависимости от цифры
 ** num2word($num, array('документ', 'документа', 'документов'))
 */
function num2word($num, $words)
{
    $num = $num % 100;
    if ($num > 19) {
        $num = $num % 10;
    }
    switch ($num) {
        case 1: {
            return($words[0]);
        }
        case 2: case 3: case 4: {
        return($words[1]);
    }
        default: {
            return($words[2]);
        }
    }
}






if (!function_exists('prevnext_page')) {

    // Get page by id
    function prevnext_page($post_id, $post_category_id, $post_date, $type) {
        $lang_id = get_main_lang('id');
        $lang_identif = get_main_lang('identif');

        /* @var $ci MY_Controller */
        $ci = & get_instance();

        $where_add = '';
        if ($lang_identif == $ci->uri->segment(1)) {
            $where_add = " AND lang = '".$lang_id."' ";
        };

        switch ($type) {
            case 'prev':
                $query_post_prev = $ci->db->query( "
																SELECT IF(route.parent_url <> '', concat(route.parent_url, '/', route.url), route.url) as full_url, content.id, content.title, prev_text, publish_date, showed, content.position, content.lang, comments_count, author, content.created, content.category, category.name as cat_name
																FROM content 
																LEFT JOIN category ON category.id=content.category
																LEFT JOIN route ON route.id=content.route_id
																WHERE 
																	content.post_status = 'publish'
																	AND content.lang = '".$ci->config->item('cur_lang')."' 
																	AND publish_date <= '".time()."' 
																	AND content.created <= '".$post_date."' 
																	AND content.id <> '".$post_id."' 
																	AND content.category = '".$post_category_id."'
																	".$where_add."
																	ORDER BY content.created DESC
																	LIMIT 0,1
																");

                if (is_object($query_post_prev) && $query_post_prev->num_rows() == 1) {
                    $post_prev = $query_post_prev->row_array();
                    $post_prev = $ci->load->module('cfcm')->connect_fields($post_prev, 'page');
                    return $post_prev;
                }
                break;
            case 'next':
                $query_post_next = $ci->db->query( "
																SELECT IF(route.parent_url <> '', concat(route.parent_url, '/', route.url), route.url) as full_url, content.id, content.title, prev_text, publish_date, showed, content.position, content.lang, comments_count, author, content.created, content.category, category.name as cat_name
																FROM content 
																LEFT JOIN category ON category.id=content.category
																LEFT JOIN route ON route.id=content.route_id
																WHERE content.post_status = 'publish' 
																	AND content.lang = '".$ci->config->item('cur_lang')."' 
																	AND publish_date <= '".time()."' 
																	AND content.created > '".$post_date."' 
																	AND content.category = '".$post_category_id."'
																	OR (content.created = '".$post_date."' AND content.id > '".$post_id."' AND content.category = '".$post_category_id."' AND content.lang = '".$ci->config->item('cur_lang')."' )
																	".$where_add."
																	ORDER BY content.created ASC LIMIT 0,1
																");
                if (is_object($query_post_next) && $query_post_next->num_rows() == 1) {
                    $post_next = $query_post_next->row_array();
                    $post_next = $ci->load->module('cfcm')->connect_fields($post_next, 'page');
                    return $post_next;
                }
                break;
            default:
                return FALSE;
        }


    };

};


if (!function_exists('get_post_by_tags')) {
    function get_post_by_tags($options)
    {
        $ss = array(
            'title' => false,
            'category' => false,
            'limit' => 10,
            'thisId' => false
        );
        $ss = array_merge($ss, $options);

        $ci = & get_instance();

        $where = '';

        //if($ss['category']) $where .= " AND content.category = '".$ss['category']."' ";
       // if($ss['thisId']) $where .= " AND content.id != '".$ss['thisId']."' ";

        /*
        $query_post = $ci->db->query( "
                                        SELECT IF(route.parent_url <> '', concat(route.parent_url, '/', route.url), route.url) as full_url, content.id, content.title, prev_text, publish_date, showed, content.position, content.lang, comments_count, author, content.created, content.category, category.name as cat_name
                                        FROM content
                                        LEFT JOIN category ON category.id=content.category
                                        LEFT JOIN route ON route.id=content.route_id

                                        LEFT JOIN content_tags ON content_tags.page_id=content.id
                                        WHERE
                                            content.post_status = 'publish'
                                            AND content.lang = '".$ci->config->item('cur_lang')."'
                                            AND content.publish_date <= '".time()."'
                                            AND content_tags.tag_id = '42'
                                            " . $where . "
                                            ORDER BY content.created DESC
                                            LIMIT " . $ss['limit'] . "
                                        ");
         */

        $query_post = $ci->db->query( "
                                        SELECT IF(route.parent_url <> '', concat(route.parent_url, '/', route.url), route.url) as full_url, content.id, content.title, prev_text, publish_date, showed, content.position, content.lang, comments_count, author, content.created, content.category, category.name as cat_name
                                        FROM content 
                                        LEFT JOIN category ON category.id=content.category
                                        LEFT JOIN route ON route.id=content.route_id
                                        
                                        LEFT JOIN content_fields_data ON 
                                            content_fields_data.item_type='page' AND 
                                            content_fields_data.field_name='field_peoples' AND 
                                            content_fields_data.item_id=content.id
                                        WHERE 
                                            content.post_status = 'publish'
                                            AND content.lang = '".$ci->config->item('cur_lang')."' 
                                            AND content.publish_date <= '".time()."'
                                            AND content_fields_data.data LIKE '%" . $ss['title'] . "%'
                                            " . $where . "
                                            ORDER BY content.created DESC
                                            LIMIT " . $ss['limit'] . "
                                        ");

        //return $query_post;
        if (is_object($query_post) && $query_post->num_rows() >= 1) {
            $post_array = $query_post->result_array();
            return $post_array;
        }
    }
};


function eventsYear()
{
    $year = (int)date('Y');

    return array(
        $year,
        $year - 1,
        $year - 2
    );
}


/*
function get_years() {
    $ci = & get_instance();
    $post_category_id = 64;
    $query_post_prev = $ci->db->query( "
																SELECT content.id, content.title, prev_text, publish_date, showed, content.position, content.lang, comments_count, author, content.created, content.category
																FROM content 
																WHERE 
																	content.post_status = 'publish'
																	AND content.lang = '".$ci->config->item('cur_lang')."' 
																	AND publish_date <= '".time()."' 
																	AND content.category = '".$post_category_id."'
																");

    echo 'TEST';
    print_r($query_post_prev);
    if (is_object($query_post_prev) && $query_post_prev->num_rows() == 1) {
        $post_prev = $query_post_prev->row_array();
        print_r($post_prev);
    }
};
get_years();
*/



/*
function brandNav($wrap) {
    $wrap = str_replace(array("\r\n", "\n\r", "\r", "\n"), '', $wrap);
    $wrapDecode = '[' . substr($wrap, 0, -1) . ']';
    $wrapDecode = json_decode($wrapDecode, true);
    $wrapReturn = array();
    if(is_array($wrapDecode) && sizeof($wrapDecode))
    {
        foreach ($wrapDecode as $itemData)
        {
            $itemData['title'] = ((isset($itemData['title']) && !empty($itemData['title'])) ? htmlspecialchars($itemData['title']) : '');
            $itemData['link'] = ((isset($itemData['link']) && !empty($itemData['link'])) ? $itemData['link'] : '');
            $itemData['image'] = ((isset($itemData['image']) && !empty($itemData['image'])) ? $itemData['image'] : '');
            $wrapReturn[] = $itemData;
        }
    }
    return $wrapReturn;
}


function randomSplitP($text)
{
    $text = str_replace(array("\r\n", "\n\r", "\r", "\n", "</p>"), '', $text);
    $arrayP = explode('<p>', $text);
    $arrayP = array_diff($arrayP, array(''));
    shuffle($arrayP);
    shuffle($arrayP);
    $arrayOnly = array_shift($arrayP);
    return '<div class="header-logo-title"><span>' . trim($arrayOnly) . '</span></div>';
}

function getDomainByUrl($url)
{
    $parseUrl = parse_url($url);
    if(isset($parseUrl['host']) && !empty($parseUrl['host']))
    {
        return $parseUrl['host'];
    }
    else
    {
        return $url;
    }
}
*/