function getCountyName(code){
		if(code==310115){
			return "浦东区";
		}
		else if(code==310101){
			return "黄浦区";
		}
		else if(code==310106){
			return "静安区";
		}
		else if(code==310104){
			return "徐汇区";
		}
		else if(code==310105){
			return "长宁区";
		}
		else if(code==310107){
			return "普陀区";
		}
		else if(code==310108){
			return "闸北区";
		}
		else if(code==310109){
			return "虹口区";
		}
		else if(code==310110){
			return "杨浦区";
		}
		else if(code==310113){
			return "宝山区";
		}
		else if(code==310112){
			return "闵行区";
		}
		else if(code==310114){
			return "嘉定区";
		}
		else if(code==310116){
			return "金山区";
		}
		else if(code==310117){
			return "松江区";
		}
		else if(code==310118){
			return "青浦区";
		}
		else if(code==310120){
			return "奉贤区";
		}
		else if(code==310230){
			return "崇明区";
		}
		else{
			return "";
		}
	}



var countyArray = [
	{"code":"310113","name":"宝山"},    
   	{"code":"310105","name":"长宁"},
   	{"code":"310230","name":"崇明"},
   	{"code":"310120","name":"奉贤"},
   	{"code":"310109","name":"虹口"},
   	{"code":"310101","name":"黄浦"},
   	{"code":"310114","name":"嘉定"},
   	{"code":"310116","name":"金山"},
   	{"code":"310106","name":"静安"},
   	{"code":"310112","name":"闵行"},
   	{"code":"310115","name":"浦东"},
   	{"code":"310107","name":"普陀"},	
   	{"code":"310118","name":"青浦"},
   	{"code":"310117","name":"松江"},
   	{"code":"310104","name":"徐汇"},
   	{"code":"310110","name":"杨浦"},
   	{"code":"310108","name":"闸北"},
];





//\u6821\u9a8c\u624b\u673a\u53f7\u7801
function validatorMobilePhone(mobilephone){
	var  patrn=/^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/;
	if (!patrn.exec(mobilephone)) 
		return false ;
	else
		return true;
}

//\u6821\u9a8c\u666e\u901a\u7535\u8bdd\u53f7\u7801
function validatorPhone(phone){
	//var patrn=/^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/; 
	var patrn=/(^[0-9]{3,5}\-[0-9]{3,8}$)|(^[0-9]{3,8}$)|(^\([0-9]{3,4}\)[0-9]{3,8}$)|(^0{0,1}(13|15|18)[0-9]{9}$)/;
	if (!patrn.exec(phone))
		return false ;
	else 
		return true ;
}

//\u6821\u9a8c\u4f20\u771f\u53f7\u7801
function validatorFax(fax){
	var  patrn=/^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/; 
	if (!patrn.exec(fax)) 
		return false ;
	else
		return true;
}

//\u6821\u9a8c\u4e0d\u80fd\u8f93\u5165\u6570\u5b57
function hasNumber(str){
	var patrn = /[\d]/g;
	if (!patrn.exec(str))
		return true;
	else 
		return false;

}

//\u540d\u79f0\u8f93\u5165\u9a8c\u8bc1
function validateNameField(v) {
	if (v && v != "") {
		f = v.substr(0, 1);
		f1 = v.substr(v.length - 1, 1);
		if (f == ' ') {
			return '\u9996\u5b57\u6bcd\u4e0d\u80fd\u4e3a\u7a7a\u683c';
		}
		reg = /^[a-zA-Z0-9_\u4e00-\u9fa5\s\-]+$/;
		if (!reg.test(v)) {
			return '\u8f93\u5165\u9879\u53ea\u80fd\u5305\u542b\u4e2d\u6587,\u82f1\u6587,\u4e0b\u5212\u7ebf\u6216\u6a2a\u7ebf\uff01';
		}
		if (f1 == ' ') {
			return '\u5c3e\u5b57\u6bcd\u4e0d\u80fd\u4e3a\u7a7a\u683c';
		}
		return true;
	} else
		return true;
}

