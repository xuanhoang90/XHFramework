<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->unit['banner'] = new ClassUnitBanner();
	class ClassUnitBanner{
		public function GetBlockSetting($data){
			global $CMS, $DB;
			$output = "";
			if($data != ""){
				$DefaultData = $data;
				foreach($DefaultData as $tmp){
					if($tmp['name'] == "custom_text"){
						$tmp2 = $tmp['value'];
					}
				}
				$DefaultData = $tmp2;
			}else{
				$DefaultData = "";
			}
			$output =<<<HERE
			<form class="form-horizontal">
				<div class="block-title row">
					<label class="control-label col-md-3" for="custom_text">Custom text: </label>
					<div class="col-md-9">
						<input type="text" class="form-control custom_text" name="custom_text" placeholder="Custom text" value="{$DefaultData}" />
					</div>
				</div>
			</form>
HERE;
			return $output;
		}
		public function ReloadBlock($data){
			global $CMS, $DB;
			if($data){
				$Data = $data;
				if($Data['moduleData'] != ""){
					$DefaultData = $Data['moduleData'];
					foreach($DefaultData as $tmp){
						if($tmp['name'] == "custom_text"){
							$tmp2 = $tmp['value'];
						}
					}
					$DefaultData = $tmp2;
				}else{
					$DefaultData = "";
				}
				$data = array(
					"text" => $DefaultData,
				);
				$CMS->tpl->data = $data;
				$tmp = $CMS->tpl->Display($CMS->vars['tpl_name']."/block.banner", false);
				$output = $tmp;
			}else{
				$output = "";
			}
			return $output;
		}
	}
?>