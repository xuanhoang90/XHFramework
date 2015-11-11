$(function(){
	//reset data
	var _globAddItemNormal = $("#AddItemNormal");
	var _globAddItemMega = $("#AddItemMega");
	var _globSelectItemType = $("#SelectItemType");
	var _ResetXWindowItemNormal = function(){
		_globAddItemNormal.find(".setting-frame").find(".thumb").each(function(){
			$(this).attr({"src":"/admin/skin/style/images/default_image.png"});
		})
		_globAddItemNormal.find(".setting-frame").find(".name").each(function(){
			$(this).val("");
			$(this).attr({"data":""});
		})
		_globAddItemNormal.find(".setting-frame").find(".link").each(function(){
			$(this).val("");
		})
		_globAddItemNormal.find(".setting-frame").find(".append-tree").each(function(){
			$(this).prop("checked",false).change();
		})
		_globAddItemNormal.find(".setting-init").each(function(){
			$(this).find(".item-type-selection").prop("checked", false).change();
			$(this).removeClass("active");
		})
		_globAddItemNormal.find(".setting-init").find(".tab-slaver").hide();
		_globAddItemNormal.find(".setting-init").find(".item-type-selection").prop("checked", false).change();
		_globAddItemNormal.find(".setting-init").removeClass("active");
		_globAddItemNormal.find(".menu-item-link-input").addClass("active");
		_globAddItemNormal.find(".menu-item-link-input").find(".tab-slaver").show();
		_globAddItemNormal.find(".menu-item-link-input").find(".item-type-selection").prop("checked", true).change();
	}
	_globAddItemNormal.find(".tab-master").find(".checkbox").click(function(e){
		e.preventDefault();
		if(!$(this).parent().parent().hasClass("active")){
			_globAddItemNormal.find(".active").find(".tab-slaver").slideUp(300);
			_globAddItemNormal.find(".active").find(".item-type-selection").prop("checked", false).change();
			_globAddItemNormal.find(".active").removeClass("active");
			$(this).parent().parent().find(".tab-slaver").slideDown(300);
			$(this).parent().parent().find(".item-type-selection").prop("checked", true).change();
			$(this).parent().parent().addClass("active");
		}
	})
	
	//close
	_globAddItemNormal.find(".close-this").click(function(){
		_globAddItemNormal.fadeOut(300);
	})
	_globAddItemNormal.find(".close-this").click(function(){
		_globAddItemNormal.fadeOut(300);
	})
	_globAddItemMega.find(".close-this").click(function(){
		_globAddItemMega.fadeOut(300);
	})
	_globAddItemMega.find(".close-this").click(function(){
		_globAddItemMega.fadeOut(300);
	})
	_globSelectItemType.find(".close-this").click(function(){
		_globSelectItemType.fadeOut(300);
	})
	_globSelectItemType.find(".close-this").click(function(){
		_globSelectItemType.fadeOut(300);
	})
	//set sort data
	var _ResetSort = function(){
		$(".sortable").sortable({
			items: ".item-master",
			stop: function(){
				$(".sortable").find(".submenu").each(function(){
					if(!$(this).find(".menu-item").length){
						$(this).removeClass("submenu-normal");
						$(this).removeClass("submenu-mega");
					}
				})
			},
		});
		$(".submenu-normal").sortable({
			items: ".item-normal",
			connectWith: '.submenu-normal',
			stop: function(){
				$(".sortable").find(".submenu").each(function(){
					if(!$(this).find(".menu-item").length){
						$(this).removeClass("submenu-normal");
						$(this).removeClass("submenu-mega");
					}
				})
			}
		});
	}
	_ResetSort();
	//expand or collapse submenu
	$(document).on("click", ".quick-act .fa-expand", function(e){
		e.preventDefault();
		$(this).removeClass("fa-expand");
		$(this).addClass("fa-compress");
		$(this).parent().parent().find(".submenu").first().slideDown(200);
	})
	$(document).on("click", ".quick-act .fa-compress", function(e){
		e.preventDefault();
		$(this).removeClass("fa-compress");
		$(this).addClass("fa-expand");
		$(this).parent().parent().find(".submenu").first().slideUp(200);
	})
	$(document).on("click", ".add-item-master", function(e){
		e.preventDefault();
		_globAddItemNormal.fadeIn();
		_globAddItemNormal.removeClass("will-add-item-master");
		_globAddItemNormal.removeClass("will-add-item-slaver");
		_globAddItemNormal.addClass("will-add-item-master");
		_ResetXWindowItemNormal();
	})
	$(document).on("click", ".add-item-slaver", function(e){
		e.preventDefault();
		if(!$(this).parent().find(".submenu").first().find(".menu-item").length){
			$(this).parent().find(".submenu").first().removeClass("submenu-normal");
			$(this).parent().find(".submenu").first().removeClass("submenu-mega");
		}
		$(".submenu").removeClass("target-add-element");
		$(this).parent().find(".submenu").first().addClass("target-add-element");
		if($(this).parent().find(".submenu").first().hasClass("submenu-normal")){
			_globAddItemNormal.fadeIn();
			_ResetXWindowItemNormal();
		}else if($(this).parent().find(".submenu").first().hasClass("submenu-mega")){
			_globAddItemMega.fadeIn();
			_ResetXWindowItemNormal();
		}else{
			_globSelectItemType.fadeIn();
			_ResetXWindowItemNormal();
		}
		_globAddItemNormal.removeClass("will-add-item-master");
		_globAddItemNormal.removeClass("will-add-item-slaver");
		_globAddItemNormal.addClass("will-add-item-slaver");
	})
	
	//select menu item type
	_globSelectItemType.find(".target-item-normal").click(function(e){
		_globSelectItemType.hide();
		_globAddItemNormal.show();
		$(".target-add-element").addClass("submenu-normal");
	})
	_globSelectItemType.find(".target-item-mega").click(function(e){
		_globSelectItemType.hide();
		_globAddItemMega.show();
		$(".target-add-element").addClass("submenu-mega");
	})
	
	//add item normal proccess - slaver
	$(document).on("click",".will-add-item-slaver .apply-selected", function(){
		_globAddItemNormal.fadeOut(300);
		_globAddItemNormal.removeClass("will-add-item-master");
		_globAddItemNormal.removeClass("will-add-item-slaver");
		var _CurrentEditor = _globAddItemNormal.find(".setting-frame").find(".active");
		if(_CurrentEditor.find(".thumb").length){
			var _Thumbnail = _CurrentEditor.find(".thumb").attr("src");
		}else{
			var _Thumbnail = "/admin/skin/style/images/default_image.png";
		}
		var _Name = _CurrentEditor.find(".name").val();
		var _ID = parseInt(_CurrentEditor.find(".name").attr("data"));
		var _Link = _CurrentEditor.find(".link").val();
		if(_CurrentEditor.find(".append-tree").length){
			var _AppendTree = _CurrentEditor.find(".append-tree").prop("checked");
		}else{
			var _AppendTree = false;
		}
		var _ItemType = "";
		if(_CurrentEditor.hasClass("menu-item-link-input")){
			_ItemType = "menu-item-link-input";
		}
		if(_CurrentEditor.hasClass("menu-item-post")){
			_ItemType = "menu-item-post";
		}
		if(_CurrentEditor.hasClass("menu-item-post-category")){
			_ItemType = "menu-item-post-category";
		}
		if(_CurrentEditor.hasClass("menu-item-product")){
			_ItemType = "menu-item-product";
		}
		if(_CurrentEditor.hasClass("menu-item-product-category")){
			_ItemType = "menu-item-product-category";
		}
		var _TmpData = {
			name: _Name,
			link: _Link,
			image: _Thumbnail,
			tree: _AppendTree,
			type: _ItemType,
			id: _ID,
		};
		$(".target-add-element").append(
			'<div class="menu-item item-slaver item-normal xexpand" data=\''+JSON.stringify( _TmpData )+'\'>'+
				'<div class="quick-act">'+
					'<i class="fa fa-close"></i>'+
					'<i class="fa fa-cog"></i>'+
					'<i class="fa fa-compress"></i>'+
				'</div>'+
				'<div class="item-data">'+
					'<div class="icon-or-thumb">'+
						'<img class="thumbnail" src="'+_Thumbnail+'" />'+
					'</div>'+
					'<div class="menu-label">'+
						'<p>'+_Name+'</p>'+
					'</div>'+
				'</div>'+
				'<div class="submenu">'+
				'</div>'+
				'<span class="add-item-slaver disabled"><i class="fa fa-plus"></i></span>'+
			'</div>'
		);
		_ResetSort();
	})
	//add item normal proccess - master
	$(document).on("click",".will-add-item-master .apply-selected", function(){
		_globAddItemNormal.fadeOut(300);
		_globAddItemNormal.removeClass("will-add-item-master");
		_globAddItemNormal.removeClass("will-add-item-slaver");
		var _CurrentEditor = _globAddItemNormal.find(".setting-frame").find(".active");
		if(_CurrentEditor.find(".thumb").length){
			var _Thumbnail = _CurrentEditor.find(".thumb").attr("src");
		}else{
			var _Thumbnail = "/admin/skin/style/images/default_image.png";
		}
		var _Name = _CurrentEditor.find(".name").val();
		var _ID = parseInt(_CurrentEditor.find(".name").attr("data"));
		var _Link = _CurrentEditor.find(".link").val();
		if(_CurrentEditor.find(".append-tree").length){
			var _AppendTree = _CurrentEditor.find(".append-tree").prop("checked");
		}else{
			var _AppendTree = false;
		}
		var _ItemType = "";
		if(_CurrentEditor.hasClass("menu-item-link-input")){
			_ItemType = "menu-item-link-input";
		}
		if(_CurrentEditor.hasClass("menu-item-post")){
			_ItemType = "menu-item-post";
		}
		if(_CurrentEditor.hasClass("menu-item-post-category")){
			_ItemType = "menu-item-post-category";
		}
		if(_CurrentEditor.hasClass("menu-item-product")){
			_ItemType = "menu-item-product";
		}
		if(_CurrentEditor.hasClass("menu-item-product-category")){
			_ItemType = "menu-item-product-category";
		}
		var _TmpData = {
			name: _Name,
			link: _Link,
			image: _Thumbnail,
			tree: _AppendTree,
			type: _ItemType,
			id: _ID,
		};
		$(".add-item-master").before(
			'<div class="menu-item item-master xexpand" data=\''+JSON.stringify(_TmpData)+'\'>'+
				'<div class="quick-act">'+
					'<i class="fa fa-close"></i>'+
					'<i class="fa fa-cog"></i>'+
					'<i class="fa fa-compress"></i>'+
				'</div>'+
				'<div class="item-data">'+
					'<div class="icon-or-thumb">'+
						'<img class="thumbnail" src="'+_Thumbnail+'" />'+
					'</div>'+
					'<div class="menu-label">'+
						'<p>'+_Name+'</p>'+
					'</div>'+
				'</div>'+
				'<div class="submenu">'+
				'</div>'+
				'<span class="add-item-slaver disabled"><i class="fa fa-plus"></i></span>'+
			'</div>'
		);
		_ResetSort();
	})
	//remove menu item
	$(document).on("click", ".quick-act .fa-close", function(e){
		e.preventDefault();
		if(confirm("Are you sure?!")){
			$(this).parent().parent().fadeOut(300, function(){
				$(this).remove();
			});
		}
	})
	//config menu item
	$(document).on("click", ".quick-act .fa-cog", function(e){
		e.preventDefault();
		$(".menu-item").removeClass("menu-item-target-config");
		$(this).parent().parent().addClass("menu-item-target-config");
		var _DataSetting = JSON.parse($(this).parent().parent().attr("data"));
		if($(this).parent().parent().hasClass("item-normal") || $(this).parent().parent().hasClass("item-master")){
			//edit menu item normal
			_globAddItemNormal.fadeIn(300);
			_globAddItemNormal.removeClass("will-add-item-master");
			_globAddItemNormal.removeClass("will-add-item-slaver");
			_globAddItemNormal.addClass("will-config-menu-item");
			//reset data
			_globAddItemNormal.find(".setting-frame").find(".thumb").each(function(){
				$(this).attr({"src":"/admin/skin/style/images/default_image.png"});
			})
			_globAddItemNormal.find(".setting-frame").find(".name").each(function(){
				$(this).val("");
				$(this).attr({"data":""});
			})
			_globAddItemNormal.find(".setting-frame").find(".link").each(function(){
				$(this).val("");
			})
			_globAddItemNormal.find(".setting-frame").find(".append-tree").each(function(){
				$(this).prop("checked",false).change();
			})
			_globAddItemNormal.find(".setting-init").each(function(){
				$(this).find(".item-type-selection").prop("checked", false).change();
				$(this).removeClass("active");
			})
			_globAddItemNormal.find(".setting-init").find(".tab-slaver").hide();
			_globAddItemNormal.find(".setting-init").find(".item-type-selection").prop("checked", false).change();
			_globAddItemNormal.find(".setting-init").removeClass("active");
			_globAddItemNormal.find("."+_DataSetting.type).find(".tab-slaver").show();
			_globAddItemNormal.find("."+_DataSetting.type).find(".item-type-selection").prop("checked", true).change();
			_globAddItemNormal.find("."+_DataSetting.type).addClass("active");
			_globAddItemNormal.find("."+_DataSetting.type).find(".thumb").attr({"src": _DataSetting.image});
			_globAddItemNormal.find("."+_DataSetting.type).find(".name").val(_DataSetting.name);
			_globAddItemNormal.find("."+_DataSetting.type).find(".name").attr({"data": _DataSetting.id});
			_globAddItemNormal.find("."+_DataSetting.type).find(".link").val(_DataSetting.link);
			_globAddItemNormal.find("."+_DataSetting.type).find(".append-tree").prop("checked", _DataSetting.tree).change();
		}
	})
	//Apply config
	$(document).on("click",".will-config-menu-item .apply-selected", function(){
		_globAddItemNormal.fadeOut(300);
		_globAddItemNormal.removeClass("will-config-menu-item");
		var _CurrentEditor = _globAddItemNormal.find(".setting-frame").find(".active");
		if(_CurrentEditor.find(".thumb").length){
			var _Thumbnail = _CurrentEditor.find(".thumb").attr("src");
		}else{
			var _Thumbnail = "/admin/skin/style/images/default_image.png";
		}
		var _Name = _CurrentEditor.find(".name").val();
		var _ID = parseInt(_CurrentEditor.find(".name").attr("data"));
		var _Link = _CurrentEditor.find(".link").val();
		if(_CurrentEditor.find(".append-tree").length){
			var _AppendTree = _CurrentEditor.find(".append-tree").prop("checked");
		}else{
			var _AppendTree = false;
		}
		var _ItemType = "";
		if(_CurrentEditor.hasClass("menu-item-link-input")){
			_ItemType = "menu-item-link-input";
		}
		if(_CurrentEditor.hasClass("menu-item-post")){
			_ItemType = "menu-item-post";
		}
		if(_CurrentEditor.hasClass("menu-item-post-category")){
			_ItemType = "menu-item-post-category";
		}
		if(_CurrentEditor.hasClass("menu-item-product")){
			_ItemType = "menu-item-product";
		}
		if(_CurrentEditor.hasClass("menu-item-product-category")){
			_ItemType = "menu-item-product-category";
		}
		var _TmpData = {
			name: _Name,
			link: _Link,
			image: _Thumbnail,
			tree: _AppendTree,
			type: _ItemType,
			id: _ID,
		};
		$(".menu-item-target-config").attr({"data": JSON.stringify(_TmpData)});
		$(".menu-item-target-config").find(".item-data").first().find(".icon-or-thumb").find(".thumbnail").attr({"src":_Thumbnail});
		$(".menu-item-target-config").find(".item-data").first().find(".menu-label").find("p").html(_Name);
		_ResetSort();
	})
})