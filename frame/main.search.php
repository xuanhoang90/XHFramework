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
			return $output;
		}
	}
?>