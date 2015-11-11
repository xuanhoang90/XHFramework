<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->frame['payment'] = new ClassFramePayment();
	class ClassFramePayment{
		public function Start(){
			global $CMS, $DB;
			$output = "";
			return $output;
		}
	}
?>