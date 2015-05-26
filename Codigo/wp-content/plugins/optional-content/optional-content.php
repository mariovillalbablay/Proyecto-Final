<?php
/*
Plugin Name: Optional Content Plugin
Plugin URI: http://getson.info
Description: This plugin allows you to show or hide content on a page or post based on a simple shortcode. You don't need PHP knowledge, or a PHP enabling plugin. Simply use a button on the WYSIWYG editor to select under what condition you would like the content displayed. Fast, simple, and safe.
Version: 1.1
Author: Kyle Getson
Author URI: http://kylegetson.com/
*/


$optional_content = new optional_content_plugin();

class optional_content_plugin {
	public function optional_content_plugin(){
		add_shortcode('optional_content',array(&$this,'shortcode'));

		//tinymce
		add_filter('tiny_mce_version',array(&$this, 'update_tinymce_version'));
		add_action('init', array (&$this, 'add_tinymce_button') );
	}
	

	public function add_tinymce_button(){
		if(!current_user_can('edit_posts') && !current_user_can('edit_pages')){ return; }

		if(get_user_option('rich_editing') == 'true') {
		 
			add_filter("mce_external_plugins", array (&$this, 'tinymce_plugin' ), 5);
			add_filter('mce_buttons', array (&$this, 'tinymce_button' ), 5);

		}
	}

	public function tinymce_button($buttons){
		array_push($buttons, 'separator', 'OptionalContent' );
		return $buttons;
	}

	public function tinymce_plugin($tinymce_plugins){
		$tinymce_plugins['OptionalContent'] =  WP_PLUGIN_URL.'/'.str_replace(basename( __FILE__),"",plugin_basename(__FILE__)) . 'tinymce_plugin.js';
		
		return $tinymce_plugins;
	}

	/*
	 * forces a refresh of the cache 
	 */
	public function update_tinymce_version($ver){
		return $ver+1;
	}

	public function shortcode($atts, $content=null){


		extract(shortcode_atts(array(
				'type'=>'', /* GET,POST,manual,logged-in, etc. */
				'value'=>'', /* 1,&,on,etc. */
				'when'=>'', /* before, after, between */
				'dt'=>'', /* 03:00, 2010-02-29, etc. */
				'dt2'=>'' /* 03:00, 2010-02-29, etc. */
		     ), $atts));

		switch($type){
			default:
				return $content;
				break;
			case 'GET':
			case 'POST':
			case 'REQUEST':
				if($type == 'GET'){ 
					$check = $_GET; 
				}elseif($type == 'POST'){
					$check = $_POST;
				}else{
					$check = $_REQUEST;
				}
				$pcs = explode('=',$value);
				if(urldecode($pcs[1]) == "&amp;" || urldecode($pcs[1]) == "&"){
					//only care if its set
					if(!isset($check[$pcs[0]])){
						return '';
					}
				}else{	
					if($check[$pcs[0]] != urldecode($pcs[1])){
						return '';
					}

				}
				break;
			case 'logged-in':
				if(!is_user_logged_in()){
					return '';
				}
				break;
			case 'not-logged-in':
				if(is_user_logged_in()){
					return '';
				}
				break;
			case 'date':
				$now = time();
				if($when == 'before'){
					$check = strtotime($dt);
					if($now > $check){
						return '';
					}
				}elseif($when == 'after'){
					$check = strtotime($dt);
					if($now < $check){
						return '';
					}					
				}else{
					$start = strtotime($dt);
					$end = strtotime($dt2);
					if($now < $start || $now > $end){
						return '';
					}
				}
				break;
			case 'time':
				$now = time();
				if($when == 'before'){
					$check = strtotime(date('Y-m-d') . " ". $dt);
					if($now > $check){
						return '';
					}
				}elseif($when == 'after'){
					$check = strtotime(date('Y-m-d') . " ". $dt);
					if($now < $check){
						return '';
					}					
				}else{
					$start = strtotime(date('Y-m-d') . " ". $dt);
					$end = strtotime(date('Y-m-d') . " " . $dt2);
					if($now < $start || $now > $end){
						return '';
					}
				}

				break;
			case 'user-id':
				//they must be logged in
				if(!is_user_logged_in()){
					return '';
				}else{
					global $user_ID;
					$userIDs = explode(',',$value);
					if( !in_array( $user_ID, $userIDs ) ){
						return '';
					}
				}
				break;
			case 'manual':
				if($value == 'off'){
					return '';
				}
				break;
		}

		return do_shortcode( $content );

	}
}