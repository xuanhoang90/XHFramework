<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->unit['logo'] = new ClassUnitLOGO();
	class ClassUnitLOGO{
		public function GetBlockSetting($data){
			global $CMS, $DB;
			$output = "";
			if($data != ""){
				$DefaultData = $data;
				foreach($DefaultData as $tmp){
					if($tmp['name'] == "logo_link"){
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
					<label class="control-label col-md-3" for="block_title">Logo Link: </label>
					<div class="col-md-9">
						<input type="text" class="form-control logo-link" name="logo_link" placeholder="Logo link" value="{$DefaultData}" />
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
						if($tmp['name'] == "logo_link"){
							$tmp2 = $tmp['value'];
						}
					}
					$DefaultData = $tmp2;
				}else{
					$DefaultData = "";
				}
				$data = array(
					"link" => $DefaultData,
				);
				$CMS->tpl->data = $data;
				$tmp = $CMS->tpl->Display($CMS->vars['tpl_name']."/block.logo", false);
				$output = $tmp;
			}else{
				$output = "";
			}
			return $output;
		}
	}
?>