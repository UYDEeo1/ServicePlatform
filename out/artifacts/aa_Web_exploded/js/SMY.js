
var lastMouseoverOn = -1;
var liveTileStatus = {};
var tileThreadId = {};
var minDelay = 10000;
var detalDely = 2000;
var adMinDelay = 5000;
var isLoadImgTimeout = [false,false,false,false];
var isAdCarouselPlaying = [false,false,false,false];
var loadImgTimeoutTime = 5000;
var carouselSelectLength = {};
var setCarouselInterval;

jQuery(document).ready(function() {


	
	openSysout(0);
	
	
	
	tileThreadId["carousel_" + 0] = setTimeout(function() {
		chooseCarousel(0);
	}, Math.floor(Math.random() * detalDely) + minDelay);
	
	tileThreadId["carousel_" + 1] = setTimeout(function() {
		chooseCarousel(1);
	}, Math.floor(Math.random() * detalDely) + minDelay);
	
	tileThreadId["carousel_" + 2] = setTimeout(function() {
		chooseCarousel(2);
	}, Math.floor(Math.random() * detalDely) + minDelay);
	
	tileThreadId["carousel_" + 3] = setTimeout(function() {
		chooseCarousel(3);
	}, Math.floor(Math.random() * detalDely) + minDelay);
	
	tileThreadId["carousel_" + 6] = setTimeout(function() {
		chooseCarousel(6);
	}, Math.floor(Math.random() * detalDely) + minDelay);
	
	getCarouselContent();
	
	setCarouselInterval = setInterval(function(){
		setCarousel();
	},500);

	$(".carousel-select-img").click(function() {
		var id = $(this)[0].id;
		sysout(id);
		var carouselId = id.split('_')[2];
		var selecteId = id.split('_')[3];
		
		chooseCarousel(carouselId,selecteId);
	});

});

function getCarouselContent()
{
	
	//获取最新的公告
	getNewNotices();
	
	//获取广告
	//getFiveAd();
	
	getAds(1);
	
	getAds(2);
	
	getAds(3);
	
	getAds(4);
	
	//getNewRedian();
	
//	getInfoOfLeyou();//乐游暂时隐藏
	
	getNewCitizenSearch();
	
	getThreeYpass();
	
	getThreeShanghaiNews();
	
	//获取机构3个，之前是两个，由于现在乐游一隐藏了，获取三个
	getNewRecommend2();
	
	getThreeWenda();
	
	getConsumeRights();
	
	getFiveApp();
	
	
}

//获取最新的公告
function getNewNotices()
{
	jQuery.ajax({  
    	url:ctx+"/getNewNotices?d="+new Date().getTime(),
        type:"get",
        dataType:"html",
        success:function(data,status){  
            	
                if(status == "success"){ 
                	var obj = jQuery.parseJSON(data);  
                	if(obj!=null)
                	{
                		var notices = obj.data.rows;
                		var flag = 0;
                		if(notices.length > 0)
                		{
                    		for(var i=0;i < notices.length;i++)
                    		{
                    			var tempTitle = notices[i].title;
                    			if(tempTitle.length > 16)
                    			{
                    				tempTitle = tempTitle.substring(0,16)+"...";
                    			}
                    			jQuery("#notice").append("<div style=\"float:left;width: 292px;text-align: center;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;border-left:1px solid #E6E6E6;\">\
                				<a id=\"notice_item_"+i+"\" href=\""+notices[i].url+"\" target=\"_blank\" style=\"margin: 10px 0 10px 0;display: block;font-size: 12px;font-family: 宋体;color: #484848;\">\
                					"+tempTitle+"  "+notices[i].timestamp.split(" ")[0]+"\
                				</a>\
                			</div>");
                    			
                    			if( (notices[i].url).indexOf("/cms")>=0 && flag == 0){
                    				$("#notice_achor").attr("href",notices[i].url).attr("target","_blank");
                    				flag = 1;
                    			}
                    			
                    			if(i == notices.length-1 && flag ==0){
                    				$("#notice_achor").attr("href",notices[i].url).attr("target","_blank");
                    				flag = 1;
                    			}
                    		}
                    		window.parent.document.getElementById("indexIframe").style.height = "574px";
                    		$("#notice_div").slideDown();
                		}
                	}
              	}  
     	},  
        error:function(xhr,textStatus,errorThrown){
        }
	});
}


//获取最新的4个广告
function getFiveAd()
{
	jQuery.ajax({  
    	url:ctx+"/getFiveAd?d="+new Date().getTime(),
        type:"get",
        dataType:"html",
        success:function(data,status){  
            	
                if(status == "success"){ 
                	var obj = jQuery.parseJSON(data);  
                	if(obj!=null)
                	{
                		var ads = obj.data.rows;
                		
                		for(var i=0;i < obj.data.total;i++)
                		{
                			if(ads[i].adtype <= 2)
                			{
                				$("#img_ad_"+ads[i].adtype).attr("src",ads[i].image);
                    			$("#div_ad_"+ads[i].adtype).css({"visibility":"visible"});
                			}
                			else
                			{
                				jQuery("#div_ad_"+ads[i].adtype+"_div").replaceWith("<img class=\"full\" alt=\"\" src=\""+ads[i].image+"\"/>");
                			}
                			
//        					var adImg = new Image();
//        					adImg.src = ads[i].image;
//        					adImg.index = ads[i].adtype;
//        					adImg.onload = function(){
//        						$("#img_ad_"+this.index).attr("src",this.src);
//                    			$("#div_ad_"+this.index).css({"visibility":"visible"});
//        					};
                		}
//                		window.parent.document.getElementById("indexIframe").style.height = "620px";
                	}
              	}  
     	},  
        error:function(xhr,textStatus,errorThrown){
        }
	});
}

