<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->frame['about_us'] = new ClassFrameAboutUs();
	class ClassFrameAboutUs{
		public function Start(){
			global $CMS, $DB;
			$output = "";
			$CMS->tpl->data = array();
			$tmp = $CMS->tpl->Display($CMS->vars['tpl_name']."/main.about", false);
			$output = $tmp;
			return $output;
		}
	}
?>