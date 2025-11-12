/*CSS Browser Selector js v0.5.3 (July 2, 2013)*/
function css_browser_selector(n){var b=n.toLowerCase(),f=function(c){return b.indexOf(c)>-1},h="gecko",k="webkit",p="safari",j="chrome",d="opera",e="mobile",l=0,a=window.devicePixelRatio?(window.devicePixelRatio+"").replace(".","_"):"1";var i=[(!(/opera|webtv/.test(b))&&/msie\s(\d+)/.test(b)&&(l=RegExp.$1*1))?("ie ie"+l+((l==6||l==7)?" ie67 ie678 ie6789":(l==8)?" ie678 ie6789":(l==9)?" ie6789 ie9m":(l>9)?" ie9m":"")):(/trident\/\d+.*?;\s*rv:(\d+)\.(\d+)\)/.test(b)&&(l=[RegExp.$1,RegExp.$2]))?"ie ie"+l[0]+" ie"+l[0]+"_"+l[1]+" ie9m":(/firefox\/(\d+)\.(\d+)/.test(b)&&(re=RegExp))?h+" ff ff"+re.$1+" ff"+re.$1+"_"+re.$2:f("gecko/")?h:f(d)?d+(/version\/(\d+)/.test(b)?" "+d+RegExp.$1:(/opera(\s|\/)(\d+)/.test(b)?" "+d+RegExp.$2:"")):f("konqueror")?"konqueror":f("blackberry")?e+" blackberry":(f(j)||f("crios"))?k+" "+j:f("iron")?k+" iron":!f("cpu os")&&f("applewebkit/")?k+" "+p:f("mozilla/")?h:"",f("android")?e+" android":"",f("tablet")?"tablet":"",f("j2me")?e+" j2me":f("ipad; u; cpu os")?e+" chrome android tablet":f("ipad;u;cpu os")?e+" chromedef android tablet":f("iphone")?e+" ios iphone":f("ipod")?e+" ios ipod":f("ipad")?e+" ios ipad tablet":f("mac")?"mac":f("darwin")?"mac":f("webtv")?"webtv":f("win")?"win"+(f("windows nt 6.0")?" vista":""):f("freebsd")?"freebsd":(f("x11")||f("linux"))?"linux":"",(a!="1")?" retina ratio"+a:"","js portrait"].join(" ");if(window.jQuery&&!window.jQuery.browser){window.jQuery.browser=l?{msie:1,version:l}:{}}return i}(function(j,b){var c=css_browser_selector(navigator.userAgent);var g=j.documentElement;g.className+=" "+c;var a=c.replace(/^\s*|\s*$/g,"").split(/ +/);b.CSSBS=1;for(var f=0;f<a.length;f++){b["CSSBS_"+a[f]]=1}var e=function(d){return j.documentElement[d]||j.body[d]};if(b.jQuery){(function(q){var h="portrait",k="landscape";var i="smartnarrow",u="smartwide",x="tabletnarrow",r="tabletwide",w=i+" "+u+" "+x+" "+r+" pc";var v=q(g);var s=0,o=0;function d(){if(s!=0){return}try{var l=e("clientWidth"),p=e("clientHeight");if(l>p){v.removeClass(h).addClass(k)}else{v.removeClass(k).addClass(h)}if(l==o){return}o=l}catch(m){}s=setTimeout(n,100)}function n(){try{v.removeClass(w);v.addClass((o<=360)?i:(o<=640)?u:(o<=768)?x:(o<=1024)?r:"pc")}catch(l){}s=0}if(b.CSSBS_ie){setInterval(d,1000)}else{q(b).on("resize orientationchange",d).trigger("resize")}})(b.jQuery)}})(document,window);

/*****jQUERY*****/
$(function(){
	
	/*SUBMENU*/
	$(".nav-item").hover(function(e){
		e.preventDefault();
		$(".submenu",this).stop().slideToggle(300);
	});
	
	/*MAIN SLIDER*/
	$('.home-slider').slick({
		arrows: false,
		dots: true,
		autoplay: true,
		autoplaySpeed: 4000,
		responsive: [{
			breakpoint: 767,
			settings: {
				dots: false
			}
		}]
	});
	
	/*MOBILE MENU*/
	$(".c-hamburger").click(function(){
		$(this).toggleClass("is-active");
		$(".mobile-nav-bar").slideToggle();
	});
	
	$(".has-sub-items").click(function(e){
		e.preventDefault();
        if ($(this).next().css("display") === "block") {
            $(this).next().slideUp();
			$(this).removeClass("open");
        } else {
            $(".has-sub-items + ul").slideUp();
			$(".has-sub-items").removeClass("open");
            $(this).next().slideDown();
			$(this).addClass("open");
        }
    });
	
	$(".has-sub-menu").click(function(e){
		e.preventDefault();
        if ($(this).next().css("display") === "block") {
            $(this).next().slideUp();
			$(this).removeClass("open");
        } else {
            $(".has-sub-menu .submenu").slideUp();
			$(".has-sub-menu").removeClass("open");
            $(this).next().slideDown();
			$(this).addClass("open");
        }
    });
	
	$(".close-this-banner").click(function(){
		$(".placeholder-top").hide();
	});
	
	/*ANCHOR*/
	$("a.anchorLink").anchorAnimate();
	
	/*TABS*/
	$('.responsive-tabs').responsiveTabs({
	  accordionOn: ['xs'] // xs, sm, md, lg
	});

	
});

/*ANCHOR*/
jQuery.fn.anchorAnimate = function(settings) {

 	settings = jQuery.extend({
		speed : 1100
	}, settings);	
	return this.each(function(){
		var caller = this
		$(caller).click(function (event) {	
			event.preventDefault()
			var locationHref = window.location.href
			var elementClick = $(caller).attr("href")
			  var destination = $(elementClick).offset().top;
  			$("html:not(:animated),body:not(:animated)").animate({ scrollTop: destination}, settings.speed, function() {
  				window.location.hash = elementClick
  			});
		  	return false;
		})
	})
}