//获取对应广告位的3条广告，并进行轮播
function getAds(adtype)
{
	//console.log("getAds"+adtype); IE7、8导致js失效。
	jQuery.ajax({  
    	url:ctx+"/getFiveAd?adtype="+adtype+"&recordnum=3&d="+new Date().getTime(),
        type:"get",
        dataType:"html",
        success:function(data,status){  
            	
                if(status == "success"){ 
                	var obj = jQuery.parseJSON(data);  
                	if(obj!=null)
                	{
                		var ads = obj.data.rows;
                		var maxImgNum = obj.data.total;
                		var tempImgArr = new Array();
                		for(var i=0;i < maxImgNum;i++)
                		{
                			var tempImgId = "tempImgId_"+new Date().getTime();
                			tempImgArr[i] = tempImgId;
                			jQuery("body").append("<img id=\""+tempImgId+"\" src=\""+ads[i].image+"\" onload=\"loadImg("+adtype+",'"+i+"','"+tempImgId+"',"+maxImgNum+",'"+ads[i].link+"');\" class=\"hidden\"/>");
                		}
                		setTimeout(function(){
                			loadImgTimeout(adtype,tempImgArr);
                		}, loadImgTimeoutTime);
                	}
              	}  
     	},  
        error:function(xhr,textStatus,errorThrown){
        }
	});
}

function loadImg(adtype,imgId,tempImgId,maxImgNum,link)
{	
	if(isLoadImgTimeout[adtype-1] || isAdCarouselPlaying[adtype - 1])
	{
		return;
	}
	var tempImgSrc = $("#"+tempImgId).attr("src");
	$("#div_ad_"+adtype).append("<div id=\"div_ad_"+adtype+"_"+imgId+"\" onclick=\"if(notEmpty('"+link+"')){window.open('"+link+"');}\">\
						<img class=\"full adtype"+adtype+"\" src=\""+tempImgSrc+"\"/>\
					</div>");
	
	$("#"+tempImgId).remove();
	
	var allImgLoaded = true;
	for(var i=0;i < maxImgNum;i ++)
	{
		if($("#div_ad_"+adtype+"_"+i).length > 0)
		{
			if(!notEmpty($("#div_ad_"+adtype+"_"+i).find("img").attr("src")))
			{
				allImgLoaded = false;
				break;
			}
		}
		else
		{
			allImgLoaded = false;
			break;
		}
	}
	if(allImgLoaded)
	{
		isAdCarouselPlaying[adtype - 1] = true;
		$("#div_ad_"+adtype).css({"visibility":"visible"});
		$("#div_ad_"+adtype).liveTile({
		    animationComplete: function(tileData){        
		        $(this).liveTile("goto", getRandomOptionsWithDelay(adMinDelay));
		    }
		}).liveTile("goto", getRandomOptionsWithDelay(adMinDelay));
	}
}

function loadImgTimeout(adtype,tempImgArr)
{
	isLoadImgTimeout[adtype-1] = true;
	for(var i=0;i < tempImgArr.length;i ++)
	{
		$("#"+tempImgArr[i]).remove();
	}
	if(!isAdCarouselPlaying[adtype - 1])
	{
		isAdCarouselPlaying[adtype - 1] = true;
		$("#div_ad_"+adtype).css({"visibility":"visible"});
		$("#div_ad_"+adtype).liveTile({
		    animationComplete: function(tileData){        
		        $(this).liveTile("goto", getRandomOptionsWithDelay(adMinDelay));
		    }
		}).liveTile("goto", getRandomOptionsWithDelay(adMinDelay));
	}
}

//获取最新的市民热点
function getNewRedian()
{
	jQuery.ajax({  
    	url:ctx+"/getNewRedian?d="+new Date().getTime(),
        type:"get",
        dataType:"html",
        success:function(data,status){  
            	
                if(status == "success"){ 
                	var obj = jQuery.parseJSON(data);  
                	if(obj!=null && obj.data != null)
                	{
                		var content = obj.data.subContent;
                		jQuery("#carousel_0_0_div").replaceWith("<div style=\"width: 488px;height: 240px;position:relative;\">\
							<a href=\""+rmPageSmrd+"\" target=\"_top\" ><img alt=\"carousel_select\" class=\"full\" src=\""+obj.data.picUrl+"\"></a>\
						</div>\
						<div style=\"width: 133px;height: 78px;position: absolute;top: 0;left: 0;\">\
							<a href=\""+rmPageSmrd+"\" target=\"_top\" ><img alt=\"carousel_select\" src=\""+ctx+"/images/SMY/smrd.png\"></a>\
						</div>\
						<div style=\"width: 488px;height: 52px;line-height:52px;position: absolute;font-size:16px; bottom: 0;background-color: rgba(50,50,50,0.3);text-align: center;\">\
							<a href=\""+rmPageSmrd+"\" target=\"_top\" style=\"font-family: Microsoft YaHei;font-weight: 200;color: #ffffff;font-size:18px;text-decoration:none;letter-spacing:2px;\">"+obj.data.title+"</a>\
						</div>");
                	}
              	}  
     	},  
        error:function(xhr,textStatus,errorThrown){
        	if(jQuery("#carousel_0_0_a").length > 0)
        	{
        		jQuery("#carousel_0_0_div").replaceWith("<div id=\"carousel_0_0_div\" style=\"position:relative;left: 160px;top: 80px;\">\
    					信息获取失败\
    				</div>");
        	}
        }
	});
}

