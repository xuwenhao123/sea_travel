/**
 * 分页并获取数据
 * 
 * @author 简强
 * @version 17.3.27
 */
!function($) {
	var config = {
		id: '', //获取数据的提交id
		fn_id: '', //需要调用的function id
		page_id: '', //分页填充id
		list_id: '', //数据填充的div id
		count: 0, //记录总数 
		limit: 10, //每页记录数量
		p: 1, //当前页数
		url: '', //获取数据链接
		data: {}, //{Object}  post 提交参数
		other: {}, //其他数据
	};

	$.fn.extend({
		'ajaxConfig': function(options) {
			if (!isValid(options)) {
				return this;
			}
			config = $.extend({}, config, options);
			getData();
		},
		'setData': function(data) {
			if (!isValid(data)) {
				return this;
			}
			for (var i in data) {
				config.data[i] = data[i];
			}
		},
		'getData': function() {
			return config;
		},
		'ajaxNext': function(fn_id, other) {
			if ($(this).attr('data-p') != undefined) {
				config.data['p'] = config.p = $(this).attr('data-p') - 0;
			}
			if (fn_id != undefined) {
				config.fn_id = fn_id;
			}
			if (other != undefined) {
				config.other = other;
			}
			getData();
		}
	});
	function isValid(options) {
		return !options || (options && typeof options === "object") ? true : false;
	}
	function getData() {
		if (config.data['id'] == undefined) {
			config.data['id'] = config.id;
		}
		if (config.data['limit'] == undefined) {
			config.data['limit'] = config.limit;
		}
		if (config.data['p'] == undefined) {
			config.data['p'] = config.p;
		}
		$(this).loading();
		$.post(config.url, config.data, function(result) {
			$(this).unload();
			switch (config.fn_id) {
				case 'remark':
					if (result.code == 1000) {
						config.count = result.result.count;
						if (result.result.count != '0') {
							remarkHtml(result.result.result);
							pageHtml();
						}
					} else {
						$().popup(result.error);
					}
					break;
				case 'olister':
					if (result.code == 1000) {
						config.count = result.result.count;
						if (result.result.count != '0') {
							olisterHtml(result.result);
							pageHtml();
							$('#order').show();
						} else {
							$('#order').hide();
							$('.no-order').show();
						}
						return true;
					} else {
						$().popup(result.error);
					}
					break;
				default:
					break;
			}
		}, 'json');
	}
	//分页
	function pageHtml() {
		var total = Math.ceil(config.count / config.limit);
		if (!total) {
			return false;
		}
		var html = '', p = config.p;
		//上一页
		html = '<li class="previous-l"><a href="javascript:;"  data-p="1" aria-label="Previous"><span aria-hidden="true"></span></a></li>';
		if (total > 5) {
			if (p < 4) {
				for (i = 1; i <= 4; i++) {
					html += '<li' + (p == i ? ' class="cur"' : '') + ' ><a href="javascript:;"  data-p="' + i + '">' + i + '</a></li>';
				}
				html += '<li><a href="javascript:;">...</a></li><li><a href="javascript:;"  data-p="' + total + '">' + total + '</a></li>';
			} else if ((p >= 4) && (p < (total - 2))) {
				html += '<li><a href="javascript:;"  data-p="1">1</a></li><li><a href="javascript:;">...</a></li>';
				for (i = -1; i <= 1; i++) {
					html += '<li' + (!i ? ' class="cur"' : '') + ' ><a href="javascript:;"  data-p="' + (p + i) + '">' + (p + i) + '</a></li>';
				}
				html += '<li><a href="javascript:;">...</a></li><li><a href="javascript:;" data-p="' + total + '">' + total + '</a></li>';
			} else {
				html += '<li><a href="javascript:;"  data-p="1">1</a></li><li><a href="javascript:;">...</a></li>';
				for (i = total - 3; i <= total; i++) {
					html += '<li' + (p == i ? ' class="cur"' : '') + ' ><a href="javascript:;"  data-p="' + i + '">' + i + '</a></li>';
				}
			}
		} else {
			for (i = 1; i <= total; i++) {
				html += '<li' + (p == i ? ' class="cur"' : '') + '><a href="javascript:;"  data-p="' + i + '">' + i + '</a></li>';
			}
		}
		//下一页
		html += '<li class="next-r"><a href="javascript:;" data-p="' + (p == total ? p : (p + 1)) + '" aria-label="Next"><span aria-hidden="true"></span></a></li>';
		if (config.page_id) {
			$('#' + config.page_id).html(html);
		}
	}
	//评论
	function remarkHtml(info) {
		var html = '';
		if (info) {
			for (var i in info) {
				html += '<div class="slide-main clearfix comment-section"><div class="left"><p>\
					 <img src="' + info[i].user_avatar + '" alt="" class="comment-img"><span>' + info[i].user_name + '</span><span>';
				if (info[i].remark_css) {
					for (var j in info[i].remark_css) {
						html += '<i class="' + info[i].remark_css[j] + '"></i>';
					}
				}
				html += '</span></p></div><div class="right"><div class="row"><div class="col-xs-6"><p>' + info[i].user_name + '</p></div>\
						 <div class="col-xs-6"><p class="text-right">';
				if (info[i].remark_css) {
					for (var j in info[i].remark_css) {
						html += '<i class="' + info[i].remark_css[j] + '"></i>';
					}
				}
				html += '</p></div></div><p>' +HTMLDecode(info[i].rm_content) + '</p>';
				if (info[i].rm_photo) {
					html += '<div class="comment-photo"><ul class="clearfix">';
					for (var j in info[i].rm_photo) {
						html += ' <li><img src="' + info[i].rm_photo[j] + '" alt=""></li>';
					}
					html += '</ul></div>';
				}
				html += '<p class="comment-time text-color1 font-size1">' + info[i].rm_ctime + '</p>';
				if (info[i].rm_reply) {
					html += '<div class="comment-revert"><i></i><p>' + config.other.guide_name + '回复：</p><p>' + HTMLDecode(info[i].rm_reply) + '</p></div>';
				}
				html += '</div></div>';
				// console.log(html);
			}
			// console.log(html);
			$('#' + config.list_id).html(html);
		}
	}
	//定制旅行
	function olisterHtml(info) {
		var html = '';
		if (info) {
			var data = info.data;
			for (var i in data) {
				html += '<div class="order-list"><div class="row order-title"><div class="col-sm-9 col-xs-7"><span><strong>' + data[i].ol_ctime + '</strong></span>\
						<span class="order-number text-color2">订单号：<strong>' + data[i].ol_id + '</strong></span></div><div class="col-sm-3 col-xs-5 text-right">\
						<span class="text-color2">订单状态：<strong>' + info.status[data[i].ol_status] + '</strong></span></div></div><div class="row"><div class="col-sm-12">\
						   <p class="mobile-time"><span class="text-color2">目的地：</span><span>' + data[i].ol_area + '</span></p></div></div><div class="row order-time">\
						<div class="col-sm-6 col-xs-8"><p class="mobile-time"><span class="text-color2">行程开始时间：</span><span>' + data[i].ol_start + '</span></p></div>\
						<div class="col-sm-6 col-xs-4 text-right"><a href="../../../index.htm"/*tpa=http://www.wanzi.cc/site/orderDetail/id/' + data[i].ol_id + '/status/' + config.data.status + '*/ class="order-detail text-center">查看详情</a></div></div></div>';
			}
			$('#' + config.list_id).html(html);
		}
	}
	function HTMLDecode(text) {
		var temp = document.createElement("div");
		temp.innerHTML = text;
		var output = temp.innerText || temp.textContent;
		temp = null;
		return output;
	}
}(jQuery);
