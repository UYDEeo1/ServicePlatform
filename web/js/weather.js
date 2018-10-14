
/*图片对照数组*/
var weatherIconData = [
	{
		"weather":"晴",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/qing.png",
		"pic":"/smmail/cop/images/weather/qing.png"
	},{
		"weather":"多云",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/duoyun.png",
		"pic":"/smmail/cop/images/weather/duoyun.png"
	},{
		"weather":"阴",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/yin.png",
		"pic":"/smmail/cop/images/weather/yin.png"
	},{
		"weather":"阵雨",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/zhenyu.png",
		"pic":"/smmail/cop/images/weather/zhenyu.png"
	},{
		"weather":"雷阵雨",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/leizhenyu.png",
		"pic":"/smmail/cop/images/weather/leizhenyu.png"
	},{
		"weather":"雷阵雨伴有冰雹",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/leizhenyubanyoubingbao.png",
		"pic":"/smmail/cop/images/weather/leizhenyubanyoubingbao.png"
	},{
		"weather":"雨夹雪",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/yujiaxue.png",
		"pic":"/smmail/cop/images/weather/yujiaxue.png"
	},{
		"weather":"小雨",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/xiaoyu.png",
		"pic":"/smmail/cop/images/weather/xiaoyu.png"
	},{
		"weather":"中雨",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/zhongyu.png",
		"pic":"/smmail/cop/images/weather/zhongyu.png"
	},{
		"weather":"大雨",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/dayu.png",
		"pic":"/smmail/cop/images/weather/dayu.png"
	},{
		"weather":"暴雨",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/baoyu.png",
		"pic":"/smmail/cop/images/weather/baoyu.png"
	},{
		"weather":"大暴雨",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/dabaoyu.png",
		"pic":"/smmail/cop/images/weather/dabaoyu.png"
	},{
		"weather":"特大暴雨",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/tedabaoyu.png",
		"pic":"/smmail/cop/images/weather/tedabaoyu.png"
	},{
		"weather":"阵雪",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/zhenxue.png",
		"pic":"/smmail/cop/images/weather/zhenxue.png"
	},{
		"weather":"小雪",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/xiaoxue.png",
		"pic":"/smmail/cop/images/weather/xiaoxue.png"
	},{
		"weather":"中雪",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/zhongxue.png",
		"pic":"/smmail/cop/images/weather/zhongxue.png"
	},{
		"weather":"大雪",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/daxue.png",
		"pic":"/smmail/cop/images/weather/daxue.png"
	},{
		"weather":"暴雪",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/baoxue.png",
		"pic":"/smmail/cop/images/weather/baoxue.png"
	},{
		"weather":"雾",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/wu.png",
		"pic":"/smmail/cop/images/weather/wu.png"
	},{
		"weather":"冻雨",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/dongyu.png",
		"pic":"/smmail/cop/images/weather/dongyu.png"
	},{
		"weather":"沙尘暴",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/shachenbao.png",
		"pic":"/smmail/cop/images/weather/shachenbao.png"
	},{
		"weather":"小雨转中雨",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/xiaoyuzhuanzhongyu.png",
		"pic":"/smmail/cop/images/weather/xiaoyuzhuanzhongyu.png"
	},{
		"weather":"中雨转大雨",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/zhongyuzhuandayu.png",
		"pic":"/smmail/cop/images/weather/zhongyuzhuandayu.png"
	},{
		"weather":"大雨转暴雨",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/dayuzhuanbaoyu.png",
		"pic":"/smmail/cop/images/weather/dayuzhuanbaoyu.png"
	},{
		"weather":"暴雨转大暴雨",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/baoyuzhuandabaoyu.png",
		"pic":"/smmail/cop/images/weather/baoyuzhuandabaoyu.png"
	},{
		"weather":"大暴雨转特大暴雨",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/dabaoyuzhuantedabaoyu.png",
		"pic":"/smmail/cop/images/weather/dabaoyuzhuantedabaoyu.png"
	},{
		"weather":"小雪转中雪",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/xiaoxuezhuanzhongxue.png",
		"pic":"/smmail/cop/images/weather/xiaoxuezhuanzhongxue.png"
	},{
		"weather":"中雪转大雪",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/zhongxuezhuandaxue.png",
		"pic":"/smmail/cop/images/weather/zhongxuezhuandaxue.png"
	},{
		"weather":"大雪转暴雪",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/daxuezhuanbaoxue.png",
		"pic":"/smmail/cop/images/weather/daxuezhuanbaoxue.png"
	},{
		"weather":"浮尘",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/fuchen.png",
		"pic":"/smmail/cop/images/weather/fuchen.png"
	},{
		"weather":"扬沙",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/yangsha.png",
		"pic":"/smmail/cop/images/weather/yangsha.png"
	},{
		"weather":"强沙尘暴",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/qiangshachenbao.png",
		"pic":"/smmail/cop/images/weather/qiangshachenbao.png"
	},{
		"weather":"霾",
		"baiduPic":"http://api.map.baidu.com/images/weather/day/mai.png",
		"pic":"/smmail/cop/images/weather/mai.png"
	}
];


/*获取新的天气图片*/
function getWeatherPic( baiduPic ){
	for( var i = 0; i < weatherIconData.length; i ++){
		var wea = weatherIconData[i];
		
		if( wea.baiduPic == baiduPic){
			return wea.pic
		}
	}
	return "";
}