//获取3条今日动态
function getThreeShanghaiNews()
{
	jQuery.ajax({  
    	url:ctx+"/getThreeShanghaiNews?d="+new Date().getTime(),
        type:"get",
        dataType:"html",
        success:function(data,status){  
            	
                if(status == "success"){ 
                	var obj = jQuery.parseJSON(data);  
                	if(obj!=null && obj.data.total >= 3)
                	{
                		var content0 = obj.data.rows[0].text;
                		var content1 = obj.data.rows[1].text;
                		var content2 = obj.data.rows[2].text;

                		content0 = dealStr(content0);
                		content1 = dealStr(content1);            		
                		content2 = dealStr(content2);
                		
                		var cutLength = 25;
                		var Regx = /^[A-Za-z0-9]*$/;
                		for(var i=0;i < content0.length;i++)
                		{
                			var c = content0.charCodeAt(i); 
                			if(c > 255 || Regx.test(c))
                			{
                				content0 = content0.substring(i,content0.length < cutLength+i?content0.length:cutLength+i)+"...";
                				break;
                			}
                			
                		}
                		
                		for(var i=0;i < content1.length;i++)
                		{
                			var c = content1.charCodeAt(i); 
                			if(c > 255 || Regx.test(c))
                			{
                				content1 = content1.substring(i,content1.length < cutLength+i?content1.length:cutLength+i)+"...";
                				break;
                			}
                			
                		}
                		for(var i=0;i < content2.length;i++)
                		{
                			var c = content2.charCodeAt(i); 
                			if(c > 255 || Regx.test(c))
                			{
                				content2 = content2.substring(i,content2.length < cutLength+i?content2.length:cutLength+i)+"...";
                				break;
                			}
                			
                		}
                		
//                		jQuery("#carousel_0_1_div").replaceWith("<div style=\"position:relative;width: 464px;height: 218px;margin: 24px 12px 0 12px;\">\
//	                		<div><a href=\""+rmPageSmrd+"\" target=\"_top\" style=\"font-size: 16px;text-decoration:none;\"><b>1."+obj.data.rows[0].title.replace(/(^\s*)|(\s*$)/g, "") +"</b></a></div>\
//							<div style=\"margin-top: 4px;margin-bottom: 20px;\">\
//								<a href=\""+rmPageSmrd+"\" target=\"_top\" style=\"font-size: 16px;text-decoration:none;font-family: 微软雅黑;\"><small>"+content0+"</small></a>\
//							</div>\
//							<div><a href=\""+rmPageSmrd+"\" target=\"_top\" style=\"font-size: 16px;text-decoration:none;\"><b>2."+obj.data.rows[1].title.replace(/(^\s*)|(\s*$)/g, "") +"</b></a></div>\
//							<div style=\"margin-top: 4px;margin-bottom: 20px;\">\
//								<a href=\""+rmPageSmrd+"\" target=\"_top\" style=\"font-size: 16px;text-decoration:none;font-family: 微软雅黑;\"><small>"+content1+"</small></a>\
//							</div>\
//							<div><a href=\""+rmPageSmrd+"\" target=\"_top\" style=\"font-size: 16px;text-decoration:none;\"><b>3."+obj.data.rows[2].title.replace(/(^\s*)|(\s*$)/g, "") +"</b></a></div>\
//							<div style=\"margin-top: 4px;margin-bottom: 8px;\">\
//								<a href=\""+rmPageSmrd+"\" target=\"_top\" style=\"font-size: 16px;text-decoration:none;font-family: 微软雅黑;\"><small>"+content2+"</small></a>\
//							</div>\
//						</div>");
                		jQuery("#carousel_0_1_div").replaceWith("<div id=\"shdt_label\">\
							<a href=\""+rmPageSmrd+"\" target=\"_top\" style=\"text-decoration:none;\">上海动态</a>\
						</div>\
						<div id=\"shdt_content\">\
							<ul>\
								<li>\
									<img id=\"shdt_img_0\" src=\""+ctx+"/images/SMY/shdt_default.png"+"\" onclick=\"gotoLinkPage('"+rmPageSmrd+"')\"/>\
									<label onclick=\"gotoLinkPage('"+rmPageSmrd+"')\">"+obj.data.rows[0].title.replace(/(^\s*)|(\s*$)/g, "")+"</label>\
									<span>"+content0+"</span>\
								</li>\
								<li>\
									<img id=\"shdt_img_1\" src=\""+ctx+"/images/SMY/shdt_default.png"+"\" onclick=\"gotoLinkPage('"+rmPageSmrd+"')\"/>\
									<label onclick=\"gotoLinkPage('"+rmPageSmrd+"')\">"+obj.data.rows[1].title.replace(/(^\s*)|(\s*$)/g, "")+"</label>\
									<span>"+content1+"</span>\
								</li>\
								<li>\
									<img id=\"shdt_img_2\" src=\""+ctx+"/images/SMY/shdt_default.png"+"\" onclick=\"gotoLinkPage('"+rmPageSmrd+"')\"/>\
									<label onclick=\"gotoLinkPage('"+rmPageSmrd+"')\">"+obj.data.rows[2].title.replace(/(^\s*)|(\s*$)/g, "")+"</label>\
									<span>"+content2+"</span>\
								</li>\
							</ul>\
						</div>");
                		for(var i=0;i < 3;i ++)
                		{
                			var tempImgId = "tempImgId_"+new Date().getTime();
                			jQuery("body").append("<img id=\""+tempImgId+"\" src=\""+obj.data.rows[i].image+"\" onload=\"loadSHDTImg('shdt_img_"+i+"','"+tempImgId+"');\" class=\"hidden\"/>");
                		}
                		
                	}
              	}  
     	},  
        error:function(xhr,textStatus,errorThrown){
        	if(jQuery("#carousel_0_1_a").length > 0)
        	{
        		jQuery("#carousel_0_1_div").replaceWith("<div id=\"carousel_0_1_div\" style=\"position:relative;left: 160px;top: 80px;\">\
    					信息获取失败\
    				</div>");
        	}
        }
	});
}

