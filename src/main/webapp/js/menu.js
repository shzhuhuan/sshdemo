Ext.BLANK_IMAGE_URL = "Ext/resources/images/default/s.gif";
	//一级导航
	var root = new Ext.tree.TreeNode({
		id:"root",
		text:"根节点"
	});
	
	var quanxian;
	DWREngine.setAsync(false);
	Quanxian.getQuanxian(load);
	DWREngine.setAsync(true);
	function load(data) {
		quanxian = data;	
	}
	
	
		//用户管理
		var menuUserManager = new Ext.tree.TreeNode({
			id:"MenuUserManager",
			text:"用户管理",
			expanded:true
		});
		
		//用户添加
		var userAddMenu = new Ext.tree.TreeNode({
			id:"userAddMenu",
			text:"用户添加",
			listeners:{
				"click":userAddFn
			}
		});
		
		//用户管理
		var userManageMenu = new Ext.tree.TreeNode({
			id:"userManageMenu",
			text:"用户管理",
			listeners:{
				"click":userManageFn
			}
		});
		
		//用户查询
		var userQueryMenu = new Ext.tree.TreeNode({
			id:"userQueryMenu",
			text:"用户查询",
			listeners:{
				"click":userQueryFn
			}
		});
		menuUserManager.appendChild(userAddMenu);
		menuUserManager.appendChild(userManageMenu);
		menuUserManager.appendChild(userQueryMenu);
		
		root.appendChild(menuUserManager);
	
	//添加布尔类型的变量，用来判断该页面是否打开
	var userAddPageIsOpen = false;
	var userManagePageIsOpen = false;
	var userQueryPageIsOpen = false;
	var payOutAddPageIsOpen = false;
	var payOutManagePageIsOpen = false;
	var payOutQueryPageIsOpen = false;
	var inComeAddPageIsOpen = false;
	var inComeManagePageIsOpen = false;
	var inComeQueryPageIsOpen = false;