//\u4ee3\u7801\u8f93\u5165\u9a8c\u8bc1
function validateCodeField(v) {
	if (v && v != "") {
		reg = /^[a-zA-Z0-9_-]+$/;
		if (!reg.test(v)) {
			return '\u8f93\u5165\u9879\u53ea\u80fd\u5305\u542b\u82f1\u6587\u3001\u4e0b\u5212\u7ebf\u6216\u6a2a\u7ebf\uff01';
		}
		return true;
	} else
		return true;
}

//判断滚动条有没有滚动到底部
function reachBottom() {
  var scrollTop = 0;
  var clientHeight = 0;
  var scrollHeight = 0;
  if (document.documentElement && document.documentElement.scrollTop) {
      scrollTop = document.documentElement.scrollTop;
  } else if (document.body) {
      scrollTop = document.body.scrollTop;
  }
  if (document.body.clientHeight && document.documentElement.clientHeight) {
      clientHeight = (document.body.clientHeight < document.documentElement.clientHeight) ? document.body.clientHeight: document.documentElement.clientHeight;
  } else {
      clientHeight = (document.body.clientHeight > document.documentElement.clientHeight) ? document.body.clientHeight: document.documentElement.clientHeight;
  }
  scrollHeight = Math.max(document.body.scrollHeight, document.documentElement.scrollHeight);
  if (scrollTop + clientHeight == scrollHeight) {
      return true;
  } else {
      return false;
  }
}

/*
* IE下获取文件大小,需ActiveX支持
* input标签,type=file
* 在IE 7&8&9下必须转移焦点才能获得路径,故而需要prev参数传递高度起码1px的DI
*/
function getFileSize(upload,isIE,prev){
	typeof(upload)=="string" ? upload=document.getElementById(upload) : false;
	var size=0;
	if(isIE){//IE
		var fileSystem=false;
		/** 浏览器安全性设置问题 **/
		try{ fileSystem = new ActiveXObject("Scripting.FileSystemObject");
		}catch(e){ }
		if(fileSystem){
			var path="";
			//IE6直接获得路径
			if(isIE&&!window.XMLHttpRequest){
				path=upload.value;
			}else{
				upload.select();
				/** 必须转移焦点 ,框架内却不能upload.blur();实现 **/
				/** 参考:http://blog.csdn.net/jingyinghai/article/details/6719206 **/
				typeof(prev)=="string" ? document.getElementById(prev).focus() : prev.focus();
				path=document.selection.createRange().text;
				document.selection.empty();
			}
			size =fileSystem.GetFile(path).size;
			fileSystem=null;
			path=null;
		}
	}else{
		var file=upload.files[0];
		if(file.size!==undefined){
			size=file.size;//FF && Chrome
		}else{//Opera ???
			
		}
	}
	return size;
}

/** 
* 获取文件路径,注意此路径在FF/Chrome下不能真实反映文件名称
* input标签,type=file
* 在IE 7&8&9下必须转移焦点才能获得路径,故而需要prev参数传递高度起码1px的DIV
**/
function getFilePath(upload,isIE,prev){
	typeof(upload)=="string" ? upload=document.getElementById(upload) : false;
	var path="";
	if(isIE){
		//IE6直接获得路径
		if(isIE&&!window.XMLHttpRequest){
			return upload.value;
		}else{
			upload.select();
			/** 必须转移焦点 ,却不能upload.blur();实现 **/
			/** 参考:http://blog.csdn.net/jingyinghai/article/details/6719206 **/
			typeof(prev)=="string" ? document.getElementById(prev).focus() : prev.focus();
			path=document.selection.createRange().text;
			document.selection.empty();
			return path;
		}
	}else{
		var file=upload.files[0];
		if(file.getAsDataURL){//低版本ff(<8)
			return file.getAsDataURL();
		}else{
			if(window.URL){//高版本ff(>7)
				return window.URL.createObjectURL(file);
			}else{
				if(window.webkitURL){//chorme
					return window.webkitURL.createObjectURL(file);
				}else{//opera
				}
			}
		}
	}
	return upload.value;
}

