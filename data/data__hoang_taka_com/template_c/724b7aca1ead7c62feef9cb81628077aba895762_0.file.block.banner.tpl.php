<?php /* Smarty version 3.1.28-dev/54, created on 2015-12-15 03:13:54
         compiled from "C:\xampp\htdocs\mtb\themes\tpl-01\block.banner.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:4056566f23026cc988_18132957%%*/
$_valid = $_smarty_tpl->decodeProperties(array (
  'has_nocache_code' => false,
  'version' => '3.1.28-dev/54',
  'unifunc' => 'content_566f23026cc985_25712657',
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
if ($_valid && !is_callable('content_566f23026cc985_25712657')) {
function content_566f23026cc985_25712657 ($_smarty_tpl) {
$_smarty_tpl->compiled->nocache_hash = '4056566f23026cc988_18132957';
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