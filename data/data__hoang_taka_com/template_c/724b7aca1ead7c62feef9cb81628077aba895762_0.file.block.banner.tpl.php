<?php /* Smarty version 3.1.28-dev/54, created on 2015-12-17 23:20:56
         compiled from "C:\xampp\htdocs\mtb\themes\tpl-01\block.banner.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:271185672e0e8d73ea2_32900467%%*/
$_valid = $_smarty_tpl->decodeProperties(array (
  'has_nocache_code' => false,
  'version' => '3.1.28-dev/54',
  'unifunc' => 'content_5672e0e8d77d24_67967356',
  'file_dependency' => 
  array (
    '724b7aca1ead7c62feef9cb81628077aba895762' => 
    array (
      0 => 'C:\\xampp\\htdocs\\mtb\\themes\\tpl-01\\block.banner.tpl',
      1 => 1449628431,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
  'isChild' => false,
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_5672e0e8d77d24_67967356')) {
function content_5672e0e8d77d24_67967356 ($_smarty_tpl) {
$_smarty_tpl->compiled->nocache_hash = '271185672e0e8d73ea2_32900467';
?>
<div class="tpl-01-block-banner" data-click-href="<?php echo $_smarty_tpl->tpl_vars['banner_link']->value;?>
">
	<img class="banner_image" src="<?php echo $_smarty_tpl->tpl_vars['banner_image']->value;?>
" />
	<div class="banner_html"><?php echo $_smarty_tpl->tpl_vars['banner_html']->value;?>
</div>
</div><?php }
}
?>