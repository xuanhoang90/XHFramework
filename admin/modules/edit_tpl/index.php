<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->ACP_EditTpl = new ACP_EditTpl();
	$CMS->ACP_EditTpl->Autorun();
	class ACP_EditTpl{
		public function __construct(){
			return true;
		}
		public function Autorun(){
			global $CMS, $DB;
			switch($CMS->input['action']){
				case 'viewlist':
					if($CMS->input['id']){
						return $this->PageDefault();
					}
					$this->ListTpl();
					break;
				case 'viewlist_menu':
					$this->ListMenu();
					break;
				case 'editmenu':
					$this->EditMainMenu();
					break;
				case 'ajax':
					if($CMS->input['sub_act'] == "block_setting"){
						$this->GetBlockSetting();
					}
					if($CMS->input['sub_act'] == "block_reload"){
						$this->ReloadBlock();
					}
					if($CMS->input['sub_act'] == "savechange"){
						$this->SaveTplChanged();
					}
					break;
				default:
					$this->PageDefault();
					break;
			}
			return true;
		}
		public function ListTpl(){
			global $CMS, $DB;
			$CMS->admin['system']->LoadSkinModule('edit_tpl');
			echo $CMS->skin_edit_tpl->ListTpl();exit;
			return;
		}
		public function ListMenu(){
			global $CMS, $DB;
			$CMS->admin['system']->LoadSkinModule('edit_tpl');
			echo $CMS->skin_edit_tpl->ListMenu();exit;
			return;
		}
		public function EditMainMenu(){
			global $CMS, $DB;
			$CMS->admin['system']->LoadSkinModule('edit_tpl');
			echo $CMS->skin_edit_tpl->EditMainMenu();exit;
			return;
		}
		public function PageDefault(){
			global $CMS, $DB;
			$CMS->admin['system']->LoadSkinModule('edit_tpl');
			echo $CMS->skin_edit_tpl->PageDefault();exit;
			return;
		}
		public function GetBlockSetting(){
			global $CMS, $DB;
			$CMS->admin['system']->LoadSkinModule('edit_tpl');
			echo $CMS->skin_edit_tpl->GetBlockSetting();exit;
			return;
		}
		public function ReloadBlock(){
			global $CMS, $DB;
			$CMS->admin['system']->LoadSkinModule('edit_tpl');
			echo $CMS->skin_edit_tpl->ReloadBlock();exit;
			return;
		}
		public function SaveTplChanged(){
			global $CMS, $DB;
			$DB->query("use ".WEBSITE_DBNAME);
			$tplData = mysql_real_escape_string(serialize($CMS->input['tpldata']));
			$sql = "UPDATE page SET data='{$tplData}' WHERE id='{$CMS->input['id']}'";
			if($DB->query($sql)){
				echo "OK";
			}else{
				echo "Error";
			}
			return;
		}
	}