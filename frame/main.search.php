<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->frame['search'] = new ClassFrameSearch();
	class ClassFrameSearch{
		public function Start(){
			global $CMS, $DB;
			$output = "";
			$CMS->tpl->data = array();
			$tmp = $CMS->tpl->Display($CMS->vars['tpl_name']."/main.search", false);
			$output = $tmp;
			return $output;
		}
	}
?>