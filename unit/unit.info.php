<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->unit['info'] = new ClassUnitInfo();
	class ClassUnitInfo{
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
			<form>
				<div class="block-title row form-group">
					<label class="control-label col-md-3" for="show_company">Show company: </label>
					<div class="col-md-9">
						<p class="radio-button"><input class="show_company" name="show_company" checked="true" type="radio" value="yes"> Yes</p>
						<p class="radio-button"><input class="show_company" name="show_company" type="radio" value="no"> No</p>
					</div>
				</div>
				<div class="block-title row form-group">
					<label class="control-label col-md-3" for="show_email">Show email contact: </label>
					<div class="col-md-9">
						<p class="radio-button"><input class="show_email" name="show_email" checked="true" type="radio" value="yes"> Yes</p>
						<p class="radio-button"><input class="show_email" name="show_email" type="radio" value="no"> No</p>
					</div>
				</div>
				<div class="block-title row form-group">
					<label class="control-label col-md-3" for="show_phone">Show phone: </label>
					<div class="col-md-9">
						<p class="radio-button"><input class="show_phone" name="show_phone" checked="true" type="radio" value="yes"> Yes</p>
						<p class="radio-button"><input class="show_phone" name="show_phone" type="radio" value="no"> No</p>
					</div>
				</div>
				<div class="block-title row form-group">
					<label class="control-label col-md-3" for="show_blog">Show blog: </label>
					<div class="col-md-9">
						<p class="radio-button"><input class="show_blog" name="show_blog" checked="true" type="radio" value="yes"> Yes</p>
						<p class="radio-button"><input class="show_blog" name="show_blog" type="radio" value="no"> No</p>
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
					"html" => $DefaultData,
				);
				$CMS->tpl->data = $data;
				$tmp = $CMS->tpl->Display($CMS->vars['tpl_name']."/block.info", false);
				$output = $tmp;
			}else{
				$output = "";
			}
			return $output;
		}
	}
?>