<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->unit['comment'] = new ClassUnitComment();
	class ClassUnitComment{
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
					<label class="control-label col-md-3" for="number_of_cmt">Number display: </label>
					<div class="col-md-9">
						<input type="number" class="form-control number_of_cmt" name="number_of_cmt" placeholder="Number of comments" value="10" />
					</div>
				</div>
				<div class="block-title row form-group">
					<label class="control-label col-md-3" for="show_text_area">Show text area: </label>
					<div class="col-md-9">
						<p class="radio-button"><input class="show-text-area" name="show_text_area" checked="true" type="radio" value="yes"> Yes</p>
						<p class="radio-button"><input class="show-text-area" name="show_text_area" type="radio" value="no"> No</p>
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
				$tmp = $CMS->tpl->Display($CMS->vars['tpl_name']."/block.comment", false);
				$output = $tmp;
			}else{
				$output = "";
			}
			return $output;
		}
	}
?>