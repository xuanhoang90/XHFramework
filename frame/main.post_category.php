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
			return $output;
		}
	}
?>