function loadSHDTImg(targetImgId,tempImgId)
{
	var tempImgSrc = $("#"+tempImgId).attr("src");
	$("#"+targetImgId).attr("src",tempImgSrc);
	$("#"+tempImgId).remove();
}

//最新乐游活动
function getInfoOfLeyou()
{
	jQuery.ajax({  
    	url:ctx+"/getInfoOfLeyou?d="+new Date().getTime(),
        type:"get",
        dataType:"html",
        success:function(data,status){  
            	
                if(status == "success"){ 
                	var obj = jQuery.parseJSON(data);  
                	if(obj!=null)
                	{
                		var title = obj.data.title;
                		var index = title.indexOf("最新活动：");
                		index = index < 0?0:index;
                		title = title.substring(index+5,title.length);
                		jQuery("#carousel_1_0_div").replaceWith("<div id=\"carousel_1_0_div\" style=\"height: 112px;position:relative;float:left;margin-bottom: 14px;\">\
								<a href=\""+rmPageSqsh+"\" target=\"_top\"><img class=\"full\" alt=\"\" src=\""+obj.data.img+"\"/></a>\
							</div>\
							<div style=\"width:214px;height: 40px;position:relative;float:left;\">\
								<a style=\"font-size: 12px;text-decoration:none;\">最新活动：</a>\
								<br/>\
								<a href=\""+rmPageSqsh+"\" target=\"_top\"  style=\"font-size: 12px;text-decoration:none;\">"+title+"</a>\
							</div>");
                	}
              	}  
     	},  
        error:function(xhr,textStatus,errorThrown){
        	if(jQuery("#carousel_1_0_a").length > 0)
        	{
        		jQuery("#carousel_1_0_div").replaceWith("<div id=\"carousel_1_0_div\" style=\"position:relative;left: 60px;top: 80px;\">\
    					信息获取失败\
    				</div>");
        	}
        }
	});
}

//获取两个最新推荐社区商户
function getNewRecommend2()
{
	jQuery.ajax({  
    	url:ctx+"/open/service/recommend2?d="+new Date().getTime(),
        type:"get",
        dataType:"html",
        success:function(data,status){  
            	
                if(status == "success"){ 
                	var obj = jQuery.parseJSON(data);  
                	if(obj!=null)
                	{
                		//获取机构3个，之前是两个，由于现在乐游一隐藏了，获取三个
						for(var i=0;i<obj.data.data.length && i < 3;i++)
						{
							jQuery("#carousel_1_"+(i)+"_div").replaceWith("<div id=\"carousel_1_"+(i)+"_div\" style=\"width: 214px;height: 142px;position:relative;float:left;margin-bottom: 4px;\">\
											<a href=\"pages/live/commercial_index.jsp?serviceCode="+obj.data.data[i].code+"&society_code="+ obj.data.data[i].society_code+"\" target=\"_top\"><img class=\"full\" alt=\"\" src=\""+obj.data.data[i].icon+"\"/></a>\
										</div>\
										<div style=\"width:214px;height: 20px;position:relative;float:left;line-height: 20px\">\
											<a href=\"pages/live/commercial_index.jsp?serviceCode="+obj.data.data[i].code+"&society_code="+ obj.data.data[i].society_code+"\" target=\"_top\"  style=\"font-size: 14px;text-decoration:none;\">"+obj.data.data[i].name+"</a>\
										</div>");
						}
                	}
              	}  
     	},  
        error:function(xhr,textStatus,errorThrown){
        	for(var i=0;i < 3;i ++)
        	{
        		if(jQuery("#carousel_1_"+i+"_a").length > 0)
            	{
            		jQuery("#carousel_1_"+i+"_div").replaceWith("<div id=\"carousel_1_"+i+"_div\" style=\"position:relative;left: 60px;top: 80px;\">\
        					信息获取失败\
        				</div>");
            	}
        	}
        }  
	});
}

