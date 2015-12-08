<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->unit['post_list'] = new ClassUnitPostList();
	class ClassUnitPostList{
		public function GetBlockSetting($data){
			global $CMS, $DB;
			$output = "";
			if($data != ""){
				$DefaultData = $data;
				foreach($DefaultData as $tmp){
					if($tmp['name'] == "post_number"){
						$tmp2 = $tmp['value'];
					}
				}
				$DefaultData = $tmp2;
			}else{
				$DefaultData = 10;
			}
			$output =<<<HERE
			<form class="form-horizontal">
				<div class="block-title row form-group">
					<label class="control-label col-md-3" for="post_type">Kiểu bài viết: </label>
					<div class="col-md-9">
						<select name="post_type" class="form-control post_type">
							<option value="newest">--Select--</option>
							<option value="newest">Bài viết mới nhất</option>
							<option value="cat_selected">Bài viết thuộc danh mục</option>
							<option value="post_related">Bài viết liên quan</option>
							<option value="most_view">Bài viết xem nhiều</option>
						</select>
					</div>
				</div>
				<div class="block-title row form-group">
					<label class="control-label col-md-3" for="post_cat">Post category: </label>
					<div class="col-md-9">
						<p class="name-preview" class="category-name">Category name</p>
						<a class="object-select" href="#" data-toggle="modal" data-target="#window-object-quickaccess"><i class="fa fa-chain"></i> Select category</a>
					</div>
				</div>
				<div class="block-title row form-group">
					<label class="control-label col-md-3" for="post_number">Số lượng: </label>
					<div class="col-md-9">
						<input type="number" class="form-control post-number" name="post_number" placeholder="Post number" value="{$DefaultData}" />
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
						if($tmp['name'] == "post_number"){
							$tmp2 = $tmp['value'];
						}
					}
					$DefaultData = $tmp2;
				}else{
					$DefaultData = 10;
				}
				$data['postlist'] = $CMS->object_data->LoadPostList($DefaultData);
				$data['rand'] = rand();
				if($CMS->input['site'] == "admin"){
					$data['flag'] = "backend";
				}else{
					$data['flag'] = "frontend";
				}
				$CMS->tpl->data = $data;
				$tmp = $CMS->tpl->Display($CMS->vars['tpl_name']."/block.post_list", false);
				$output = $tmp;
			}else{
				$output = "";
			}
			return $output;
		}
	}
?>