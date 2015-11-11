<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->frame['product_category'] = new ClassFrameProductCategory();
	class ClassFrameProductCategory{
		public function Start(){
			global $CMS, $DB;
			$output = "";
			return $output;
		}
	}
?>