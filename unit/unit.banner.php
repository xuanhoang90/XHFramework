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
				<div class="block-title row form-group">
					<label class="control-label col-md-3" for="banner_image">Background image: </label>
					<div class="col-md-9">
						<img class="image-preview" src="" alt="Banner background"/>
						<a class="image-select x-attachment-select-one" href="#" data-toggle="modal" data-target="#window-attachment-quickaccess"><i class="fa fa-photo"></i> Select image</a>
					</div>
				</div>
				<div class="block-title row form-group">
					<label class="control-label col-md-3" for="banner_link">Background link: </label>
					<div class="col-md-9">
						<input type="text" class="form-control banner_link" name="banner_link" placeholder="Banner link" value="{$DefaultData}" />
						<a class="object-select" href="#" data-toggle="modal" data-target="#window-object-quickaccess"><i class="fa fa-chain"></i> Select from object</a>
					</div>
				</div>
				<div class="block-title row form-group">
					<label class="control-label col-md-3" for="banner_link">Custom HTML: </label>
					<div class="col-md-9">
						<textarea name="editor" id="editor" rows="10" cols="80">...</textarea>
						<script>
							$(function(){
								CKEDITOR.replace( 'editor' );
								CKEDITOR.instances['editor'].on('change', function() {
									$("#editor").html(CKEDITOR.instances['editor'].getData());
								});
								CKEDITOR.config.title = false;
							})
						</script>
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