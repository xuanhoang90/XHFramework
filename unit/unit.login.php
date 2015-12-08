<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->unit['login'] = new ClassUnitLogin();
	class ClassUnitLogin{
		public function GetBlockSetting($data){
			global $CMS, $DB;
			$output = "";
			if($data != ""){
				$DefaultData = $data;
				foreach($DefaultData as $tmp){
					if($tmp['name'] == "editor"){
						$tmp2 = $tmp['value'];
					}
				}
				$DefaultData = $tmp2;
			}else{
				$DefaultData = "HTML";
			}
			$output =<<<HERE
			<form>
				<div class="block-title row form-group">
					<label class="control-label col-md-3" for="show_form_login">Show form login: </label>
					<div class="col-md-9">
						<p class="radio-button"><input class="show_form_login" name="show_form_login" checked="true" type="radio" value="yes"> Yes</p>
						<p class="radio-button"><input class="show_form_login" name="show_form_login" type="radio" value="no"> No</p>
					</div>
				</div>
				<div class="block-title row form-group">
					<label class="control-label col-md-3" for="show_link_register">Show link register: </label>
					<div class="col-md-9">
						<p class="radio-button"><input class="show_link_register" name="show_link_register" checked="true" type="radio" value="yes"> Yes</p>
						<p class="radio-button"><input class="show_link_register" name="show_link_register" type="radio" value="no"> No</p>
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
						if($tmp['name'] == "editor"){
							$tmp2 = $tmp['value'];
						}
					}
					$DefaultData = $tmp2;
				}else{
					$DefaultData = "";
				}
				$data = array(
					"html" => $DefaultData,
				);
				$CMS->tpl->data = $data;
				$tmp = $CMS->tpl->Display($CMS->vars['tpl_name']."/block.login", false);
				$output = $tmp;
			}else{
				$output = "";
			}
			return $output;
		}
	}
?>