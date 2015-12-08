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
				case 'general_config':
					$this->GeneralConfig();
					break;
				case 'info':
					$this->InfoConfig();
					break;
				case 'language':
					$this->LanguageConfig();
					break;
				case 'currency':
					$this->CurrencyConfig();
					break;
				default:
					$this->GeneralConfig();
					break;
			}
			return true;
		}
		public function GeneralConfig(){
			global $CMS, $DB;
			$CMS->admin['system']->LoadSkinModule('config');
			echo $CMS->skin_config->GeneralConfig();exit;
			return;
		}
		public function InfoConfig(){
			global $CMS, $DB;
			$CMS->admin['system']->LoadSkinModule('config');
			echo $CMS->skin_config->InfoConfig();exit;
			return;
		}
		public function LanguageConfig(){
			global $CMS, $DB;
			$CMS->admin['system']->LoadSkinModule('config');
			echo $CMS->skin_config->LanguageConfig();exit;
			return;
		}
		public function CurrencyConfig(){
			global $CMS, $DB;
			$CMS->admin['system']->LoadSkinModule('config');
			echo $CMS->skin_config->CurrencyConfig();exit;
			return;
		}
	}