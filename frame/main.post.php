<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->frame['post'] = new ClassFramePost();
	class ClassFramePost{
		public function Start(){
			global $CMS, $DB;
			$output = "";
			$data['notfound'] = "false";
			if(!$tmp = $CMS->object_data->GetPostDetail()){
				$data['notfound'] = "true";
			}else{
				$data['post_detail'] = $tmp[0];
			}
			$CMS->tpl->data = $data;
			$output = $CMS->tpl->Display($CMS->vars['tpl_name']."/main.post_view", false);
			return $output;
		}
	}
?>