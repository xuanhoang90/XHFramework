<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->ACP_Slider = new ACP_Slider();
	$CMS->ACP_Slider->Autorun();
	class ACP_Slider{
		public function __construct(){
			return true;
		}
		public function Autorun(){
			global $CMS, $DB;
			switch($CMS->input['action']){
				case 'add':
					$this->AddSlider();
					break;
				case 'viewlist':
					$this->ListSlider();
					break;
				default:
					$this->ListSlider();
					break;
			}
			return true;
		}
		public function AddSlider(){
			global $CMS, $DB;
			$CMS->admin['system']->LoadSkinModule('slider');
			echo $CMS->skin_slider->AddSlider();exit;
			return;
		}
		public function ListSlider(){
			global $CMS, $DB;
			$CMS->admin['system']->LoadSkinModule('slider');
			echo $CMS->skin_slider->ListSlider();exit;
			return;
		}
		public function PageDefault(){
			global $CMS, $DB;
			$CMS->admin['system']->LoadSkinModule('slider');
			echo $CMS->skin_slider->PageDefault();exit;
			return;
		}
	}