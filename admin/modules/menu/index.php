<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->ACP_Menu = new ACP_Menu();
	$CMS->ACP_Menu->Autorun();
	class ACP_Menu{
		public function __construct(){
			return true;
		}
		public function Autorun(){
			global $CMS, $DB;
			switch($CMS->input['action']){
				case 'viewlist_menu':
					$this->ListMenu();
					break;
				case 'editmenu':
					$this->EditMainMenu();
					break;
				default:
					$this->ListMenu();
					break;
			}
			return true;
		}
		public function ListMenu(){
			global $CMS, $DB;
			$CMS->admin['system']->LoadSkinModule('menu');
			echo $CMS->skin_menu->ListMenu();exit;
			return;
		}
		public function EditMainMenu(){
			global $CMS, $DB;
			$CMS->admin['system']->LoadSkinModule('menu');
			echo $CMS->skin_menu->EditMainMenu();exit;
			return;
		}
	}