<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->unit['post_category'] = new ClassUnitPostCategory();
	class ClassUnitPostCategory{
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
					<label class="control-label col-md-3" for="post_cat">Post category: </label>
					<div class="col-md-9">
						<p class="name-preview" class="category-name">Category name</p>
						<a class="object-select" href="#" data-toggle="modal" data-target="#window-object-quickaccess"><i class="fa fa-chain"></i> Select category</a>
					</div>
				</div>
				<div class="block-title row form-group">
					<label class="control-label col-md-3" for="post_show_sub_object">Show sub object: </label>
					<div class="col-md-9">
						<p class="radio-button"><input class="post_show_sub_object" name="post_show_sub_object" checked="true" type="radio" value="yes"> List post</p>
						<p class="radio-button"><input class="post_show_sub_object" name="post_show_sub_object" type="radio" value="no"> List sub category</p>
					</div>
				</div>
				<div class="block-title row form-group">
					<label class="control-label col-md-3" for="number_of_post">Number of posts: </label>
					<div class="col-md-9">
						<input type="number" class="form-control number_of_post" name="number_of_post" placeholder="Number of posts" value="10" />
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
				$tmp = $CMS->tpl->Display($CMS->vars['tpl_name']."/block.post_category", false);
				$output = $tmp;
			}else{
				$output = "";
			}
			return $output;
		}
	}
?>