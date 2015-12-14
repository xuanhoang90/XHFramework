<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->frame['post_category'] = new ClassFramePostCategory();
	class ClassFramePostCategory{
		public function Start(){
			global $CMS, $DB;
			$output = "";
			$CMS->tpl->data = array();
			$tmp = $CMS->tpl->Display($CMS->vars['tpl_name']."/main.post_category", false);
			$output = $tmp;
			return $output;
		}
	}
?>