//获取最新市民调研
function getNewCitizenSearch()
{
	jQuery.ajax({  
    	url:ctx+"/getNewCitizenSearch?d="+new Date().getTime(),
        type:"get",
        dataType:"html",
        success:function(data,status){  
            	
                if(status == "success"){ 
                	var obj = jQuery.parseJSON(data);  
                	if(obj!=null)
                	{
                		var liStr = "";
                		var cutLength = 14;
                		for(var i=0;i < obj.data.length;i ++)
                		{
                			var titleName = obj.data[i].titleName;
                			if(titleName.length > cutLength)
                			{
                				titleName = titleName.substring(0,cutLength)+"...";
                			}
                			liStr += "<li onclick=\"gotoLinkPage('"+rmPageSmcy+"')\">"+titleName+"</li>\n";
                		}
						jQuery("#carousel_2_0_div").replaceWith("<div class=\"head_content_div\">\
							<label onclick=\"gotoLinkPage('"+rmPageSmcy+"')\">市民调查：</label>\
							<ul>\
								"+liStr+"\
							</ul>\
						</div>");
                	}
              	}  
     	},  
        error:function(xhr,textStatus,errorThrown){
        	if(jQuery("#carousel_2_0_a").length > 0)
        	{
        		jQuery("#carousel_2_0_div").replaceWith("<div id=\"carousel_2_0_div\" style=\"position:relative;left: 60px;top: 80px;\">\
    					信息获取失败\
    				</div>");
        	}
        }
	});
}

//获取最新问答
function getThreeWenda()
{
	jQuery.ajax({  
    	url:ctx+"/getThreeWenda?d="+new Date().getTime(),
        type:"get",
        dataType:"html",
        success:function(data,status){  
            	
                if(status == "success"){ 
//                	sysout(data);
                	var obj = jQuery.parseJSON(data);  
                	if(obj!=null && obj.data.rows.length >= 3)
                	{
                		var wenda0 = obj.data.rows[0].title;
                		var wenda1 = obj.data.rows[1].title;
                		var wenda2 = obj.data.rows[2].title;
                		var cutLength = 13;
                		wenda0 = wenda0.length > cutLength?wenda0.substring(0,cutLength)+"...":wenda0;
                		wenda1 = wenda1.length > cutLength?wenda1.substring(0,cutLength)+"...":wenda1;
                		wenda2 = wenda2.length > cutLength?wenda2.substring(0,cutLength)+"...":wenda2;
                		jQuery("#carousel_2_1_div").replaceWith("<br/>\
						<a href=\""+rmPageSmcy+"\" target=\"_top\" style=\"font-size: 15px;text-decoration:none;\"><b>市民问答：</b></a>\
						<br/>\
						<br/>\
						<a href=\""+rmPageSmcy+"\" target=\"_top\" style=\"font-size: 14px;text-decoration:none;display:block;padding-bottom:20px;\">1."+wenda0+"</a>\
						<a href=\""+rmPageSmcy+"\" target=\"_top\" style=\"font-size: 14px;text-decoration:none;display:block;padding-bottom:20px;\">2."+wenda1+"</a>\
						<a href=\""+rmPageSmcy+"\" target=\"_top\" style=\"font-size: 14px;text-decoration:none;display:block;padding-bottom:20px;\">3."+wenda2+"</a>\
						<br/>");
                	}
              	}  
     	},  
        error:function(xhr,textStatus,errorThrown){
        	if(jQuery("#carousel_2_1_a").length > 0)
        	{
        		jQuery("#carousel_2_1_div").replaceWith("<div id=\"carousel_2_1_div\" style=\"position:relative;left: 60px;top: 80px;\">\
    					信息获取失败\
    				</div>");
        	}
        }
	});
}

