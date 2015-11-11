<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->frame['customer'] = new ClassFrameCustomer();
	class ClassFrameCustomer{
		public function Start(){
			global $CMS, $DB;
			$output = "";
			return $output;
		}
	}
?>