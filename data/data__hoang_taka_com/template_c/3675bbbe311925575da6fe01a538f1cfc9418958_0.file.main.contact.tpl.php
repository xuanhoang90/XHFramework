<?php /* Smarty version 3.1.28-dev/54, created on 2015-12-15 02:30:05
         compiled from "C:\xampp\htdocs\mtb\themes\tpl-01\main.contact.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:18160566f18bd2246f0_53759174%%*/
$_valid = $_smarty_tpl->decodeProperties(array (
  'has_nocache_code' => false,
  'version' => '3.1.28-dev/54',
  'unifunc' => 'content_566f18bd22c3f1_10288962',
  'file_dependency' => 
  array (
    '3675bbbe311925575da6fe01a538f1cfc9418958' => 
    array (
      0 => 'C:\\xampp\\htdocs\\mtb\\themes\\tpl-01\\main.contact.tpl',
      1 => 1450117157,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
  'isChild' => false,
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_566f18bd22c3f1_10288962')) {
function content_566f18bd22c3f1_10288962 ($_smarty_tpl) {
$_smarty_tpl->compiled->nocache_hash = '18160566f18bd2246f0_53759174';
?>
<div id="googleMap" style="width: auto;height:500px;"></div>
<?php echo '<script'; ?>
 src="http://maps.googleapis.com/maps/api/js"><?php echo '</script'; ?>
>
<?php if ($_smarty_tpl->tpl_vars['contact_info']->value) {?>
	<div class="col-md-6 contact-info">
		<h1>Contact</h1>
		<div>
			<p>Company: <?php echo $_smarty_tpl->tpl_vars['contact_info']->value['company'];?>
</p>
			<p>Email: <?php echo $_smarty_tpl->tpl_vars['contact_info']->value['email'];?>
</p>
			<p>Hotline: <?php echo $_smarty_tpl->tpl_vars['contact_info']->value['phone'];?>
</p>
		</div>
	</div>
<?php }?>
	<div class="col-md-6 contact-form">
		<form>
			<div class="row form-group">
				<label class="control-label col-md-4" for="g_name">Your name: </label>
				<div class="col-md-8">
					<input type="text" class="form-control g_name" name="g_name" placeholder="Your name" value="" />
				</div>
			</div>
			<div class="row form-group">
				<label class="control-label col-md-4" for="g_email">Your email: </label>
				<div class="col-md-8">
					<input type="text" class="form-control g_email" name="g_name" placeholder="Your email" value="" />
				</div>
			</div>
			<div class="row form-group">
				<label class="control-label col-md-4" for="g_title">Title: </label>
				<div class="col-md-8">
					<input type="text" class="form-control g_title" name="g_title" placeholder="Title" value="" />
				</div>
			</div>
			<div class="row form-group">
				<label class="control-label col-md-4" for="g_content">Content: </label>
				<div class="col-md-8">
					<textarea name="editor" id="editor" style="width: 100%;" placeholder="Content"></textarea>
				</div>
			</div>
		</form>
	</div><?php }
}
?>