//获取最新的消费维权
function getConsumeRights()
{
	jQuery.ajax({  
    	url:ctx+"/getConsumeRights?d="+new Date().getTime(),
        type:"get",
        dataType:"html",
        success:function(data,status){  
            	
                if(status == "success"){ 
//                	sysout(data);
                	var obj = jQuery.parseJSON(data);  
                	if(obj!=null && obj.data.result.length >= 3)
                	{
                		var content = new Array();
                		content[0] = obj.data.result[0].content;
                		content[1] = obj.data.result[1].content;
                		content[2] = obj.data.result[2].content;
                		
                		content[0] = content[0].length > 15?content[0].substring(0,15)+"...":content[0];
                		content[1] = content[1].length > 15?content[1].substring(0,15)+"...":content[1];
                		content[2] = content[2].length > 15?content[2].substring(0,15)+"...":content[2];

                		jQuery("#carousel_2_2_div").replaceWith("<div style=\"width:214px;height: 20px;position:relative;float:left;top: 10px;\">\
							<a href=\""+rmPageSmcy+"\" target=\"_top\" style=\"font-size: 15px;text-decoration:none;\"><b>市民维权：</b></a>\
						</div>\
						<div style=\"width:214px;height: 136px;position:relative;float:left;top: 20px;\">\
							<a style=\"font-size: 12px;text-decoration:none;\">"+obj.data.result[0].name+"</a><br/>\
							<a href=\""+obj.data.result[0].url+"\" target=\"_blank\" style=\"font-size: 14px;text-decoration:none;\">"+content[0]+"</a>\
							<br/>\
							<a style=\"font-size: 12px;text-decoration:none;\">"+obj.data.result[1].name+"</a><br/>\
							<a href=\""+obj.data.result[1].url+"\" target=\"_blank\" style=\"font-size: 14px;text-decoration:none;\">"+content[1]+"</a>\
							<br/>\
							<a style=\"font-size: 12px;text-decoration:none;\">"+obj.data.result[2].name+"</a><br/>\
							<a href=\""+obj.data.result[2].url+"\" target=\"_blank\" style=\"font-size: 14px;text-decoration:none;\">"+content[2]+"</a>\
						</div>");
                	}
              	}  
     	},  
        error:function(xhr,textStatus,errorThrown){
        	if(jQuery("#carousel_2_2_a").length > 0)
        	{
        		jQuery("#carousel_2_2_div").replaceWith("<div id=\"carousel_2_2_div\" style=\"position:relative;left: 60px;top: 80px;\">\
    					信息获取失败\
    				</div>");
        	}
        }
	});
}

//获取最新3个易办事
function getThreeYpass()
{
	jQuery.ajax({  
    	url:ctx+"/getThreeYpass?d="+new Date().getTime(),
        type:"get",
        dataType:"html",
        success:function(data,status){  
            	
                if(status == "success"){ 
//                	sysout(data);
                	var obj = jQuery.parseJSON(data);  
                	if(obj!=null && obj.data.data.length >= 3)
                	{
                		var banshi0 = obj.data.data[0].affairsName;
                		var banshi1 = obj.data.data[1].affairsName;
                		var banshi2 = obj.data.data[2].affairsName;
                		banshi0 = banshi0.length > 15?banshi0.substring(0,15)+"...":banshi0;
                		banshi1 = banshi1.length > 15?banshi1.substring(0,15)+"...":banshi1;
                		banshi2 = banshi2.length > 15?banshi2.substring(0,15)+"...":banshi2;
                		jQuery("#carousel_6_0_div").replaceWith("<div style=\"width: 100%;height: 7px;\"></div>\
						<a style=\"font-size: 12px;\">办事事项：</a>\
						<br/>\
						<a href=\""+rmPageBsfw+"\" target=\"_top\" style=\"font-size: 14px;text-decoration:none;font-weight: bold;\">"+banshi0+"</a>\
						<br/>\
						<div style=\"border-bottom:dotted 1px white;width:100%;height:8px;margin-bottom: 3px;\"></div>\
						\
						<a style=\"font-size: 12px;\">办事事项：</a>\
						<br/>\
						<a href=\""+rmPageBsfw+"\" target=\"_top\" style=\"font-size: 14px;text-decoration:none;font-weight: bold;\">"+banshi1+"</a>\
						<br/>\
						<div style=\"border-bottom:dotted 1px white;width:100%;height:8px;margin-bottom: 3px;\"></div>\
						\
						<a style=\"font-size: 12px;\">办事事项：</a>\
						<br/>\
						<a href=\""+rmPageBsfw+"\" target=\"_top\" style=\"font-size: 14px;text-decoration:none;font-weight: bold;\">"+banshi2+"</a>\
						<br/>\
						<div style=\"border-bottom:dotted 1px white;width:100%;height:8px;margin-bottom: 3px;\"></div>");
                	}
              	}  
     	},  
        error:function(xhr,textStatus,errorThrown){
        	if(jQuery("#carousel_6_0_a").length > 0)
        	{
        		jQuery("#carousel_6_0_div").replaceWith("<div id=\"carousel_6_0_div\" style=\"position:relative;left: 60px;top: 80px;\">\
    					信息获取失败\
    				</div>");
        	}
        }
	});
}