/** 
* 获取文件后缀 
* input标签,type=file
**/
function getFileSuffix(upload,isIE){
	typeof(upload)=="string" ? upload=document.getElementById(upload) : false;
	var name=upload.value;
	return name.substring(name.lastIndexOf(".")+1).toLowerCase();
}

/** 
* 重置上传 
* input标签,type=file
**/
function resetFile(upload,isIE){
	typeof(upload)=="string" ? upload=document.getElementById(upload) : false;
	if(isIE){
		var newDom= upload.cloneNode(false);
		newDom.onchange= upload.onchange;//events are not cloned
		upload.parentNode.replaceChild(newDom,upload);
	}else{
		upload.value="";////FF Chrome Safari
		upload.value ? (file.type = "text",file.type = "file") : false;//opera
	}
}

function preViewFile(upload,prev){
	typeof(upload)=="string" ? upload=document.getElementById(upload) : false;
	typeof(prev)=="string" ? prev=document.getElementById(prev) : false;
	
	var isIE=/msie/.test(navigator.userAgent.toLowerCase());//juery 1.9的判断方法,旧版本用 $.browser.msie;
	var isIE6=isIE && !window.XMLHttpRequest;
	//重置背景
	isIE && !isIE6 ? prev.style.backgroundImage="" : prev.innerHTML="";
	
	var suffix=getFileSuffix(upload,isIE);
	if(suffix!="jpg" && suffix!="png" && suffix!="gif"){
		alert("请选择jpg,png,gif文件");
		resetFile(upload,isIE);
		return false;
	}
	
	var size=getFileSize(upload,isIE,prev)/1024;
	if(size>100){
		alert("选择文件必须小于100K");
		resetFile(upload,isIE);
		return false;
	}
	
	/** 注意此路径在FF/Chrome等浏览器下并不一定真实路径 **/
	var path=getFilePath(upload,isIE,prev);
	
	if(isIE && !isIE6){//IE6以上必须滤镜实现(浏览器安全性,禁止访问本地资源)
		prev.innerHTML = "";
		prev.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod = scale)";   
		prev.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = path;
	}else{//IE6&&FF&&Chrome
		prev.innerHTML = "<img src='"+path+"' style='width:100%;height:100%;'/>";
	}
	
	return true;
}

/**
* 预览应用截图
* @param upload
* @param prev
*/
function preViewAppScreenFile(upload,prev){
	typeof(upload)=="string" ? upload=document.getElementById(upload) : false;
	typeof(prev)=="string" ? prev=document.getElementById(prev) : false;
	
	var isIE=/msie/.test(navigator.userAgent.toLowerCase());//juery 1.9的判断方法,旧版本用 $.browser.msie;
	var isIE6=isIE && !window.XMLHttpRequest;
	//重置背景
	isIE && !isIE6 ? prev.style.backgroundImage="" : prev.innerHTML="";
	
	var suffix=getFileSuffix(upload,isIE);
	if(suffix!="jpg" && suffix!="png" && suffix!="gif" && suffix!="jpeg"){
		alert("请选择jpg,png,gif,jpeg文件");
		resetFile(upload,isIE);
		return false;
	}
	
	
	var path = getFilePath(upload,isIE,prev);
	
	
	
	if(isIE && !isIE6){//IE6以上必须滤镜实现(浏览器安全性,禁止访问本地资源)
		prev.innerHTML = "";
		
		prev.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod = scale)";   
		prev.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = path;
	}else{//IE6&&FF&&Chrome
		prev.innerHTML = "<img src='"+path+"' style='width:100%;height:100%;'/>";
	}
	
	return true;
}

/**
* 校验apk文件类型
* @param upload
* @param prev
* @returns {Boolean}
*/
function preViewApkFile(upload){
	typeof(upload)=="string" ? upload=document.getElementById(upload) : false;
	
	var isIE=/msie/.test(navigator.userAgent.toLowerCase());//juery 1.9的判断方法,旧版本用 $.browser.msie;

	var suffix=getFileSuffix(upload,isIE);
	if(suffix!="apk"){
		alert("请选择apk文件");
		resetFile(upload,isIE);
		return true;
	}
	return true;
}

