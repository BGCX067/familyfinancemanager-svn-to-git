<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TopMenuBar.ascx.cs" Inherits="Controls_TopMenuBar" %>

<link rel="Stylesheet" type="text/css" href="/<%= m_WebRoot %>/Script/build/menu/assets/skins/sam/menu.css" />

<script type="text/javascript" src="/<%= m_WebRoot %>/Script/build/animation/animation.js"></script>
<script type="text/javascript" src="/<%= m_WebRoot %>/Script/build/menu/menu.js"></script>

<div id="topMenu" class="yuimenubar yuimenubarnav">
    <div class="bd">
        <ul class="first-of-type">
            <li class="yuimenubaritem first-of-type">
                <a class="yuimenubaritemlabel" href="javascript:void(0);">Member Manager</a>
            </li>
            <li class="yuimenubaritem">
                <a class="yuimenubaritemlabel" href="javascript:void(0);">Category Manager</a>
            </li>
            <li class="yuimenubaritem">
                <a class="yuimenubaritemlabel" href="javascript:void(0);">Stat & Report</a>
            </li>
            <li class="yuimenubaritem">
                <a class="yuimenubaritemlabel" href="javascript:void(0);">Setting</a>
            </li>
        </ul>
    </div>
</div>



<script type="text/javascript">
    
    YAHOO.util.Event.onContentReady("topMenu", function() {
        var topMenu = new YAHOO.widget.MenuBar("topMenu", {
            autosubmenudisplay: true,
            hidedelay: 750,
            lazyload: true
        });
        
        var subMenuData = [
            {
                id: "memberManager",
                itemdata: [
                    {text: "Add Member", url: "/Views/Member/AddMember.aspx"},
                    {text: "Member List", url: "/Views/Member/MemberList.aspx"}
                ]
            }, 
            {
                id: "categoryManager",
                itemdata: [
                    {text: "Add Category", url: "/Views/Category/AddCategory.aspx"},
                    {text: "Category List", url: "/Views/Category/CategoryList.aspx"}
                ]
            }, 
            {
                id: "Stat & Report",
                itemdata: [
                    {text: "Stat", url: "/Views/Statistics/Stat.aspx"}
                ]
            },
            {
                id: "Setting",
                itemdata: [
                    {text: "Reset Password", url: "/Views/Setting/ResetPassword.aspx"}
                ]
            }     
        ]; 
        
        topMenu.subscribe("beforeRender", function() {
            if (this.getRoot() == this) {
                this.getItem(0).cfg.setProperty("submenu", subMenuData[0]);
                this.getItem(1).cfg.setProperty("submenu", subMenuData[1]);
                this.getItem(2).cfg.setProperty("submenu", subMenuData[2]);
                this.getItem(3).cfg.setProperty("submenu", subMenuData[3]);
            }
        }); 
        
        topMenu.render(); 
    });
    
</script>