//获取最新的5个App
function getFiveApp()
{
	jQuery.ajax({  
    	url:ctx+"/getFiveApp?d="+new Date().getTime(),
        type:"get",
        dataType:"html",
        success:function(data,status){  
            	
                if(status == "success"){ 
//                	sysout(data);
                	var obj = jQuery.parseJSON(data);
                	if(obj!=null && obj.data.length >= 5)
                	{
                		var app0 = obj.data[0].name;
                		var app1 = obj.data[1].name;
                		var app2 = obj.data[2].name;
                		var app3 = obj.data[3].name;
                		var app4 = obj.data[4].name;
                		var app5 = obj.data[5].name;
                		app0 = app0.length > 6?app0.substring(0,4)+"...":app0;
                		sysout(app0);
                		app1 = app1.length > 6?app1.substring(0,4)+"...":app1;
                		app2 = app2.length > 6?app2.substring(0,4)+"...":app2;
                		app3 = app3.length > 6?app3.substring(0,4)+"...":app3;
                		app4 = app4.length > 6?app4.substring(0,4)+"...":app4;
                		app5 = app5.length > 6?app5.substring(0,4)+"...":app5;
                		jQuery("#carousel_7_0_div").replaceWith("<div style=\"width:100%;height:18px;\"></div>\
						<div style=\"width: 105px;height: 34px;position:relative;float:left;margin: 0 4px 0 0\">\
							<a href=\""+rmPageYysd+"\" target=\"_top\"><img class=\"full\" alt=\"应用\" src=\""+apiUrl+"/"+obj.data[0].icon+"\" style=\"position:relative;float:left;width: 28px;height: 28px;margin: 0 5px 0 0;\"/></a>\
							<a href=\""+rmPageYysd+"\" target=\"_top\" style=\"position:relative;float:left;font-size: 12px;text-decoration:none;margin: 6px 0 6px 0;\">"+app0+"</a>\
						</div>\
						<div style=\"width: 105px;height: 34px;position:relative;float:left;\">\
							<a href=\""+rmPageYysd+"\" target=\"_top\"><img class=\"full\" alt=\"应用\" src=\""+apiUrl+"/"+obj.data[1].icon+"\" style=\"position:relative;float:left;width: 28px;height: 28px;margin: 0 5px 0 0;\"/></a>\
							<a href=\""+rmPageYysd+"\" target=\"_top\" style=\"position:relative;float:left;font-size: 12px;text-decoration:none;margin: 6px 0 6px 0;\">"+app1+"</a>\
						</div>\
						<div style=\"position:relative;float:left;border-bottom:dotted 0px white;width:100%;height:10px;margin-bottom: 10px;\"></div>\
						\
						<div style=\"width: 105px;height: 34px;position:relative;float:left;margin: 0 4px 0 0\">\
							<a href=\""+rmPageYysd+"\" target=\"_top\"><img class=\"full\" alt=\"应用\" src=\""+apiUrl+"/"+obj.data[2].icon+"\" style=\"position:relative;float:left;width: 28px;height: 28px;margin: 0 5px 0 0;\"/></a>\
							<a href=\""+rmPageYysd+"\" target=\"_top\" style=\"position:relative;float:left;font-size: 12px;text-decoration:none;margin: 6px 0 6px 0;\">"+app2+"</a>\
						</div>\
						<div style=\"width: 105px;height: 34px;position:relative;float:left;\">\
							<a href=\""+rmPageYysd+"\" target=\"_top\"><img class=\"full\" alt=\"应用\" src=\""+apiUrl+"/"+obj.data[3].icon+"\" style=\"position:relative;float:left;width: 28px;height: 28px;margin: 0 5px 0 0;\"/></a>\
							<a href=\""+rmPageYysd+"\" target=\"_top\" style=\"position:relative;float:left;font-size: 12px;text-decoration:none;margin: 6px 0 6px 0;\">"+app3+"</a>\
						</div>\
						<div style=\"position:relative;float:left;border-bottom:dotted 0px white;width:100%;height:10px;margin-bottom: 10px;\"></div>\
						\
						<div style=\"width: 105px;height: 34px;position:relative;float:left;margin: 0 4px 0 0\">\
							<a href=\""+rmPageYysd+"\" target=\"_top\"><img class=\"full\" alt=\"应用\" src=\""+apiUrl+"/"+obj.data[4].icon+"\" style=\"position:relative;float:left;width: 28px;height: 28px;margin: 0 5px 0 0;\"/></a>\
							<a href=\""+rmPageYysd+"\" target=\"_top\" style=\"position:relative;float:left;font-size: 12px;text-decoration:none;margin: 6px 0 6px 0;\">"+app4+"</a>\
						</div>\
						<div style=\"width: 105px;height: 34px;position:relative;float:left;\">\
							<a href=\""+rmPageYysd+"\" target=\"_top\"><img class=\"full\" alt=\"应用\" src=\""+apiUrl+"/"+obj.data[5].icon+"\" style=\"position:relative;float:left;width: 28px;height: 28px;margin: 0 5px 0 0;\"/></a>\
							<a href=\""+rmPageYysd+"\" target=\"_top\" style=\"position:relative;float:left;font-size: 12px;text-decoration:none;margin: 6px 0 6px 0;\">"+app5+"</a>\
						</div>");
                	}
              	}  
     	},  
        error:function(xhr,textStatus,errorThrown){
        	if(jQuery("#carousel_7_0_a").length > 0)
        	{
        		jQuery("#carousel_7_0_div").replaceWith("<div id=\"carousel_7_0_div\" style=\"position:relative;left: 60px;top: 80px;\">\
    					信息获取失败\
    				</div>");
        	}
        }
	});
}

