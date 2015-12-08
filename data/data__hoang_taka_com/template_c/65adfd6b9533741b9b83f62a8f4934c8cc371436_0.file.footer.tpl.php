<?php /* Smarty version 3.1.28-dev/54, created on 2015-12-06 22:51:23
         compiled from "C:\xampp\htdocs\mtb\themes\tpl-01\footer.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:266765664597b409ad7_65892827%%*/
$_valid = $_smarty_tpl->decodeProperties(array (
  'has_nocache_code' => false,
  'version' => '3.1.28-dev/54',
  'unifunc' => 'content_5664597b4117d8_81032636',
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
if ($_valid && !is_callable('content_5664597b4117d8_81032636')) {
function content_5664597b4117d8_81032636 ($_smarty_tpl) {
$_smarty_tpl->compiled->nocache_hash = '266765664597b409ad7_65892827';
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