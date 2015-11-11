<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->frame['register'] = new ClassFrameRegister();
	class ClassFrameRegister{
		public function Start(){
			global $CMS, $DB;
			$output = "";
			return $output;
		}
	}
?>