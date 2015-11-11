<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$CMS->object_data = new FrontObjectData();
	class FrontObjectData{
		public function __construct(){
			return true;
		}
		public function ConvertPostData($data = false){
			global $CMS, $DB;
			if($data){
				$res = array();
				foreach($data as $post){
					$tmp = "";
					$tmp['id'] = $post['id'];
					$tmp['viewed'] = $post['viewed'];
					$tmp['date_created'] = $post['date_created'];
					$tmp['image'] = $CMS->vars['root_domain']."/".$post['image'];
					$tmp['name'] = $post['name'];
					$tmp['nice_url'] = $CMS->vars['root_domain']."/post/".$post['nice_url'];
					$tmp['short_descripton'] = $post['short_descripton'];
					$tmp['content'] = $post['content'];
					array_push($res, $tmp);
				}
				return $res;
			}else{
				return false;
			}
		}
		public function LoadPostList($val = false){
			global $CMS, $DB;
			if($val){
				$DB->query("use ".WEBSITE_DBNAME);
				$limit = "0,".$val;
				$sql = $DB->query("SELECT * FROM object o,object_description od WHERE o.id=od.object_id AND od.lang_id='1' AND 1=1 AND o.type='3' AND o.delete='0' ORDER BY o.id DESC LIMIT {$limit}");
				if($data = $sql->fetchAll()){
					return $this->ConvertPostData($data);
				}else{
					return false;
				}
			}else{
				return false;
			}
		}
		public function GetPostDetail(){
			global $CMS, $DB;
			$DB->query("use ".WEBSITE_DBNAME);
			if($CMS->input['post'] != ""){
				$sql = $DB->query("SELECT * FROM object o,object_description od WHERE o.id=od.object_id AND od.lang_id='1' AND 1=1 AND o.type='3' AND o.delete='0' AND od.nice_url='{$CMS->input['post']}'");
				if($data = $sql->fetchAll()){
					return $this->ConvertPostData($data);
				}else{
					return false;
				}
			}else{
				$sql = $DB->query("SELECT * FROM object o,object_description od WHERE o.id=od.object_id AND od.lang_id='1' AND 1=1 AND o.type='3' AND o.delete='0'");
				if($data = $sql->fetchAll()){
					return $this->ConvertPostData($data);
				}else{
					return false;
				}
			}
			return;
		}
	}
?>