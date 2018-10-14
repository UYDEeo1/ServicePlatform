(function(e){function t(){if(!e.fn.ajaxSubmit.debug)return;var t="[jquery.form] "+Array.prototype.join.call(arguments,"");window.console&&window.console.log?window.console.log(t):window.opera&&window.opera.postError&&window.opera.postError(t)}e.fn.ajaxSubmit=function(n){function S(t){var r=new FormData;for(var i=0;i<t.length;i++){if(t[i].type=="file")continue;r.append(t[i].name,t[i].value)}o.find("input:file:enabled").each(function(){var t=e(this).attr("name"),n=this.files;if(t)for(var i=0;i<n.length;i++)r.append(t,n[i])}),n.data=null;var s=n.beforeSend;n.beforeSend=function(e,t){t.data=r,e.upload&&(e.upload.onprogress=function(e){t.progress(e.position,e.total)}),s&&s.call(t,e,t)},e.ajax(n)}function x(i){function S(e){var t=e.contentWindow?e.contentWindow.document:e.contentDocument?e.contentDocument:e.document;return t}function N(){function u(){try{var e=S(p).readyState;t("state = "+e),e.toLowerCase()=="uninitialized"&&setTimeout(u,50)}catch(n){t("Server abort: ",n," (",n.name,")"),O(E),y&&clearTimeout(y),y=undefined}}var n=o.attr("target"),i=o.attr("action");s.setAttribute("target",c),r||s.setAttribute("method","POST"),i!=f.url&&s.setAttribute("action",f.url),!f.skipEncodingOverride&&(!r||/post/i.test(r))&&o.attr({encoding:"multipart/form-data",enctype:"multipart/form-data"}),f.timeout&&(y=setTimeout(function(){g=!0,O(w)},f.timeout));var a=[];try{if(f.extraData)for(var l in f.extraData)a.push(e('<input type="hidden" name="'+l+'">').attr("value",f.extraData[l]).appendTo(s)[0]);f.iframeTarget||(h.appendTo("body"),p.attachEvent?p.attachEvent("onload",O):p.addEventListener("load",O,!1)),setTimeout(u,15),s.submit()}finally{s.setAttribute("action",i),n?s.setAttribute("target",n):o.removeAttr("target"),e(a).remove()}}function O(n){if(d.aborted||A)return;try{k=S(p)}catch(r){t("cannot access response document: ",r),n=E}if(n===w&&d){d.abort("timeout");return}if(n==E&&d){d.abort("server abort");return}if(!k||k.location.href==f.iframeSrc)if(!g)return;p.detachEvent?p.detachEvent("onload",O):p.removeEventListener("load",O,!1);var i="success",s;try{if(g)throw"timeout";var o=f.dataType=="xml"||k.XMLDocument||e.isXMLDoc(k);t("isXml="+o);if(!o&&window.opera&&(k.body==null||k.body.innerHTML=="")&&--L){t("requeing onLoad callback, DOM not available"),setTimeout(O,250);return}var u=k.body?k.body:k.documentElement;d.responseText=u?u.innerHTML:null,d.responseXML=k.XMLDocument?k.XMLDocument:k,o&&(f.dataType="xml"),d.getResponseHeader=function(e){var t={"content-type":f.dataType};return t[e]},u&&(d.status=Number(u.getAttribute("status"))||d.status,d.statusText=u.getAttribute("statusText")||d.statusText);var a=(f.dataType||"").toLowerCase(),c=/(json|script|text)/.test(a);if(c||f.textarea){var v=k.getElementsByTagName("textarea")[0];if(v)d.responseText=v.value,d.status=Number(v.getAttribute("status"))||d.status,d.statusText=v.getAttribute("statusText")||d.statusText;else if(c){var m=k.getElementsByTagName("pre")[0],b=k.getElementsByTagName("body")[0];m?d.responseText=m.textContent?m.textContent:m.innerText:b&&(d.responseText=b.textContent?b.textContent:b.innerText)}}else a=="xml"&&!d.responseXML&&d.responseText!=null&&(d.responseXML=M(d.responseText));try{C=D(d,a,f)}catch(n){i="parsererror",d.error=s=n||i}}catch(n){t("error caught: ",n),i="error",d.error=s=n||i}d.aborted&&(t("upload aborted"),i=null),d.status&&(i=d.status>=200&&d.status<300||d.status===304?"success":"error"),i==="success"?(f.success&&f.success.call(f.context,C,"success",d),l&&e.event.trigger("ajaxSuccess",[d,f])):i&&(s==undefined&&(s=d.statusText),f.error&&f.error.call(f.context,d,i,s),l&&e.event.trigger("ajaxError",[d,f,s])),l&&e.event.trigger("ajaxComplete",[d,f]),l&&!--e.active&&e.event.trigger("ajaxStop"),f.complete&&f.complete.call(f.context,d,i),A=!0,f.timeout&&clearTimeout(y),setTimeout(function(){f.iframeTarget||h.remove(),d.responseXML=null},100)}var s=o[0],u,a,f,l,c,h,p,d,v,m,g,y,b=!!e.fn.prop;if(i)if(b)for(a=0;a<i.length;a++)u=e(s[i[a].name]),u.prop("disabled",!1);else for(a=0;a<i.length;a++)u=e(s[i[a].name]),u.removeAttr("disabled");if(e(":input[name=submit],:input[id=submit]",s).length){alert('Error: Form elements must not have name or id of "submit".');return}f=e.extend(!0,{},e.ajaxSettings,n),f.context=f.context||f,c="jqFormIO"+(new Date).getTime(),f.iframeTarget?(h=e(f.iframeTarget),m=h.attr("name"),m==null?h.attr("name",c):c=m):(h=e('<iframe name="'+c+'" src="'+f.iframeSrc+'" />'),h.css({position:"absolute",top:"-1000px",left:"-1000px"})),p=h[0],d={aborted:0,responseText:null,responseXML:null,status:0,statusText:"n/a",getAllResponseHeaders:function(){},getResponseHeader:function(){},setRequestHeader:function(){},abort:function(n){var r=n==="timeout"?"timeout":"aborted";t("aborting upload... "+r),this.aborted=1,h.attr("src",f.iframeSrc),d.error=r,f.error&&f.error.call(f.context,d,r,n),l&&e.event.trigger("ajaxError",[d,f,r]),f.complete&&f.complete.call(f.context,d,r)}},l=f.global,l&&!(e.active++)&&e.event.trigger("ajaxStart"),l&&e.event.trigger("ajaxSend",[d,f]);if(f.beforeSend&&f.beforeSend.call(f.context,d,f)===!1){f.global&&e.active--;return}if(d.aborted)return;v=s.clk,v&&(m=v.name,m&&!v.disabled&&(f.extraData=f.extraData||{},f.extraData[m]=v.value,v.type=="image"&&(f.extraData[m+".x"]=s.clk_x,f.extraData[m+".y"]=s.clk_y)));var w=1,E=2,x=e("meta[name=csrf-token]").attr("content"),T=e("meta[name=csrf-param]").attr("content");T&&x&&(f.extraData=f.extraData||{},f.extraData[T]=x),f.forceSync?N():setTimeout(N,10);var C,k,L=50,A,M=e.parseXML||function(e,t){return window.ActiveXObject?(t=new ActiveXObject("Microsoft.XMLDOM"),t.async="false",t.loadXML(e)):t=(new DOMParser).parseFromString(e,"text/xml"),t&&t.documentElement&&t.documentElement.nodeName!="parsererror"?t:null},_=e.parseJSON||function(e){return window.eval("("+e+")")},D=function(t,n,r){var i=t.getResponseHeader("content-type")||"",s=n==="xml"||!n&&i.indexOf("xml")>=0,o=s?t.responseXML:t.responseText;return s&&o.documentElement.nodeName==="parsererror"&&e.error&&e.error("parsererror"),r&&r.dataFilter&&(o=r.dataFilter(o,n)),typeof o=="string"&&(n==="json"||!n&&i.indexOf("json")>=0?o=_(o):(n==="script"||!n&&i.indexOf("javascript")>=0)&&e.globalEval(o)),o}}if(!this.length)return t("ajaxSubmit: skipping submit process - no element selected"),this;var r,i,s,o=this;typeof n=="function"&&(n={success:n}),r=this.attr("method"),i=this.attr("action"),s=typeof i=="string"?e.trim(i):"",s=s||window.location.href||"",s&&(s=(s.match(/^([^#]+)/)||[])[1]),n=e.extend(!0,{url:s,success:e.ajaxSettings.success,type:r||"GET",iframeSrc:/^https/i.test(window.location.href||"")?"javascript:false":"about:blank"},n);var u={};this.trigger("form-pre-serialize",[this,n,u]);if(u.veto)return t("ajaxSubmit: submit vetoed via form-pre-serialize trigger"),this;if(n.beforeSerialize&&n.beforeSerialize(this,n)===!1)return t("ajaxSubmit: submit aborted via beforeSerialize callback"),this;var a=n.traditional;a===undefined&&(a=e.ajaxSettings.traditional);var f,l,c,h=this.formToArray(n.semantic);n.data&&(n.extraData=n.data,f=e.param(n.data,a));if(n.beforeSubmit&&n.beforeSubmit(h,this,n)===!1)return t("ajaxSubmit: submit aborted via beforeSubmit callback"),this;this.trigger("form-submit-validate",[h,this,n,u]);if(u.veto)return t("ajaxSubmit: submit vetoed via form-submit-validate trigger"),this;var p=e.param(h,a);f&&(p=p?p+"&"+f:f),n.type.toUpperCase()=="GET"?(n.url+=(n.url.indexOf("?")>=0?"&":"?")+p,n.data=null):n.data=p;var d=[];n.resetForm&&d.push(function(){o.resetForm()}),n.clearForm&&d.push(function(){o.clearForm(n.includeHidden)});if(!n.dataType&&n.target){var v=n.success||function(){};d.push(function(t){var r=n.replaceTarget?"replaceWith":"html";e(n.target)[r](t).each(v,arguments)})}else n.success&&d.push(n.success);n.success=function(e,t,r){var i=n.context||n;for(var s=0,u=d.length;s<u;s++)d[s].apply(i,[e,t,r||o,o])};var m=e("input:file:enabled[value]",this),g=m.length>0,y="multipart/form-data",b=o.attr("enctype")==y||o.attr("encoding")==y,w=!!(g&&m.get(0).files&&window.FormData);t("fileAPI :"+w);var E=(g||b)&&!w;return n.iframe!==!1&&(n.iframe||E)?n.closeKeepAlive?e.get(n.closeKeepAlive,function(){x(h)}):x(h):(g||b)&&w?(n.progress=n.progress||e.noop,S(h)):e.ajax(n),this.trigger("form-submit-notify",[this,n]),this},e.fn.ajaxForm=function(n){if(this.length===0){var r={s:this.selector,c:this.context};return!e.isReady&&r.s?(t("DOM not ready, queuing ajaxForm"),e(function(){e(r.s,r.c).ajaxForm(n)}),this):(t("terminating; zero elements found by selector"+(e.isReady?"":" (DOM not ready)")),this)}return this.ajaxFormUnbind().bind("submit.form-plugin",function(t){t.isDefaultPrevented()||(t.preventDefault(),e(this).ajaxSubmit(n))}).bind("click.form-plugin",function(t){var n=t.target,r=e(n);if(!r.is(":submit,input:image")){var i=r.closest(":submit");if(i.length==0)return;n=i[0]}var s=this;s.clk=n;if(n.type=="image")if(t.offsetX!=undefined)s.clk_x=t.offsetX,s.clk_y=t.offsetY;else if(typeof e.fn.offset=="function"){var o=r.offset();s.clk_x=t.pageX-o.left,s.clk_y=t.pageY-o.top}else s.clk_x=t.pageX-n.offsetLeft,s.clk_y=t.pageY-n.offsetTop;setTimeout(function(){s.clk=s.clk_x=s.clk_y=null},100)})},e.fn.ajaxFormUnbind=function(){return this.unbind("submit.form-plugin click.form-plugin")},e.fn.formToArray=function(t){var n=[];if(this.length===0)return n;var r=this[0],i=t?r.getElementsByTagName("*"):r.elements;if(!i)return n;var s,o,u,a,f,l,c;for(s=0,l=i.length;s<l;s++){f=i[s],u=f.name;if(!u)continue;if(t&&r.clk&&f.type=="image"){!f.disabled&&r.clk==f&&(n.push({name:u,value:e(f).val(),type:f.type}),n.push({name:u+".x",value:r.clk_x},{name:u+".y",value:r.clk_y}));continue}a=e.fieldValue(f,!0);if(a&&a.constructor==Array)for(o=0,c=a.length;o<c;o++)n.push({name:u,value:a[o]});else a!==null&&typeof a!="undefined"&&n.push({name:u,value:a,type:f.type})}if(!t&&r.clk){var h=e(r.clk),p=h[0];u=p.name,u&&!p.disabled&&p.type=="image"&&(n.push({name:u,value:h.val()}),n.push({name:u+".x",value:r.clk_x},{name:u+".y",value:r.clk_y}))}return n},e.fn.formSerialize=function(t){return e.param(this.formToArray(t))},e.fn.fieldSerialize=function(t){var n=[];return this.each(function(){var r=this.name;if(!r)return;var i=e.fieldValue(this,t);if(i&&i.constructor==Array)for(var s=0,o=i.length;s<o;s++)n.push({name:r,value:i[s]});else i!==null&&typeof i!="undefined"&&n.push({name:this.name,value:i})}),e.param(n)},e.fn.fieldValue=function(t){for(var n=[],r=0,i=this.length;r<i;r++){var s=this[r],o=e.fieldValue(s,t);if(o===null||typeof o=="undefined"||o.constructor==Array&&!o.length)continue;o.constructor==Array?e.merge(n,o):n.push(o)}return n},e.fieldValue=function(t,n){var r=t.name,i=t.type,s=t.tagName.toLowerCase();n===undefined&&(n=!0);if(n&&(!r||t.disabled||i=="reset"||i=="button"||(i=="checkbox"||i=="radio")&&!t.checked||(i=="submit"||i=="image")&&t.form&&t.form.clk!=t||s=="select"&&t.selectedIndex==-1))return null;if(s=="select"){var o=t.selectedIndex;if(o<0)return null;var u=[],a=t.options,f=i=="select-one",l=f?o+1:a.length;for(var c=f?o:0;c<l;c++){var h=a[c];if(h.selected){var p=h.value;p||(p=h.attributes&&h.attributes.value&&!h.attributes.value.specified?h.text:h.value);if(f)return p;u.push(p)}}return u}return e(t).val()},e.fn.clearForm=function(t){return this.each(function(){e("input,select,textarea",this).clearFields(t)})},e.fn.clearFields=e.fn.clearInputs=function(e){var t=/^(?:color|date|datetime|email|month|number|password|range|search|tel|text|time|url|week)$/i;return this.each(function(){var n=this.type,r=this.tagName.toLowerCase();t.test(n)||r=="textarea"||e&&/hidden/.test(n)?this.value="":n=="checkbox"||n=="radio"?this.checked=!1:r=="select"&&(this.selectedIndex=-1)})},e.fn.resetForm=function(){return this.each(function(){(typeof this.reset=="function"||typeof this.reset=="object"&&!this.reset.nodeType)&&this.reset()})},e.fn.enable=function(e){return e===undefined&&(e=!0),this.each(function(){this.disabled=!e})},e.fn.selected=function(t){return t===undefined&&(t=!0),this.each(function(){var n=this.type;if(n=="checkbox"||n=="radio")this.checked=t;else if(this.tagName.toLowerCase()=="option"){var r=e(this).parent("select");t&&r[0]&&r[0].type=="select-one"&&r.find("option").selected(!1),this.selected=t}})},e.fn.ajaxSubmit.debug=!1})(jQuery)