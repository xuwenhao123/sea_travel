/**
 * 区域搜索
 * 
 * @author 简强
 * @version 17.3.27
 */
var continent = new Array("1", "2", "3", "4", "5", "6"), _data = null;
//数据搜索
function getSearch(string) {
	var search = [];
	string = $.trim(string);
	for (var i in _data) {
		if ((_data[i].area_name.indexOf(string) >= 0) || (_data[i].area_en.indexOf(string) >= 0) || (_data[i].area_pin.indexOf(string) >= 0)) {
			if ($.inArray(_data[i].area_id, continent) < 0) {
				parentInfo = getParent(i);
				if (typeof(search[parentInfo.area_id]) == "undefined") {
					search[parentInfo.area_id] = {'parent': {}, 'child': []};
					search[parentInfo.area_id].parent = parentInfo;
					search[parentInfo.area_id].child = [_data[i]];
				} else {
					search[parentInfo.area_id].child.push(_data[i]);
				}
			}
		}
	}
//    console.log(search);
	return search.length > 0 ? getSearchHtml(searchSort(search)) : '';
}
//获取搜索数据父级
function getParent(area) {
	var parentId = _data[area].area_fid;
	if (!(typeof(_data[parentId]) == "undefined")) {
		return getParent(parentId);
	} else {
		return _data[area];
	}
}
//组合搜索数据html结构
function getSearchHtml(data) {
	var html = '<ul>', num = 0;
	for (var i in data) {
//        html += '<ul><li class="text-overflow" data-id="' + data[i].parent.area_id + '" data-name="' + data[i].parent.area_name + '">' + data[i].parent.area_en + '-' + data[i].parent.area_name + '-' + data[i].parent.area_pin + '</li>';
		var child = data[i].child;
		for (var j in child) {
			if ((child[j].area_id != '55c033ea4d3ee') && (child[j].area_id != '55c03381d5a6b')) {
				html += '<li class="text-overflow ' + (num ? '' : 'active') + '" data-id="' + child[j].area_id + '" data-name="' + child[j].area_name + '">' + child[j].area_en + '-' + child[j].area_name + '-' + child[j].area_pin + '</li>';
				num++;
			}
		}
	}
	html += '</ul>';
	return html;
}
//搜索数据排序
function searchSort(info) {
	var countryList = [];
	countryList['Asia'] = [];
	countryList['Europe'] = [];
	countryList['North America'] = [];
	countryList['Oceanian'] = [];
	countryList['South America'] = [];
	countryList['Africa'] = [];
	for (var i in info) {
		if (info[i].parent.area_en == 'Asia') {
			countryList['Asia'] = {'parent': info[i].parent, 'child': []};
			countryList['Asia'].child = [[], [], [], []];
			var list = [];
			list['China'] = 0;
			list['Hong Kong'] = 1;
			list['Macao'] = 2;
			list['Taiwan'] = 3;
			var sortChild = info[i].child;
			for (var j in sortChild) {
				if (!(typeof(list[sortChild[j].area_en]) == "undefined")) {
					countryList['Asia'].child[list[sortChild[j].area_en]] = sortChild[j];
				} else {
					countryList['Asia'].child.push(sortChild[j]);
				}
			}
		} else {
			countryList[info[i].parent.area_en] = {'parent': info[i].parent, 'child': []};
			countryList[info[i].parent.area_en].child = info[i].child.slice(0);
//            countryList[info[i].parent.area_en] = info[i];
		}
	}
	for (var i in countryList) {
		if (countryList[i].length == 0) {
			delete  countryList[i];
		}
		if (typeof(countryList['Asia']) != "undefined") {
			for (var j = 0; j < 4; j++) {
				if ((countryList['Asia'].child[j] instanceof Array) && (countryList['Asia'].child[j].length == 0)) {
					delete  countryList['Asia'].child[j];
				}
			}
		}
	}
	return countryList;
}