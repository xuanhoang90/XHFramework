<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->frame['contact'] = new ClassFrameContact();
	class ClassFrameContact{
		public function Start(){
			global $CMS, $DB;
			$output = "";
			return $output;
		}
	}
?>