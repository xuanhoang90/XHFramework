<?php /* Smarty version 3.1.28-dev/54, created on 2015-12-04 12:04:36
         compiled from "C:\xampp\htdocs\mtb\themes\tpl-01\main.post_view.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:1482556611ee412c0e0_28933695%%*/
$_valid = $_smarty_tpl->decodeProperties(array (
  'has_nocache_code' => false,
  'version' => '3.1.28-dev/54',
  'unifunc' => 'content_56611ee4147669_43770245',
  'file_dependency' => 
  array (
    '1f2a61130c7f7a9ba480aa88d2825e0d21c36fa6' => 
    array (
      0 => 'C:\\xampp\\htdocs\\mtb\\themes\\tpl-01\\main.post_view.tpl',
      1 => 1443547098,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
  'isChild' => false,
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_56611ee4147669_43770245')) {
function content_56611ee4147669_43770245 ($_smarty_tpl) {
$_smarty_tpl->compiled->nocache_hash = '1482556611ee412c0e0_28933695';
if ($_smarty_tpl->tpl_vars['notfound']->value == "true") {?>
	<div class="tpl-block-main-post">
		<div class="header">
			<div class="notfound-title">
				<h1>Post not found</h1>
			</div>
		</div>
		<div class="body">
			<div class="notfound-content">
				<p>Sorry, post not found</p>
			</div>
		</div>
		<div class="footer">
		
		</div>
	</div>
<?php } else { ?>
	<div class="tpl-block-main-post">
		<div class="header">
			<div class="xcol-left">
				<div class="thumbnail">
					<img class="thumb" src="<?php echo $_smarty_tpl->tpl_vars['post_detail']->value['image'];?>
" />
				</div>
			</div>
			<div class="xcol-right">
				<h1 class="post-title"><?php echo $_smarty_tpl->tpl_vars['post_detail']->value['name'];?>
</h1>
				<div class="post-details">
					<p class="detail post-date"><i class="fa fa-clock-o"></i> Time: <?php echo $_smarty_tpl->tpl_vars['post_detail']->value['date_created'];?>
</p>
					<p class="detail post-viewed"><i class="fa fa-eye"></i> Viewed: <?php echo $_smarty_tpl->tpl_vars['post_detail']->value['viewed'];?>
</p>
				</div>
			</div>
		</div>
		<div class="body">
			<?php echo $_smarty_tpl->tpl_vars['post_detail']->value['content'];?>

		</div>
		<div class="footer">
			<!-- Go to www.addthis.com/dashboard to customize your tools -->
			<?php echo '<script'; ?>
 type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5580e001347ed740" async="async"><?php echo '</script'; ?>
>

			<!-- Go to www.addthis.com/dashboard to customize your tools -->
			<div class="addthis_native_toolbox"></div>
		</div>
	</div>
<?php }
}
}
?>