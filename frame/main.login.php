<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->frame['login'] = new ClassFrameLogin();
	class ClassFrameLogin{
		public function Start(){
			global $CMS, $DB;
			$output = "";
			$CMS->tpl->data = array();
			$tmp = $CMS->tpl->Display($CMS->vars['tpl_name']."/main.login", false);
			$output = $tmp;
			return $output;
		}
	}
?>