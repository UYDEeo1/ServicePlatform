 	var sysoutIndex = 0;
 	var sysoutIsOpen = false;
 	var sysoutHeadColor = "red";
 	var sysoutContentColor = "#444444";
// 	var sysoutHeight = 0;
	function openSysout(usersysout)
 	{
		if(sysoutIsOpen||usersysout==0)
		{
			return;
		}
		sysoutIsOpen = true;
 		jQuery("body").append("<div id=\"sysout\" onclick=\"sysoutDisplay('hide')\"\
 			style=\"position: absolute;color:"+sysoutHeadColor+";width: 80px;height:60px;left:90%;top:90%;background-color:#eeeeee;overflow:auto;z-index: 20;\">\
 				<button id=\"sysoutclean\" onclick=\"sysoutclean()\" style=\"position:relative fixed;left:280px;top:4px;width:50px;height:28px;margin:4px;color:#FF6600;\">clean</button>\
 			</div>");	
 		jQuery("#sysoutclean").before("<div id=\"sysoutBoxHead\" class='sysoutBoxHead' style='position:relative;float:left;\
				width:280px;'>\
					<b style='position:relative;margin:4px;color:"+sysoutHeadColor+";'>sysout:</b>\
				</div>");
 	}
 	
 	function sysout(str)
 	{
 		if(!sysoutIsOpen)
		{
			return;
		}
 		jQuery("#sysoutclean").before("<div id=\"sysoutBox_"+sysoutIndex+"\" class='sysoutBox' style='position:relative;float:left;\
								width:280px;height:auto;'>\
									<b style='position:relative;margin:4px;color:"+sysoutContentColor+";width:270px;'>"+str+"</b>\
								</div>");
// 		sysoutHeight += jQuery("#sysoutBox_"+sysoutIndex).height();
// 		jQuery("#sysout").scrollTop( sysoutHeight );
 		jQuery("#sysout").scrollTop( jQuery("#sysout")[0].scrollHeight );
 		sysoutDisplay("show");
 	}
 	
 	function sysoutDisplay(action)
 	{
 		var width = parseInt(jQuery("#sysout").css("width"));
 		if(width==80&&action!="clean")
 		{
 			jQuery("#sysout").animate({
    		"height":"200px",
   	 		"width":"300px",
   	 		"left":"70%",
   	 		"top":"63%"
  			},500);
 		}
 		else if(width==300&&action=="hide")
 		{
 			jQuery("#sysout").animate({
    		"height":"60px",
   	 		"width":"80px",
   	 		"left":"90%",
   	 		"top":"85%"
  			},500);
 		}
 	}	
 	
 	function sysoutclean()
 	{
 		jQuery("#sysout").click(function(){});
 		jQuery(".sysoutBox").remove();
 		sysoutDisplay("clean");
 	}