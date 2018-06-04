/*
//正确、错误、警�?showMessage(type,content,callback)
type:  right-error-warning  
content: 提示文案
callback 回调  ensure()确定按钮回调 quite()取消按钮回调

//单个提示�?popup(content,callback)
content: 提示文案
callback: 回调

//load显示
loading(callback)
callback: 回调

//load消失
unload(callback)
callback: 回调
*/
;(function ($) {
    var config = {
        'html': '<div class="prompt-box"><p class="prompt-detail text-color1 text-center"></p><button class="quite-btn text-center main-color">取消</button><button class="confirm-btn text-center text-color2">确定</button></div><div class="gray" style="display:block;"></div>',
        'url' : '',
        'titMes': '3s后将自动关闭',
        'timer': null,
        'num': 3,
	'img':'/js/promptbox/'
    }
    $.fn.extend({
        //写入信息至页�?        showMessage: function(type,content,callback){
            if(type=='error'){
                config.url = $(window).width()>768 ?config.img+ 'error.png' : config.img+ 'error-m.png';
            }
            else if(type=='warning'){
                config.url = $(window).width()>768 ? config.img+ 'warning.png' : config.img+'warning-m.png';
            }
            else{
                config.url = $(window).width()>768 ? config.img+ 'right.png' : config.img+'right-m.png';
            }
	$('body').append(config.html);
            $('.prompt-detail').html(content);
            $('<img/>',{
                'class': 'prompt-img',
                'src': config.url,
            }).prependTo($('.prompt-box'));
            $('.quite-btn').on('click',function(){
                $('.prompt-box,.gray.htm'/*tpa=http://www.wanzi.cc/js/promptbox/.prompt-box,.gray*/).remove();
                callback&&callback.quite();
            });
            $('.confirm-btn').on('click',function(){
                $('.prompt-box,.gray.htm'/*tpa=http://www.wanzi.cc/js/promptbox/.prompt-box,.gray*/).remove();
                callback&&callback.ensure();
            });
        },
        popup: function(content,callback){
	var num=config.num;
	$('body').append(config.html);
            $('.quite-btn').remove();
            $('.prompt-detail').text(content);
            $('.confirm-btn').removeClass('text-color2').addClass('main-color').css('border-color','#77c0cd');
            $('<p></p>',{
                'class': 'text-center close-text text-color2',
                'text': config.titMes,
            }).insertBefore('.confirm-btn');
            timer = setInterval(function(){
                num--;
                $('.close-text').html(num+'s后将自动关闭');
                if(num<=0){
                    clearInterval(timer);
                    $('.prompt-box,.gray.htm'/*tpa=http://www.wanzi.cc/js/promptbox/.prompt-box,.gray*/).remove();
		callback&&callback();
                }
            }, 1000);
            $('.confirm-btn').on('click',function(){
	     clearInterval(timer);
                $('.prompt-box,.gray.htm'/*tpa=http://www.wanzi.cc/js/promptbox/.prompt-box,.gray*/).remove();
                callback&&callback();
            });
        },
        loading: function(callback){
	$('body').append(config.html);
            $('.prompt-box').remove();
	$('.gray').remove();
            $('<img/>',{
                'class':'loading-img',
            }).appendTo($('body')).attr('src',config.img+'loading.gif');
            $('.loading-img').css('display','block');
            callback&&callback();
        },
        unload: function(callback){
	$('body').append(config.html);
            $('.prompt-box').remove();
	$('.gray').remove();
            $('<img/>',{
                'class':'loading-img',
            }).appendTo($('body')).attr('src',config.img+'loading.gif');
            $('.loading-img').css('display','none');
            callback&&callback();
        }
    });
})(jQuery);
