<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->frame['tag'] = new ClassFrameTag();
	class ClassFrameTag{
		public function Start(){
			global $CMS, $DB;
			$output = "";
			return $output;
		}
	}
?>