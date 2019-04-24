<?php
if((
    (isset($_GET['do']) || isset($_POST['do'])) &&
    (isset($_GET['action']) && $_GET['action'] == 'ajax' || isset($_POST['action']) && $_POST['action'] == 'ajax')
))
{
    $query = ((isset($_POST['query']) && !empty($_POST['query'])) ? $_POST['query'] : false);
    if($_POST['do'] == 'form-recall')
    {
        include('ajax/form-recall.tpl');
    }
    if($_POST['do'] == 'form-read-privacy')
    {
        include('ajax/form-read-privacy.tpl');
    }
    if($_POST['do'] == 'contacts')
    {
        $ajaxReturn = $CI->load->module('Contacts')->index(true);
    }
    exit;
}
?>