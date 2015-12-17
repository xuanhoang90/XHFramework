<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->frame['register'] = new ClassFrameRegister();
	class ClassFrameRegister{
		public function Start($fData = false){
			global $CMS, $DB;
			$output = "";
			$CMS->tpl->data = array();
			$tmp = $CMS->tpl->Display($CMS->vars['tpl_name']."/main.register", false);
			$output = $tmp;
			return $output;
		}
		public function Setting(){
			global $CMS, $DB;
			$output = "";
			$output =<<<HERE
			<form>
				
HERE;
			return $output;
		}
	}
?>