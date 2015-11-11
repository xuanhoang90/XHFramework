<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->frame['product'] = new ClassFrameProduct();
	class ClassFrameProduct{
		public function Start(){
			global $CMS, $DB;
			$output = "";
			return $output;
		}
	}
?>