function setCarousel()
{
	var isAllReady = true;
	
	//广告3，4
	isAllReady = !(loadingStrChange("div_ad_3_a"))&&isAllReady;
	
	isAllReady = !(loadingStrChange("div_ad_4_a"))&&isAllReady;
	
	//
	isAllReady = !(loadingStrChange("carousel_0_0_a"))&&isAllReady;
	
	isAllReady = !(loadingStrChange("carousel_0_1_a"))&&isAllReady;
	
	//
	isAllReady = !(loadingStrChange("carousel_1_0_a"))&&isAllReady;
	
	isAllReady = !(loadingStrChange("carousel_1_1_a"))&&isAllReady;
	
	isAllReady = !(loadingStrChange("carousel_1_2_a"))&&isAllReady;
	
	//
	isAllReady = !(loadingStrChange("carousel_2_0_a"))&&isAllReady;
	
	isAllReady = !(loadingStrChange("carousel_2_1_a"))&&isAllReady;
	
	isAllReady = !(loadingStrChange("carousel_2_2_a"))&&isAllReady;
	
	//
	isAllReady = !(loadingStrChange("carousel_6_0_a"))&&isAllReady;
	
	//
	isAllReady = !(loadingStrChange("carousel_7_0_a"))&&isAllReady;
	
	if(isAllReady)
	{
		clearInterval(setCarouselInterval);
	}
}

function loadingStrChange(id)
{
	var ret = $("#"+id).length > 0;
	if(ret && id.indexOf("div_ad") < 0)
	{
		var loadingStr = $("#"+id).text();
		loadingStr += ".";
		loadingStr = loadingStr == "loading...."?"loading":loadingStr;
		$("#"+id).text(loadingStr);
	}
	return ret;
}

function chooseCarousel(carouselId, selecteId) {
	clearTimeout(tileThreadId["carousel_" + carouselId]);
	tileThreadId["carousel_" + carouselId] = -1;
	
	if (carouselId == null) {
		return;
	}
	
	var selecteItemTotal = 0;
	if(carouselSelectLength["carousel_select_"+carouselId] != null)
	{
		selecteItemTotal = carouselSelectLength["carousel_select_"+carouselId];
	}
	else
	{
		for(var i=0; i < 3; i ++)
		{
			if($("img#carousel_select_"+carouselId+"_"+i).length > 0)
			{
				selecteItemTotal ++;
			}
			else
			{
				break;
			}
		}
		carouselSelectLength["carousel_select_"+carouselId] = selecteItemTotal;
	}
	
	
	$("#carousel_" + carouselId).liveTile("goto", getRandomOptions(selecteId));
	if (selecteId != null) {
		setTimeout(function(){
			var last = $("#carousel_" + carouselId).find(".active").index();
			for ( var i = 0; i < selecteItemTotal; i++) {
				if (last == i) {
					$("#carousel_select_" + carouselId + "_" + i).attr("src",
							"images/SMY/carouselSelectedSmall.png");
				} else {
					$("#carousel_select_" + carouselId + "_" + i).attr("src",
							"images/SMY/carouselNormalSmalll.png");
				}
			}
		},500);
	} else {
		for ( var i = 0; i < selecteItemTotal; i++) {
			$("#carousel_select_" + carouselId + "_" + i).attr("src",
					"images/SMY/carouselNormalSmalll.png");
		}
		var last = $("#carousel_" + carouselId).find(".active").index();
		var activeIndex = last == selecteItemTotal - 1?0:last + 1;
		$("#carousel_select_" + carouselId + "_" + activeIndex).attr("src", "images/SMY/carouselSelectedSmall.png");
	}
	tileThreadId["carousel_" + carouselId] = setTimeout(function() {
		chooseCarousel(carouselId);
	}, Math.floor(Math.random() * detalDely) + minDelay);
}

function getRandomOptions(selecteId) {
	var fb = Math.floor(Math.random() * 1001) % 2 == 0;
	var vh = Math.floor(Math.random() * 1001) % 2 == 0;

	return {
		index : selecteId == null ? "next" : selecteId,
		delay : 0,
		animationDirection : fb ? 'forward' : 'backward',
		direction : vh ? 'vertical' : 'horizontal'
	};
	// return {
	// index: selecteId == null?"next":selecteId,
	// delay: selecteId == null?Math.floor(Math.random() * detalDely) +
	// minDelay:0,
	// animationDirection: fb ? 'forward' : 'backward',
	// direction: vh ? 'vertical' : 'horizontal'
	// };
}

function getRandomOptionsWithDelay(tempDelay) {
	var fb = Math.floor(Math.random() * 1001) % 2 == 0;
	var vh = Math.floor(Math.random() * 1001) % 2 == 0;

	var delta = Math.random()*2000;
	tempDelay += delta;
	return {
		index : "next",
		delay : tempDelay,
		animationDirection : fb ? 'forward' : 'backward',
		direction : vh ? 'vertical' : 'horizontal'
	};
}

function gotoLinkPage(href) {
	window.parent.location.href = href;
}

function dealStr(str)
{
	
	str = str.replace(/<[^>]+>/g,"");
	
	
	var deleteStrs = ["\r","\n","<p>","</p>","&nbsp;","　　","　"," ","\t"];
	for(var i=0;i < deleteStrs.length;i++)
	{
		while(str.indexOf(deleteStrs[i]) >= 0)
		{
			str = str.replace(deleteStrs[i],"");
		}
	}

	return str;
}

function notEmpty(str)
{
	return str != null && str != "";
}

function setDelay(type,time)
{
	//setDelay('adMinDelay',10000)
	if(type == "minDelay")
	{
		minDelay = time;
	}
	else if(type == "adMinDelay")
	{
		adMinDelay = time;
	}
		
}
