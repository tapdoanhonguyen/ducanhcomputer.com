<?php

/**
 * @Project NUKEVIET 4.x
* @Author mynukeviet (contact@mynukeviet.com)
* @Copyright (C) 2014 mynukeviet. All rights reserved
* @License GNU/GPL version 2 or any later version
* @Createdate 2-10-2010 18:49
*/
if (! defined('NV_MAINFILE'))
    die('Stop!!!');

if (! nv_function_exists('nv_function_reg_email')) {

    function nv_block_config_newsnotice_reg($module, $data_block, $lang_block)
    {
        $html = '<div class="form-group">';
		$html .= '<label class="control-label col-sm-6">' . $lang_block['text'] . ':</label>';
        $html .= '<div class="col-sm-18"><input type="text" class="form-control w400" name="config_text" value="' . $data_block['text'] . '"/></div>';
        $html .= '</div>';
        $html .= '</div>';
        return $html;
    }

    function nv_block_config_newsnotice_reg_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config'] = array();
        $return['config']['text'] = $nv_Request->get_string('config_text', 'post', '');
        return $return;
    }

    function nv_function_reg_email($block_config)
    {
        global $global_config, $module_info, $lang_module;
        
        $module = $block_config['module'];
        
        if (file_exists(NV_ROOTDIR . "/themes/" . $module_info['template'] . "/modules/newsnotice/global.newsnotice_reg_email.tpl")) {
            $block_theme = $module_info['template'];
        } else {
            $block_theme = "default";
        }
        
        $lang_temp = $lang_module;
        if (file_exists(NV_ROOTDIR . "/modules/" . $module . "/language/" . $global_config['site_lang'] . ".php")) {
            require_once NV_ROOTDIR . "/modules/" . $module . "/language/" . $global_config['site_lang'] . ".php";
        }
        $lang_module = $lang_module + $lang_temp;
        unset($lang_temp);
        
        $xtpl = new XTemplate('global.newsnotice_reg_email.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/modules/newsnotice');
        $xtpl->assign('LANG', $lang_module);
        $xtpl->assign('ACTION', NV_BASE_SITEURL . "index.php?" . NV_NAME_VARIABLE . "=" . $module);
        $xtpl->assign('MODULE_NAME', $module);
        $xtpl->assign('BLOCK_DATA', $block_config);
        
        $xtpl->parse('main');
        return $xtpl->text('main');
    }
}

if (defined('NV_SYSTEM')) {
    global $site_mods, $module_name;
    $module = $block_config['module'];
    
    $content = nv_function_reg_email($block_config);
}