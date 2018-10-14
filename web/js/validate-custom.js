jQuery.validator.addMethod("idcard", function(value, element) { 
	
    //var tel = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
    var tel18 = /^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/;
    var tel15 = /^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$/;
    if( value!=null){
    	return this.optional(element) || (tel18.test(value)&&checkParity(value));
    }
    return this.optional(element) || true;
}, "请检查身份证号码格式");

jQuery.validator.addMethod("mobile", function(value, element) {    
    var tel = /^13[0-9]{9}$|14[0-9]{9}|15[0-9]{9}$|18[0-9]{9}$|17[0-9]{9}$/;	    
    if( value!=null){
    	return this.optional(element) || tel.test(value);
    }
    return this.optional(element) || true;
}, "请检查手机号格式");

jQuery.validator.addMethod("seq", function(value, element) {    
    var tel = /^\d{12}$/;	    
    if( value!=null){
    	return this.optional(element) || tel.test(value);
    }
    return this.optional(element) || true;
}, "请输入12位的流水号");

jQuery.validator.addMethod("in6To20", function(value, element) {    
    //var tel = /^(?![0-9]+$)(?![a-zA-Z]+$)[A-Za-z0-9(!@#$%&_)]{6,16}$/;
	var tel = /^(?![0-9]+$)(?![a-zA-Z]+$)(?![\W_]+$)[\x21-\x7e]{6,16}$/;
    if( value!=null){
    	return this.optional(element) || tel.test(value);
    }
    return this.optional(element) || true;
}, "必须是6-16个英文字母、数字或符号，不能是纯数字");


jQuery.validator.addMethod("userNameCheck", function(value, element) {    
    var tel =  /^[a-zA-Z][A-Za-z0-9]{5,15}$/;	 
    if( value!=null){
    	return this.optional(element) || tel.test(value);
    }
    return this.optional(element) || true;
}, "6-16个字母或者数字组成，以字母开头");

jQuery.validator.addMethod("driveIdCheck", function(value, element) {    
    var tel = /^\d{12}$/;	    
    if( value!=null){
    	return this.optional(element) || tel.test(value);
    }
    return this.optional(element) || true;
}, "必须是12位数字");

jQuery.validator.addMethod("sscardCheck", function(value, element) {    
    var tel = /^[a-zA-Z]\d{7}[a-zA-Z0-9]$/;	    
    if( value!=null){
    	return this.optional(element) || tel.test(value);
    }
    return this.optional(element) || true;
}, "必须是1位字母和7或8位数字");

jQuery.validator.addMethod("ybcardCheck", function(value, element) {    
    var tel = /^\d{10}$/;	        
    if( value!=null){
    	return this.optional(element) || tel.test(value);
    }
    return this.optional(element) || true;
}, "必须是10位数字");

jQuery.validator.addMethod("gjjCheck", function(value, element) {    
    var tel = /^[0-9]*$/;	        
    if( value!=null){
    	return this.optional(element) || tel.test(value);
    }
    return this.optional(element) || true;
}, "必须是数字");


jQuery.validator.addMethod("space", function(value, element) {    
    var tel = /^\S*$/;	    
    if( value!=null){
    	return this.optional(element) || tel.test(value);
    }
    return this.optional(element) || true;
}, "内容不能有空格");


jQuery.validator.addMethod("_name", function(value, element) {    
    var tel = /^[^\x20-\x7e]+$/;	    
    if( value!=null){
    	return this.optional(element) || tel.test(value);
    }
    return this.optional(element) || true;
}, "必须是中文");

//身份证最后一位校验位的检测 http://heavenslv.iteye.com/blog/939300
checkParity = function(card) { 
    var len = card.length;  
    if(len == '18') {  
        var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);   
        var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2');   
        var cardTemp = 0, i, valnum;   
        for(i = 0; i < 17; i ++) {   
            cardTemp += card.substr(i, 1) * arrInt[i];   
        }   
        valnum = arrCh[cardTemp % 11];   
        if (valnum == card.substr(17, 1)) {  
            return true;  
        }  
        return false;  
    }  
    return false;  
};  