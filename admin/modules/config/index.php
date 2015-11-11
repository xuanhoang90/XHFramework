<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->ACP_Config = new ACP_Config();
	$CMS->ACP_Config->Autorun();
	class ACP_Config{
		public function __construct(){
			return true;
		}
		public function Autorun(){
			global $CMS, $DB;
			switch($CMS->input['action']){
				case 'page_default':
					$this->PageDefault();
					break;
				default:
					$this->PageDefault();
					break;
			}
			return true;
		}
		public function PageDefault(){
			global $CMS, $DB;
			$CMS->admin['system']->LoadSkinModule('config');
			echo $CMS->skin_config->PageDefault();exit;
			return;
		}
	}