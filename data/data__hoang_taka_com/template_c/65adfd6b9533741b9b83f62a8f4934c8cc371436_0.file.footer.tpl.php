<?php /* Smarty version 3.1.28-dev/54, created on 2015-11-05 11:31:18
         compiled from "C:\xampp\htdocs\mtb\themes\tpl-01\footer.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:21490563adb966c5867_00171895%%*/
$_valid = $_smarty_tpl->decodeProperties(array (
  'has_nocache_code' => false,
  'version' => '3.1.28-dev/54',
  'unifunc' => 'content_563adb966c96e5_31693280',
  'file_dependency' => 
  array (
    '65adfd6b9533741b9b83f62a8f4934c8cc371436' => 
    array (
      0 => 'C:\\xampp\\htdocs\\mtb\\themes\\tpl-01\\footer.tpl',
      1 => 1446694045,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
  'isChild' => false,
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_563adb966c96e5_31693280')) {
function content_563adb966c96e5_31693280 ($_smarty_tpl) {
$_smarty_tpl->compiled->nocache_hash = '21490563adb966c5867_00171895';
?>
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['style_dir']->value;?>
/js/jquery-2.1.4.min.js"><?php echo '</script'; ?>
>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['style_dir']->value;?>
/bootstrap/js/bootstrap.min.js"><?php echo '</script'; ?>
>
		<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['style_dir']->value;?>
/js/skrollr.min.js"><?php echo '</script'; ?>
>
		<?php echo '<script'; ?>
 type="text/javascript">
			skrollr.init({
				smoothScrolling: false,
				mobileDeceleration: 0.004
			});
		<?php echo '</script'; ?>
>
	</body>
</html><?php }
}
?>