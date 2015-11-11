<?php
	//check access
	if (!defined('ROOT_ACCESS')) {
		echo "Access denies!";exit;
	}
	$language = array(
		'page_title_home' => 'Home page',
		'page_title_post' => 'Post',
		'page_title_post_category' => 'Post category',
		'page_title_product' => 'Product',
		'page_title_product_category' => 'Product category',
	);