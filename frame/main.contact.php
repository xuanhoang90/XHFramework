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
			$CMS->tpl->data = array(
				"contact_info" => $this->LoadContactInfo(),
			);
			$tmp = $CMS->tpl->Display($CMS->vars['tpl_name']."/main.contact", false);
			$output = $tmp;
			return $output;
		}
		public function LoadContactInfo(){
			global $CMS, $DB;
			$DB->query("use ".WEBSITE_DBNAME);
			$sql = $DB->query("SELECT * FROM config WHERE `key`='config_info'");
			if($data = $sql->fetchAll()){
				return unserialize($data[0]['value']);
			}else{
				return false;
			}
		}
	}
?>