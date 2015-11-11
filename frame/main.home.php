<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->frame['home'] = new ClassFrameHome();
	class ClassFrameHome{
		public function Start(){
			global $CMS, $DB;
			$output = "";
			$CMS->tpl->data = array();
			$tmp = $CMS->tpl->Display($CMS->vars['tpl_name']."/main.home", false);
			$output = $tmp;
			return $output;
		}
	}
?>