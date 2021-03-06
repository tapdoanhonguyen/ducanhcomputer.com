<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Sun, 04 May 2014 12:41:32 GMT
 */

if (!defined('NV_MAINFILE')) {
    die('Stop!!!');
}

if (!nv_function_exists('nv_menu_theme_hotline')) {
    /**
     * nv_menu_theme_social_config()
     *
     * @param mixed $module
     * @param mixed $data_block
     * @param mixed $lang_block
     * @return
     */
    function nv_menu_theme_hotline_config($module, $data_block, $lang_block)
    {
        $html = '<div class="form-group">';
        $html .= '	<label class="control-label col-sm-6">' . $lang_block['hotline1'] . ':</label>';
        $html .= '	<div class="col-sm-18"><input type="text" name="config_hotline1" class="form-control" value="' . $data_block['hotline1'] . '"/></div>';
        $html .= '</div>';
        $html .= '<div class="form-group">';
        $html .= '	<label class="control-label col-sm-6">' . $lang_block['hotline1link'] . ':</label>';
        $html .= '	<div class="col-sm-18"><input type="text" name="config_hotline1link" class="form-control" value="' . $data_block['hotline1link'] . '"/></div>';
        $html .= '</div>';
        $html .= '<div class="form-group">';
        $html .= '	<label class="control-label col-sm-6">' . $lang_block['hotline2'] . ':</label>';
        $html .= '	<div class="col-sm-18"><input type="text" name="config_hotline2" class="form-control" value="' . $data_block['hotline2'] . '"/></div>';
        $html .= '</div>';
        $html .= '<div class="form-group">';
        $html .= '	<label class="control-label col-sm-6">' . $lang_block['hotline2link'] . ':</label>';
        $html .= '	<div class="col-sm-18"><input type="text" name="config_hotline2link" class="form-control" value="' . $data_block['hotline2link'] . '"/></div>';
        $html .= '</div>';
        return $html;
    }

    /**
     * nv_menu_theme_social_submit()
     *
     * @param mixed $module
     * @param mixed $lang_block
     * @return
     */
    function nv_menu_theme_hotline_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config']['hotline1'] = $nv_Request->get_title('config_hotline1', 'post');
        $return['config']['hotline1link'] = $nv_Request->get_title('config_hotline1link', 'post');
        $return['config']['hotline2'] = $nv_Request->get_title('config_hotline2', 'post');
        $return['config']['hotline2link'] = $nv_Request->get_title('config_hotline2link', 'post');
        return $return;
    }

    /**
     * nv_menu_theme_social()
     *
     * @param mixed $block_config
     * @return
     */
    function nv_menu_theme_hotline($block_config)
    {
        global $global_config, $site_mods, $lang_global;

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.hotline.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.hotline.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }

        $xtpl = new XTemplate('global.hotline.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
        $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
        $xtpl->assign('LANG', $lang_global);
        $xtpl->assign('TEMPLATE', $block_theme);
        $xtpl->assign('DATA', $block_config);

        $xtpl->parse('main');
        return $xtpl->text('main');
    }
}

if (defined('NV_SYSTEM')) {
    $content = nv_menu_theme_hotline($block_config);
}
