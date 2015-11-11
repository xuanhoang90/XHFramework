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
			return $output;
		}
	}
?>