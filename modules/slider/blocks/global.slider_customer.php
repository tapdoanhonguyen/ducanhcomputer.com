<?php

/**
 * @Project NUKEVIET 4.x
 * @Author TAG (info@theanhgroup.com)
 * @Copyright (C) 2018 theanhgroup.com. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate  Mon, 11 Jul 2018 23:00:00 GMT
 */

if( ! defined( 'NV_MAINFILE' ) ) die( 'Stop!!!' );

if( ! nv_function_exists( 'content_slider_customer' ) )
{

	function nv_block_config_slider_customer( $module, $data_block, $lang_block )
	{
		global $nv_Cache, $site_mods;
		$html = '';
		$html .= '<tr>';
		$html .= '	<td>' . $lang_block['group_id'] . '</td>';
		$html .= '	<td><select name="config_group_id" class="form-control">';

		$sql = 'SELECT * FROM ' . NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'] . '_group ORDER BY weight ASC';
		$group = $nv_Cache->db($sql, 'group_id', $module);
		foreach( $group as $l )
		{
			$sel = ( $data_block['group_id'] == $l['group_id'] ) ? ' selected' : '';
			$html .= '<option value="' . $l['group_id'] . '" ' . $sel . '>' . $l['title'] . '</option>';
		}

		$html .= '	</select></td>';
		$html .= '</tr>';

		$html .= '<tr>';
		$html .= '	<td>' . $lang_block['numrow'] . '</td>';
		$html .= '	<td><input type="text" name="config_numrow" size="5" value="' . $data_block['numrow'] . '" class="form-control"/></td>';
		$html .= '</tr>';
		$html .= '<tr>';
		$html .= '	<td>' . $lang_block['widthimg'] . '</td>';
		$html .= '	<td><input type="text" name="config_widthimg" size="30" value="' . $data_block['widthimg'] . '" class="form-control"/></td>';
		$html .= '</tr>';
		$html .= '<tr>';
		$html .= '	<td>' . $lang_block['heightimg'] . '</td>';
		$html .= '	<td><input type="text" name="config_heightimg" size="5" value="' . $data_block['heightimg'] . '" class="form-control"/></td>';
		$html .= '</tr>';
		$html .= '<tr>';


		return $html;
	}

	function nv_block_config_slider_customer_submit( $module, $lang_block )
	{
		global $nv_Request;
		$return = array();
		$return['error'] = array();
		$return['config'] = array();
		$return['config']['group_id'] = $nv_Request->get_int( 'config_group_id', 'post', 0 );
		$return['config']['numrow'] = $nv_Request->get_int( 'config_numrow', 'post', 0 );
		$return['config']['widthimg'] = $nv_Request->get_int( 'config_widthimg', 'post', 0 );
		$return['config']['heightimg'] = $nv_Request->get_int( 'config_heightimg', 'post', 0 );
		return $return;
	}

	function content_slider_customer( $block_config )
	{

		global $global_config, $module_info, $site_mods, $nv_Cache, $module_name;
		$module = $block_config['module'];
		$mod_data = $site_mods[$module]['module_data'];
		$mod_file = $site_mods[$module]['module_file'];
		
		$block_config['numrow'] = ( $block_config['numrow'] != 0 ) ? $block_config['numrow'] : 10;

		$sql = 'SELECT photo_id, title, description, links, image, thumb FROM ' . NV_PREFIXLANG . '_' . $mod_data . '_photo WHERE group_id=' . $block_config['group_id'] . ' AND status = 1 ORDER BY weight ASC LIMIT 0 , ' . $block_config['numrow'];
 
		$array_photo = $nv_Cache->db( $sql, 'photo_id', $module);
		if( !empty( $array_photo ) )
		{
			if( file_exists( NV_ROOTDIR . '/themes/' . $module_info['template'] . '/modules/' . $mod_file . '/block.slider_customer.tpl' ) )
			{
				$block_theme = $module_info['template'];
			}
			else
			{
				$block_theme = 'default';
			}

			$xtpl = new XTemplate( 'block.slider_customer.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/modules/' . $mod_file );

			$xtpl->assign( 'TEMPLATE', $block_theme );
			$xtpl->assign( 'BLOCKID', $block_config['group_id'] );
			$xtpl->assign( 'WIDTH', $block_config['widthimg'] );
			$xtpl->assign( 'HEIGHT', $block_config['heightimg'] );
			$xtpl->assign( 'MOD_FILE', $mod_file );
  			
			if( ! defined( 'BXSLIDER' ) )
			{
				$xtpl->parse( 'main.load_bxslider' );
				define( 'BXSLIDER', true );
			}
 
			$a = 1;
			foreach( $array_photo as $data )
			{
				$data['description'] = nv_clean60( $data['description'], 80 );
				$data['width'] = $block_config['widthimg'];
				$data['height'] = $block_config['heightimg'];
				$data['image'] = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $module . '/images/' . $data['image'];
				$data['thumb'] = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $module . '/thumbs/' . $data['thumb'];
				
				$data['link'] = !empty( $data['links'] ) ? nv_unhtmlspecialchars( $data['links'] ) : '#';
				
				$data['slide'] = $a;
				
				$xtpl->assign( 'DATA', $data );
				$xtpl->parse( 'main.loop' );
				++$a;
			}
			$xtpl->parse( 'main' );
			return $xtpl->text( 'main' );
		}
	}

}

if( defined( 'NV_SYSTEM' ) )
{
	global $site_mods, $module_name;
	$module = $block_config['module'];
	if( isset( $site_mods[$module] ) )
	{
		 
		$content = content_slider_customer( $block_config );
	}
}

