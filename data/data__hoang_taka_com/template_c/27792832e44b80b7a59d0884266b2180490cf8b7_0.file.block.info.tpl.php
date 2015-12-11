<?php /* Smarty version 3.1.28-dev/54, created on 2015-12-12 00:33:28
         compiled from "C:\xampp\htdocs\mtb\themes\tpl-01\block.info.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:23386566b08e8e45b00_71430157%%*/
$_valid = $_smarty_tpl->decodeProperties(array (
  'has_nocache_code' => false,
  'version' => '3.1.28-dev/54',
  'unifunc' => 'content_566b08e8e61089_06747194',
  'file_dependency' => 
  array (
    '27792832e44b80b7a59d0884266b2180490cf8b7' => 
    array (
      0 => 'C:\\xampp\\htdocs\\mtb\\themes\\tpl-01\\block.info.tpl',
      1 => 1449827250,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
  'isChild' => false,
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_566b08e8e61089_06747194')) {
function content_566b08e8e61089_06747194 ($_smarty_tpl) {
$_smarty_tpl->compiled->nocache_hash = '23386566b08e8e45b00_71430157';
?>
<div class="tpl-block-main-info">
	<h2 class="title"><?php echo $_smarty_tpl->tpl_vars['pagename']->value;?>
</h2>
	<div class="context">
		<?php if ($_smarty_tpl->tpl_vars['show_company']->value == "yes") {?>
			<p>Copyright <?php echo $_smarty_tpl->tpl_vars['company']->value;?>
 @ 2015 powered by XHFramework</p>
		<?php }?>
		<?php if ($_smarty_tpl->tpl_vars['show_email']->value == "yes") {?>
			<p>Email: <a href="mailto:<?php echo $_smarty_tpl->tpl_vars['email']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['email']->value;?>
</a></p>
		<?php }?>
		<?php if ($_smarty_tpl->tpl_vars['show_phone']->value == "yes") {?>
			<p>Hotline: <?php echo $_smarty_tpl->tpl_vars['phone']->value;?>
</p>
		<?php }?>
		<?php if ($_smarty_tpl->tpl_vars['show_blog']->value == "yes") {?>
			<p>Blog: <a href="<?php echo $_smarty_tpl->tpl_vars['blog']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['blog']->value;?>
</a></p>
		<?php }?>
	</div>
</div><?php }
}
?>