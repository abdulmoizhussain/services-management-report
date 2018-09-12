/*! Picturefill - v2.3.1 - 2015-04-09
* http://scottjehl.github.io/picturefill
* Copyright (c) 2015 https://github.com/scottjehl/picturefill/blob/master/Authors.txt; Licensed MIT */
window.matchMedia||(window.matchMedia=function(){"use strict";var a=window.styleMedia||window.media;if(!a){var b=document.createElement("style"),c=document.getElementsByTagName("script")[0],d=null;b.type="text/css",b.id="matchmediajs-test",c.parentNode.insertBefore(b,c),d="getComputedStyle"in window&&window.getComputedStyle(b,null)||b.currentStyle,a={matchMedium:function(a){var c="@media "+a+"{ #matchmediajs-test { width: 1px; } }";return b.styleSheet?b.styleSheet.cssText=c:b.textContent=c,"1px"===d.width}}}return function(b){return{matches:a.matchMedium(b||"all"),media:b||"all"}}}()),function(a,b,c){"use strict";function d(b){"object"==typeof module&&"object"==typeof module.exports?module.exports=b:"function"==typeof define&&define.amd&&define("picturefill",function(){return b}),"object"==typeof a&&(a.picturefill=b)}function e(a){var b,c,d,e,f,i=a||{};b=i.elements||g.getAllElements();for(var j=0,k=b.length;k>j;j++)if(c=b[j],d=c.parentNode,e=void 0,f=void 0,"IMG"===c.nodeName.toUpperCase()&&(c[g.ns]||(c[g.ns]={}),i.reevaluate||!c[g.ns].evaluated)){if(d&&"PICTURE"===d.nodeName.toUpperCase()){if(g.removeVideoShim(d),e=g.getMatch(c,d),e===!1)continue}else e=void 0;(d&&"PICTURE"===d.nodeName.toUpperCase()||!g.sizesSupported&&c.srcset&&h.test(c.srcset))&&g.dodgeSrcset(c),e?(f=g.processSourceSet(e),g.applyBestCandidate(f,c)):(f=g.processSourceSet(c),(void 0===c.srcset||c[g.ns].srcset)&&g.applyBestCandidate(f,c)),c[g.ns].evaluated=!0}}function f(){function c(){clearTimeout(d),d=setTimeout(h,60)}g.initTypeDetects(),e();var d,f=setInterval(function(){return e(),/^loaded|^i|^c/.test(b.readyState)?void clearInterval(f):void 0},250),h=function(){e({reevaluate:!0})};a.addEventListener?a.addEventListener("resize",c,!1):a.attachEvent&&a.attachEvent("onresize",c)}if(a.HTMLPictureElement)return void d(function(){});b.createElement("picture");var g=a.picturefill||{},h=/\s+\+?\d+(e\d+)?w/;g.ns="picturefill",function(){g.srcsetSupported="srcset"in c,g.sizesSupported="sizes"in c,g.curSrcSupported="currentSrc"in c}(),g.trim=function(a){return a.trim?a.trim():a.replace(/^\s+|\s+$/g,"")},g.makeUrl=function(){var a=b.createElement("a");return function(b){return a.href=b,a.href}}(),g.restrictsMixedContent=function(){return"https:"===a.location.protocol},g.matchesMedia=function(b){return a.matchMedia&&a.matchMedia(b).matches},g.getDpr=function(){return a.devicePixelRatio||1},g.getWidthFromLength=function(a){var c;if(!a||a.indexOf("%")>-1!=!1||!(parseFloat(a)>0||a.indexOf("calc(")>-1))return!1;a=a.replace("vw","%"),g.lengthEl||(g.lengthEl=b.createElement("div"),g.lengthEl.style.cssText="border:0;display:block;font-size:1em;left:0;margin:0;padding:0;position:absolute;visibility:hidden",g.lengthEl.className="helper-from-picturefill-js"),g.lengthEl.style.width="0px";try{g.lengthEl.style.width=a}catch(d){}return b.body.appendChild(g.lengthEl),c=g.lengthEl.offsetWidth,0>=c&&(c=!1),b.body.removeChild(g.lengthEl),c},g.detectTypeSupport=function(b,c){var d=new a.Image;return d.onerror=function(){g.types[b]=!1,e()},d.onload=function(){g.types[b]=1===d.width,e()},d.src=c,"pending"},g.types=g.types||{},g.initTypeDetects=function(){g.types["image/jpeg"]=!0,g.types["image/gif"]=!0,g.types["image/png"]=!0,g.types["image/svg+xml"]=b.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#Image","1.1"),g.types["image/webp"]=g.detectTypeSupport("image/webp","data:image/webp;base64,UklGRh4AAABXRUJQVlA4TBEAAAAvAAAAAAfQ//73v/+BiOh/AAA=")},g.verifyTypeSupport=function(a){var b=a.getAttribute("type");if(null===b||""===b)return!0;var c=g.types[b];return"string"==typeof c&&"pending"!==c?(g.types[b]=g.detectTypeSupport(b,c),"pending"):"function"==typeof c?(c(),"pending"):c},g.parseSize=function(a){var b=/(\([^)]+\))?\s*(.+)/g.exec(a);return{media:b&&b[1],length:b&&b[2]}},g.findWidthFromSourceSize=function(c){for(var d,e=g.trim(c).split(/\s*,\s*/),f=0,h=e.length;h>f;f++){var i=e[f],j=g.parseSize(i),k=j.length,l=j.media;if(k&&(!l||g.matchesMedia(l))&&(d=g.getWidthFromLength(k)))break}return d||Math.max(a.innerWidth||0,b.documentElement.clientWidth)},g.parseSrcset=function(a){for(var b=[];""!==a;){a=a.replace(/^\s+/g,"");var c,d=a.search(/\s/g),e=null;if(-1!==d){c=a.slice(0,d);var f=c.slice(-1);if((","===f||""===c)&&(c=c.replace(/,+$/,""),e=""),a=a.slice(d+1),null===e){var g=a.indexOf(",");-1!==g?(e=a.slice(0,g),a=a.slice(g+1)):(e=a,a="")}}else c=a,a="";(c||e)&&b.push({url:c,descriptor:e})}return b},g.parseDescriptor=function(a,b){var c,d=b||"100vw",e=a&&a.replace(/(^\s+|\s+$)/g,""),f=g.findWidthFromSourceSize(d);if(e)for(var h=e.split(" "),i=h.length-1;i>=0;i--){var j=h[i],k=j&&j.slice(j.length-1);if("h"!==k&&"w"!==k||g.sizesSupported){if("x"===k){var l=j&&parseFloat(j,10);c=l&&!isNaN(l)?l:1}}else c=parseFloat(parseInt(j,10)/f)}return c||1},g.getCandidatesFromSourceSet=function(a,b){for(var c=g.parseSrcset(a),d=[],e=0,f=c.length;f>e;e++){var h=c[e];d.push({url:h.url,resolution:g.parseDescriptor(h.descriptor,b)})}return d},g.dodgeSrcset=function(a){a.srcset&&(a[g.ns].srcset=a.srcset,a.srcset="",a.setAttribute("data-pfsrcset",a[g.ns].srcset))},g.processSourceSet=function(a){var b=a.getAttribute("srcset"),c=a.getAttribute("sizes"),d=[];return"IMG"===a.nodeName.toUpperCase()&&a[g.ns]&&a[g.ns].srcset&&(b=a[g.ns].srcset),b&&(d=g.getCandidatesFromSourceSet(b,c)),d},g.backfaceVisibilityFix=function(a){var b=a.style||{},c="webkitBackfaceVisibility"in b,d=b.zoom;c&&(b.zoom=".999",c=a.offsetWidth,b.zoom=d)},g.setIntrinsicSize=function(){var c={},d=function(a,b,c){b&&a.setAttribute("width",parseInt(b/c,10))};return function(e,f){var h;e[g.ns]&&!a.pfStopIntrinsicSize&&(void 0===e[g.ns].dims&&(e[g.ns].dims=e.getAttribute("width")||e.getAttribute("height")),e[g.ns].dims||(f.url in c?d(e,c[f.url],f.resolution):(h=b.createElement("img"),h.onload=function(){if(c[f.url]=h.width,!c[f.url])try{b.body.appendChild(h),c[f.url]=h.width||h.offsetWidth,b.body.removeChild(h)}catch(a){}e.src===f.url&&d(e,c[f.url],f.resolution),e=null,h.onload=null,h=null},h.src=f.url)))}}(),g.applyBestCandidate=function(a,b){var c,d,e;a.sort(g.ascendingSort),d=a.length,e=a[d-1];for(var f=0;d>f;f++)if(c=a[f],c.resolution>=g.getDpr()){e=c;break}e&&(e.url=g.makeUrl(e.url),b.src!==e.url&&(g.restrictsMixedContent()&&"http:"===e.url.substr(0,"http:".length).toLowerCase()?void 0!==window.console&&console.warn("Blocked mixed content image "+e.url):(b.src=e.url,g.curSrcSupported||(b.currentSrc=b.src),g.backfaceVisibilityFix(b))),g.setIntrinsicSize(b,e))},g.ascendingSort=function(a,b){return a.resolution-b.resolution},g.removeVideoShim=function(a){var b=a.getElementsByTagName("video");if(b.length){for(var c=b[0],d=c.getElementsByTagName("source");d.length;)a.insertBefore(d[0],c);c.parentNode.removeChild(c)}},g.getAllElements=function(){for(var a=[],c=b.getElementsByTagName("img"),d=0,e=c.length;e>d;d++){var f=c[d];("PICTURE"===f.parentNode.nodeName.toUpperCase()||null!==f.getAttribute("srcset")||f[g.ns]&&null!==f[g.ns].srcset)&&a.push(f)}return a},g.getMatch=function(a,b){for(var c,d=b.childNodes,e=0,f=d.length;f>e;e++){var h=d[e];if(1===h.nodeType){if(h===a)return c;if("SOURCE"===h.nodeName.toUpperCase()){null!==h.getAttribute("src")&&void 0!==typeof console&&console.warn("The `src` attribute is invalid on `picture` `source` element; instead, use `srcset`.");var i=h.getAttribute("media");if(h.getAttribute("srcset")&&(!i||g.matchesMedia(i))){var j=g.verifyTypeSupport(h);if(j===!0){c=h;break}if("pending"===j)return!1}}}}return c},f(),e._=g,d(e)}(window,window.document,new window.Image);;
/*
 * jQuery FlexSlider v2.2.2
 * Copyright 2012 WooThemes
 * Contributing Author: Tyler Smith
 */
!function(a){a.flexslider=function(b,c){var d=a(b);d.vars=a.extend({},a.flexslider.defaults,c);var j,e=d.vars.namespace,f=window.navigator&&window.navigator.msPointerEnabled&&window.MSGesture,g=("ontouchstart"in window||f||window.DocumentTouch&&document instanceof DocumentTouch)&&d.vars.touch,h="click touchend MSPointerUp",i="",k="vertical"===d.vars.direction,l=d.vars.reverse,m=d.vars.itemWidth>0,n="fade"===d.vars.animation,o=""!==d.vars.asNavFor,p={},q=!0;a.data(b,"flexslider",d),p={init:function(){d.animating=!1,d.currentSlide=parseInt(d.vars.startAt?d.vars.startAt:0,10),isNaN(d.currentSlide)&&(d.currentSlide=0),d.animatingTo=d.currentSlide,d.atEnd=0===d.currentSlide||d.currentSlide===d.last,d.containerSelector=d.vars.selector.substr(0,d.vars.selector.search(" ")),d.slides=a(d.vars.selector,d),d.container=a(d.containerSelector,d),d.count=d.slides.length,d.syncExists=a(d.vars.sync).length>0,"slide"===d.vars.animation&&(d.vars.animation="swing"),d.prop=k?"top":"marginLeft",d.args={},d.manualPause=!1,d.stopped=!1,d.started=!1,d.startTimeout=null,d.transitions=!d.vars.video&&!n&&d.vars.useCSS&&function(){var a=document.createElement("div"),b=["perspectiveProperty","WebkitPerspective","MozPerspective","OPerspective","msPerspective"];for(var c in b)if(void 0!==a.style[b[c]])return d.pfx=b[c].replace("Perspective","").toLowerCase(),d.prop="-"+d.pfx+"-transform",!0;return!1}(),d.ensureAnimationEnd="",""!==d.vars.controlsContainer&&(d.controlsContainer=a(d.vars.controlsContainer).length>0&&a(d.vars.controlsContainer)),""!==d.vars.manualControls&&(d.manualControls=a(d.vars.manualControls).length>0&&a(d.vars.manualControls)),d.vars.randomize&&(d.slides.sort(function(){return Math.round(Math.random())-.5}),d.container.empty().append(d.slides)),d.doMath(),d.setup("init"),d.vars.controlNav&&p.controlNav.setup(),d.vars.directionNav&&p.directionNav.setup(),d.vars.keyboard&&(1===a(d.containerSelector).length||d.vars.multipleKeyboard)&&a(document).bind("keyup",function(a){var b=a.keyCode;if(!d.animating&&(39===b||37===b)){var c=39===b?d.getTarget("next"):37===b?d.getTarget("prev"):!1;d.flexAnimate(c,d.vars.pauseOnAction)}}),d.vars.mousewheel&&d.bind("mousewheel",function(a,b){a.preventDefault();var f=0>b?d.getTarget("next"):d.getTarget("prev");d.flexAnimate(f,d.vars.pauseOnAction)}),d.vars.pausePlay&&p.pausePlay.setup(),d.vars.slideshow&&d.vars.pauseInvisible&&p.pauseInvisible.init(),d.vars.slideshow&&(d.vars.pauseOnHover&&d.hover(function(){d.manualPlay||d.manualPause||d.pause()},function(){d.manualPause||d.manualPlay||d.stopped||d.play()}),d.vars.pauseInvisible&&p.pauseInvisible.isHidden()||(d.vars.initDelay>0?d.startTimeout=setTimeout(d.play,d.vars.initDelay):d.play())),o&&p.asNav.setup(),g&&d.vars.touch&&p.touch(),(!n||n&&d.vars.smoothHeight)&&a(window).bind("resize orientationchange focus",p.resize),d.find("img").attr("draggable","false"),setTimeout(function(){d.vars.start(d)},200)},asNav:{setup:function(){d.asNav=!0,d.animatingTo=Math.floor(d.currentSlide/d.move),d.currentItem=d.currentSlide,d.slides.removeClass(e+"active-slide").eq(d.currentItem).addClass(e+"active-slide"),f?(b._slider=d,d.slides.each(function(){var b=this;b._gesture=new MSGesture,b._gesture.target=b,b.addEventListener("MSPointerDown",function(a){a.preventDefault(),a.currentTarget._gesture&&a.currentTarget._gesture.addPointer(a.pointerId)},!1),b.addEventListener("MSGestureTap",function(b){b.preventDefault();var c=a(this),e=c.index();a(d.vars.asNavFor).data("flexslider").animating||c.hasClass("active")||(d.direction=d.currentItem<e?"next":"prev",d.flexAnimate(e,d.vars.pauseOnAction,!1,!0,!0))})})):d.slides.on(h,function(b){b.preventDefault();var c=a(this),f=c.index(),g=c.offset().left-a(d).scrollLeft();0>=g&&c.hasClass(e+"active-slide")?d.flexAnimate(d.getTarget("prev"),!0):a(d.vars.asNavFor).data("flexslider").animating||c.hasClass(e+"active-slide")||(d.direction=d.currentItem<f?"next":"prev",d.flexAnimate(f,d.vars.pauseOnAction,!1,!0,!0))})}},controlNav:{setup:function(){d.manualControls?p.controlNav.setupManual():p.controlNav.setupPaging()},setupPaging:function(){var f,g,b="thumbnails"===d.vars.controlNav?"control-thumbs":"control-paging",c=1;if(d.controlNavScaffold=a('<ol class="'+e+"control-nav "+e+b+'"></ol>'),d.pagingCount>1)for(var j=0;j<d.pagingCount;j++){if(g=d.slides.eq(j),f="thumbnails"===d.vars.controlNav?'<img src="'+g.attr("data-thumb")+'"/>':"<a>"+c+"</a>","thumbnails"===d.vars.controlNav&&!0===d.vars.thumbCaptions){var k=g.attr("data-thumbcaption");""!=k&&void 0!=k&&(f+='<span class="'+e+'caption">'+k+"</span>")}d.controlNavScaffold.append("<li>"+f+"</li>"),c++}d.controlsContainer?a(d.controlsContainer).append(d.controlNavScaffold):d.append(d.controlNavScaffold),p.controlNav.set(),p.controlNav.active(),d.controlNavScaffold.delegate("a, img",h,function(b){if(b.preventDefault(),""===i||i===b.type){var c=a(this),f=d.controlNav.index(c);c.hasClass(e+"active")||(d.direction=f>d.currentSlide?"next":"prev",d.flexAnimate(f,d.vars.pauseOnAction))}""===i&&(i=b.type),p.setToClearWatchedEvent()})},setupManual:function(){d.controlNav=d.manualControls,p.controlNav.active(),d.controlNav.bind(h,function(b){if(b.preventDefault(),""===i||i===b.type){var c=a(this),f=d.controlNav.index(c);c.hasClass(e+"active")||(d.direction=f>d.currentSlide?"next":"prev",d.flexAnimate(f,d.vars.pauseOnAction))}""===i&&(i=b.type),p.setToClearWatchedEvent()})},set:function(){var b="thumbnails"===d.vars.controlNav?"img":"a";d.controlNav=a("."+e+"control-nav li "+b,d.controlsContainer?d.controlsContainer:d)},active:function(){d.controlNav.removeClass(e+"active").eq(d.animatingTo).addClass(e+"active")},update:function(b,c){d.pagingCount>1&&"add"===b?d.controlNavScaffold.append(a("<li><a>"+d.count+"</a></li>")):1===d.pagingCount?d.controlNavScaffold.find("li").remove():d.controlNav.eq(c).closest("li").remove(),p.controlNav.set(),d.pagingCount>1&&d.pagingCount!==d.controlNav.length?d.update(c,b):p.controlNav.active()}},directionNav:{setup:function(){var b=a('<ul class="'+e+'direction-nav"><li><a class="'+e+'prev" href="#">'+d.vars.prevText+'</a></li><li><a class="'+e+'next" href="#">'+d.vars.nextText+"</a></li></ul>");d.controlsContainer?(a(d.controlsContainer).append(b),d.directionNav=a("."+e+"direction-nav li a",d.controlsContainer)):(d.append(b),d.directionNav=a("."+e+"direction-nav li a",d)),p.directionNav.update(),d.directionNav.bind(h,function(b){b.preventDefault();var c;(""===i||i===b.type)&&(c=a(this).hasClass(e+"next")?d.getTarget("next"):d.getTarget("prev"),d.flexAnimate(c,d.vars.pauseOnAction)),""===i&&(i=b.type),p.setToClearWatchedEvent()})},update:function(){var a=e+"disabled";1===d.pagingCount?d.directionNav.addClass(a).attr("tabindex","-1"):d.vars.animationLoop?d.directionNav.removeClass(a).removeAttr("tabindex"):0===d.animatingTo?d.directionNav.removeClass(a).filter("."+e+"prev").addClass(a).attr("tabindex","-1"):d.animatingTo===d.last?d.directionNav.removeClass(a).filter("."+e+"next").addClass(a).attr("tabindex","-1"):d.directionNav.removeClass(a).removeAttr("tabindex")}},pausePlay:{setup:function(){var b=a('<div class="'+e+'pauseplay"><a></a></div>');d.controlsContainer?(d.controlsContainer.append(b),d.pausePlay=a("."+e+"pauseplay a",d.controlsContainer)):(d.append(b),d.pausePlay=a("."+e+"pauseplay a",d)),p.pausePlay.update(d.vars.slideshow?e+"pause":e+"play"),d.pausePlay.bind(h,function(b){b.preventDefault(),(""===i||i===b.type)&&(a(this).hasClass(e+"pause")?(d.manualPause=!0,d.manualPlay=!1,d.pause()):(d.manualPause=!1,d.manualPlay=!0,d.play())),""===i&&(i=b.type),p.setToClearWatchedEvent()})},update:function(a){"play"===a?d.pausePlay.removeClass(e+"pause").addClass(e+"play").html(d.vars.playText):d.pausePlay.removeClass(e+"play").addClass(e+"pause").html(d.vars.pauseText)}},touch:function(){function r(f){d.animating?f.preventDefault():(window.navigator.msPointerEnabled||1===f.touches.length)&&(d.pause(),g=k?d.h:d.w,i=Number(new Date),o=f.touches[0].pageX,p=f.touches[0].pageY,e=m&&l&&d.animatingTo===d.last?0:m&&l?d.limit-(d.itemW+d.vars.itemMargin)*d.move*d.animatingTo:m&&d.currentSlide===d.last?d.limit:m?(d.itemW+d.vars.itemMargin)*d.move*d.currentSlide:l?(d.last-d.currentSlide+d.cloneOffset)*g:(d.currentSlide+d.cloneOffset)*g,a=k?p:o,c=k?o:p,b.addEventListener("touchmove",s,!1),b.addEventListener("touchend",t,!1))}function s(b){o=b.touches[0].pageX,p=b.touches[0].pageY,h=k?a-p:a-o,j=k?Math.abs(h)<Math.abs(o-c):Math.abs(h)<Math.abs(p-c);var f=500;(!j||Number(new Date)-i>f)&&(b.preventDefault(),!n&&d.transitions&&(d.vars.animationLoop||(h/=0===d.currentSlide&&0>h||d.currentSlide===d.last&&h>0?Math.abs(h)/g+2:1),d.setProps(e+h,"setTouch")))}function t(){if(b.removeEventListener("touchmove",s,!1),d.animatingTo===d.currentSlide&&!j&&null!==h){var k=l?-h:h,m=k>0?d.getTarget("next"):d.getTarget("prev");d.canAdvance(m)&&(Number(new Date)-i<550&&Math.abs(k)>50||Math.abs(k)>g/2)?d.flexAnimate(m,d.vars.pauseOnAction):n||d.flexAnimate(d.currentSlide,d.vars.pauseOnAction,!0)}b.removeEventListener("touchend",t,!1),a=null,c=null,h=null,e=null}function u(a){a.stopPropagation(),d.animating?a.preventDefault():(d.pause(),b._gesture.addPointer(a.pointerId),q=0,g=k?d.h:d.w,i=Number(new Date),e=m&&l&&d.animatingTo===d.last?0:m&&l?d.limit-(d.itemW+d.vars.itemMargin)*d.move*d.animatingTo:m&&d.currentSlide===d.last?d.limit:m?(d.itemW+d.vars.itemMargin)*d.move*d.currentSlide:l?(d.last-d.currentSlide+d.cloneOffset)*g:(d.currentSlide+d.cloneOffset)*g)}function v(a){a.stopPropagation();var c=a.target._slider;if(c){var d=-a.translationX,f=-a.translationY;return q+=k?f:d,h=q,j=k?Math.abs(q)<Math.abs(-d):Math.abs(q)<Math.abs(-f),a.detail===a.MSGESTURE_FLAG_INERTIA?(setImmediate(function(){b._gesture.stop()}),void 0):((!j||Number(new Date)-i>500)&&(a.preventDefault(),!n&&c.transitions&&(c.vars.animationLoop||(h=q/(0===c.currentSlide&&0>q||c.currentSlide===c.last&&q>0?Math.abs(q)/g+2:1)),c.setProps(e+h,"setTouch"))),void 0)}}function w(b){b.stopPropagation();var d=b.target._slider;if(d){if(d.animatingTo===d.currentSlide&&!j&&null!==h){var f=l?-h:h,k=f>0?d.getTarget("next"):d.getTarget("prev");d.canAdvance(k)&&(Number(new Date)-i<550&&Math.abs(f)>50||Math.abs(f)>g/2)?d.flexAnimate(k,d.vars.pauseOnAction):n||d.flexAnimate(d.currentSlide,d.vars.pauseOnAction,!0)}a=null,c=null,h=null,e=null,q=0}}var a,c,e,g,h,i,j=!1,o=0,p=0,q=0;f?(b.style.msTouchAction="none",b._gesture=new MSGesture,b._gesture.target=b,b.addEventListener("MSPointerDown",u,!1),b._slider=d,b.addEventListener("MSGestureChange",v,!1),b.addEventListener("MSGestureEnd",w,!1)):b.addEventListener("touchstart",r,!1)},resize:function(){!d.animating&&d.is(":visible")&&(m||d.doMath(),n?p.smoothHeight():m?(d.slides.width(d.computedW),d.update(d.pagingCount),d.setProps()):k?(d.viewport.height(d.h),d.setProps(d.h,"setTotal")):(d.vars.smoothHeight&&p.smoothHeight(),d.newSlides.width(d.computedW),d.setProps(d.computedW,"setTotal")))},smoothHeight:function(a){if(!k||n){var b=n?d:d.viewport;a?b.animate({height:d.slides.eq(d.animatingTo).height()},a):b.height(d.slides.eq(d.animatingTo).height())}},sync:function(b){var c=a(d.vars.sync).data("flexslider"),e=d.animatingTo;switch(b){case"animate":c.flexAnimate(e,d.vars.pauseOnAction,!1,!0);break;case"play":c.playing||c.asNav||c.play();break;case"pause":c.pause()}},uniqueID:function(b){return b.find("[id]").each(function(){var b=a(this);b.attr("id",b.attr("id")+"_clone")}),b},pauseInvisible:{visProp:null,init:function(){var a=["webkit","moz","ms","o"];if("hidden"in document)return"hidden";for(var b=0;b<a.length;b++)a[b]+"Hidden"in document&&(p.pauseInvisible.visProp=a[b]+"Hidden");if(p.pauseInvisible.visProp){var c=p.pauseInvisible.visProp.replace(/[H|h]idden/,"")+"visibilitychange";document.addEventListener(c,function(){p.pauseInvisible.isHidden()?d.startTimeout?clearTimeout(d.startTimeout):d.pause():d.started?d.play():d.vars.initDelay>0?setTimeout(d.play,d.vars.initDelay):d.play()})}},isHidden:function(){return document[p.pauseInvisible.visProp]||!1}},setToClearWatchedEvent:function(){clearTimeout(j),j=setTimeout(function(){i=""},3e3)}},d.flexAnimate=function(b,c,f,h,i){if(d.vars.animationLoop||b===d.currentSlide||(d.direction=b>d.currentSlide?"next":"prev"),o&&1===d.pagingCount&&(d.direction=d.currentItem<b?"next":"prev"),!d.animating&&(d.canAdvance(b,i)||f)&&d.is(":visible")){if(o&&h){var j=a(d.vars.asNavFor).data("flexslider");if(d.atEnd=0===b||b===d.count-1,j.flexAnimate(b,!0,!1,!0,i),d.direction=d.currentItem<b?"next":"prev",j.direction=d.direction,Math.ceil((b+1)/d.visible)-1===d.currentSlide||0===b)return d.currentItem=b,d.slides.removeClass(e+"active-slide").eq(b).addClass(e+"active-slide"),!1;d.currentItem=b,d.slides.removeClass(e+"active-slide").eq(b).addClass(e+"active-slide"),b=Math.floor(b/d.visible)}if(d.animating=!0,d.animatingTo=b,c&&d.pause(),d.vars.before(d),d.syncExists&&!i&&p.sync("animate"),d.vars.controlNav&&p.controlNav.active(),m||d.slides.removeClass(e+"active-slide").eq(b).addClass(e+"active-slide"),d.atEnd=0===b||b===d.last,d.vars.directionNav&&p.directionNav.update(),b===d.last&&(d.vars.end(d),d.vars.animationLoop||d.pause()),n)g?(d.slides.eq(d.currentSlide).css({opacity:0,zIndex:1}),d.slides.eq(b).css({opacity:1,zIndex:2}),d.wrapup(q)):(d.slides.eq(d.currentSlide).css({zIndex:1}).animate({opacity:0},d.vars.animationSpeed,d.vars.easing),d.slides.eq(b).css({zIndex:2}).animate({opacity:1},d.vars.animationSpeed,d.vars.easing,d.wrapup));else{var r,s,t,q=k?d.slides.filter(":first").height():d.computedW;m?(r=d.vars.itemMargin,t=(d.itemW+r)*d.move*d.animatingTo,s=t>d.limit&&1!==d.visible?d.limit:t):s=0===d.currentSlide&&b===d.count-1&&d.vars.animationLoop&&"next"!==d.direction?l?(d.count+d.cloneOffset)*q:0:d.currentSlide===d.last&&0===b&&d.vars.animationLoop&&"prev"!==d.direction?l?0:(d.count+1)*q:l?(d.count-1-b+d.cloneOffset)*q:(b+d.cloneOffset)*q,d.setProps(s,"",d.vars.animationSpeed),d.transitions?(d.vars.animationLoop&&d.atEnd||(d.animating=!1,d.currentSlide=d.animatingTo),d.container.unbind("webkitTransitionEnd transitionend"),d.container.bind("webkitTransitionEnd transitionend",function(){clearTimeout(d.ensureAnimationEnd),d.wrapup(q)}),clearTimeout(d.ensureAnimationEnd),d.ensureAnimationEnd=setTimeout(function(){d.wrapup(q)},d.vars.animationSpeed+100)):d.container.animate(d.args,d.vars.animationSpeed,d.vars.easing,function(){d.wrapup(q)})}d.vars.smoothHeight&&p.smoothHeight(d.vars.animationSpeed)}},d.wrapup=function(a){n||m||(0===d.currentSlide&&d.animatingTo===d.last&&d.vars.animationLoop?d.setProps(a,"jumpEnd"):d.currentSlide===d.last&&0===d.animatingTo&&d.vars.animationLoop&&d.setProps(a,"jumpStart")),d.animating=!1,d.currentSlide=d.animatingTo,d.vars.after(d)},d.animateSlides=function(){!d.animating&&q&&d.flexAnimate(d.getTarget("next"))},d.pause=function(){clearInterval(d.animatedSlides),d.animatedSlides=null,d.playing=!1,d.vars.pausePlay&&p.pausePlay.update("play"),d.syncExists&&p.sync("pause")},d.play=function(){d.playing&&clearInterval(d.animatedSlides),d.animatedSlides=d.animatedSlides||setInterval(d.animateSlides,d.vars.slideshowSpeed),d.started=d.playing=!0,d.vars.pausePlay&&p.pausePlay.update("pause"),d.syncExists&&p.sync("play")},d.stop=function(){d.pause(),d.stopped=!0},d.canAdvance=function(a,b){var c=o?d.pagingCount-1:d.last;return b?!0:o&&d.currentItem===d.count-1&&0===a&&"prev"===d.direction?!0:o&&0===d.currentItem&&a===d.pagingCount-1&&"next"!==d.direction?!1:a!==d.currentSlide||o?d.vars.animationLoop?!0:d.atEnd&&0===d.currentSlide&&a===c&&"next"!==d.direction?!1:d.atEnd&&d.currentSlide===c&&0===a&&"next"===d.direction?!1:!0:!1},d.getTarget=function(a){return d.direction=a,"next"===a?d.currentSlide===d.last?0:d.currentSlide+1:0===d.currentSlide?d.last:d.currentSlide-1},d.setProps=function(a,b,c){var e=function(){var c=a?a:(d.itemW+d.vars.itemMargin)*d.move*d.animatingTo,e=function(){if(m)return"setTouch"===b?a:l&&d.animatingTo===d.last?0:l?d.limit-(d.itemW+d.vars.itemMargin)*d.move*d.animatingTo:d.animatingTo===d.last?d.limit:c;switch(b){case"setTotal":return l?(d.count-1-d.currentSlide+d.cloneOffset)*a:(d.currentSlide+d.cloneOffset)*a;case"setTouch":return l?a:a;case"jumpEnd":return l?a:d.count*a;case"jumpStart":return l?d.count*a:a;default:return a}}();return-1*e+"px"}();d.transitions&&(e=k?"translate3d(0,"+e+",0)":"translate3d("+e+",0,0)",c=void 0!==c?c/1e3+"s":"0s",d.container.css("-"+d.pfx+"-transition-duration",c),d.container.css("transition-duration",c)),d.args[d.prop]=e,(d.transitions||void 0===c)&&d.container.css(d.args),d.container.css("transform",e)},d.setup=function(b){if(n)d.slides.css({width:"100%","float":"left",marginRight:"-100%",position:"relative"}),"init"===b&&(g?d.slides.css({opacity:0,display:"block",webkitTransition:"opacity "+d.vars.animationSpeed/1e3+"s ease",zIndex:1}).eq(d.currentSlide).css({opacity:1,zIndex:2}):d.slides.css({opacity:0,display:"block",zIndex:1}).eq(d.currentSlide).css({zIndex:2}).animate({opacity:1},d.vars.animationSpeed,d.vars.easing)),d.vars.smoothHeight&&p.smoothHeight();else{var c,f;"init"===b&&(d.viewport=a('<div class="'+e+'viewport"></div>').css({overflow:"hidden",position:"relative"}).appendTo(d).append(d.container),d.cloneCount=0,d.cloneOffset=0,l&&(f=a.makeArray(d.slides).reverse(),d.slides=a(f),d.container.empty().append(d.slides))),d.vars.animationLoop&&!m&&(d.cloneCount=2,d.cloneOffset=1,"init"!==b&&d.container.find(".clone").remove(),p.uniqueID(d.slides.first().clone().addClass("clone").attr("aria-hidden","true")).appendTo(d.container),p.uniqueID(d.slides.last().clone().addClass("clone").attr("aria-hidden","true")).prependTo(d.container)),d.newSlides=a(d.vars.selector,d),c=l?d.count-1-d.currentSlide+d.cloneOffset:d.currentSlide+d.cloneOffset,k&&!m?(d.container.height(200*(d.count+d.cloneCount)+"%").css("position","absolute").width("100%"),setTimeout(function(){d.newSlides.css({display:"block"}),d.doMath(),d.viewport.height(d.h),d.setProps(c*d.h,"init")},"init"===b?100:0)):(d.container.width(200*(d.count+d.cloneCount)+"%"),d.setProps(c*d.computedW,"init"),setTimeout(function(){d.doMath(),d.newSlides.css({width:d.computedW,"float":"left",display:"block"}),d.vars.smoothHeight&&p.smoothHeight()},"init"===b?100:0))}m||d.slides.removeClass(e+"active-slide").eq(d.currentSlide).addClass(e+"active-slide"),d.vars.init(d)},d.doMath=function(){var a=d.slides.first(),b=d.vars.itemMargin,c=d.vars.minItems,e=d.vars.maxItems;d.w=void 0===d.viewport?d.width():d.viewport.width(),d.h=a.height(),d.boxPadding=a.outerWidth()-a.width(),m?(d.itemT=d.vars.itemWidth+b,d.minW=c?c*d.itemT:d.w,d.maxW=e?e*d.itemT-b:d.w,d.itemW=d.minW>d.w?(d.w-b*(c-1))/c:d.maxW<d.w?(d.w-b*(e-1))/e:d.vars.itemWidth>d.w?d.w:d.vars.itemWidth,d.visible=Math.floor(d.w/d.itemW),d.move=d.vars.move>0&&d.vars.move<d.visible?d.vars.move:d.visible,d.pagingCount=Math.ceil((d.count-d.visible)/d.move+1),d.last=d.pagingCount-1,d.limit=1===d.pagingCount?0:d.vars.itemWidth>d.w?d.itemW*(d.count-1)+b*(d.count-1):(d.itemW+b)*d.count-d.w-b):(d.itemW=d.w,d.pagingCount=d.count,d.last=d.count-1),d.computedW=d.itemW-d.boxPadding},d.update=function(a,b){d.doMath(),m||(a<d.currentSlide?d.currentSlide+=1:a<=d.currentSlide&&0!==a&&(d.currentSlide-=1),d.animatingTo=d.currentSlide),d.vars.controlNav&&!d.manualControls&&("add"===b&&!m||d.pagingCount>d.controlNav.length?p.controlNav.update("add"):("remove"===b&&!m||d.pagingCount<d.controlNav.length)&&(m&&d.currentSlide>d.last&&(d.currentSlide-=1,d.animatingTo-=1),p.controlNav.update("remove",d.last))),d.vars.directionNav&&p.directionNav.update()},d.addSlide=function(b,c){var e=a(b);d.count+=1,d.last=d.count-1,k&&l?void 0!==c?d.slides.eq(d.count-c).after(e):d.container.prepend(e):void 0!==c?d.slides.eq(c).before(e):d.container.append(e),d.update(c,"add"),d.slides=a(d.vars.selector+":not(.clone)",d),d.setup(),d.vars.added(d)},d.removeSlide=function(b){var c=isNaN(b)?d.slides.index(a(b)):b;d.count-=1,d.last=d.count-1,isNaN(b)?a(b,d.slides).remove():k&&l?d.slides.eq(d.last).remove():d.slides.eq(b).remove(),d.doMath(),d.update(c,"remove"),d.slides=a(d.vars.selector+":not(.clone)",d),d.setup(),d.vars.removed(d)},p.init()},a(window).blur(function(){focused=!1}).focus(function(){focused=!0}),a.flexslider.defaults={namespace:"flex-",selector:".slides > li",animation:"fade",easing:"swing",direction:"horizontal",reverse:!1,animationLoop:!0,smoothHeight:!1,startAt:0,slideshow:!0,slideshowSpeed:7e3,animationSpeed:600,initDelay:0,randomize:!1,thumbCaptions:!1,pauseOnAction:!0,pauseOnHover:!1,pauseInvisible:!0,useCSS:!0,touch:!0,video:!1,controlNav:!0,directionNav:!0,prevText:"Previous",nextText:"Next",keyboard:!0,multipleKeyboard:!1,mousewheel:!1,pausePlay:!1,pauseText:"Pause",playText:"Play",controlsContainer:"",manualControls:"",sync:"",asNavFor:"",itemWidth:0,itemMargin:0,minItems:1,maxItems:0,move:0,allowOneSlide:!0,start:function(){},before:function(){},after:function(){},end:function(){},added:function(){},removed:function(){},init:function(){}},a.fn.flexslider=function(b){if(void 0===b&&(b={}),"object"==typeof b)return this.each(function(){var c=a(this),d=b.selector?b.selector:".slides > li",e=c.find(d);1===e.length&&b.allowOneSlide===!0||0===e.length?(e.fadeIn(400),b.start&&b.start(c)):void 0===c.data("flexslider")&&new a.flexslider(this,b)});var c=a(this).data("flexslider");switch(b){case"play":c.play();break;case"pause":c.pause();break;case"stop":c.stop();break;case"next":c.flexAnimate(c.getTarget("next"),!0);break;case"prev":case"previous":c.flexAnimate(c.getTarget("prev"),!0);break;default:"number"==typeof b&&c.flexAnimate(b,!0)}}}(jQuery);
;
!function(a){a.extend(a.fn,{validate:function(b){if(!this.length)return void(b&&b.debug&&window.console&&console.warn("nothing selected, can't validate, returning nothing"));var c=a.data(this[0],"validator");if(c)return c;if(this.attr("novalidate","novalidate"),c=new a.validator(b,this[0]),a.data(this[0],"validator",c),c.settings.onsubmit){var d=this.find("input, button");d.filter(".cancel").click(function(){c.cancelSubmit=!0}),c.settings.submitHandler&&d.filter(":submit").click(function(){c.submitButton=this}),this.submit(function(b){function d(){if(c.settings.submitHandler){if(c.submitButton)var b=a("<input type='hidden'/>").attr("name",c.submitButton.name).val(c.submitButton.value).appendTo(c.currentForm);return c.settings.submitHandler.call(c,c.currentForm),c.submitButton&&b.remove(),!1}return!0}return c.settings.debug&&b.preventDefault(),c.cancelSubmit?(c.cancelSubmit=!1,d()):c.form()?c.pendingRequest?(c.formSubmitted=!0,!1):d():(c.focusInvalid(),!1)})}return c},valid:function(){if(a(this[0]).is("form"))return this.validate().form();var b=!0,c=a(this[0].form).validate();return this.each(function(){b&=c.element(this)}),b},removeAttrs:function(b){var c={},d=this;return a.each(b.split(/\s/),function(a,b){c[b]=d.attr(b),d.removeAttr(b)}),c},rules:function(b,c){var d=this[0];if(b){var e=a.data(d.form,"validator").settings,f=e.rules,g=a.validator.staticRules(d);switch(b){case"add":a.extend(g,a.validator.normalizeRule(c)),f[d.name]=g,c.messages&&(e.messages[d.name]=a.extend(e.messages[d.name],c.messages));break;case"remove":if(!c)return delete f[d.name],g;var h={};return a.each(c.split(/\s/),function(a,b){h[b]=g[b],delete g[b]}),h}}var i=a.validator.normalizeRules(a.extend({},a.validator.metadataRules(d),a.validator.classRules(d),a.validator.attributeRules(d),a.validator.staticRules(d)),d);if(i.required){var j=i.required;delete i.required,i=a.extend({required:j},i)}return i}}),a.extend(a.expr[":"],{blank:function(b){return!a.trim(""+b.value)},filled:function(b){return!!a.trim(""+b.value)},unchecked:function(a){return!a.checked}}),a.validator=function(b,c){this.settings=a.extend(!0,{},a.validator.defaults,b),this.currentForm=c,this.init()},a.validator.format=function(b,c){return 1==arguments.length?function(){var c=a.makeArray(arguments);return c.unshift(b),a.validator.format.apply(this,c)}:(arguments.length>2&&c.constructor!=Array&&(c=a.makeArray(arguments).slice(1)),c.constructor!=Array&&(c=[c]),a.each(c,function(a,c){b=b.replace(new RegExp("\\{"+a+"\\}","g"),c)}),b)},a.extend(a.validator,{defaults:{messages:{},groups:{},rules:{},errorClass:"error",validClass:"valid",errorElement:"label",focusInvalid:!0,errorContainer:a([]),errorLabelContainer:a([]),onsubmit:!0,ignore:":hidden",ignoreTitle:!1,onfocusin:function(a){this.lastActive=a,this.settings.focusCleanup&&!this.blockFocusCleanup&&(this.settings.unhighlight&&this.settings.unhighlight.call(this,a,this.settings.errorClass,this.settings.validClass),this.addWrapper(this.errorsFor(a)).hide())},onfocusout:function(a){this.checkable(a)||!(a.name in this.submitted)&&this.optional(a)||this.element(a)},onkeyup:function(a){(a.name in this.submitted||a==this.lastElement)&&this.element(a)},onclick:function(a){a.name in this.submitted?this.element(a):a.parentNode.name in this.submitted&&this.element(a.parentNode)},highlight:function(b,c,d){"radio"===b.type?this.findByName(b.name).addClass(c).removeClass(d):a(b).addClass(c).removeClass(d)},unhighlight:function(b,c,d){"radio"===b.type?this.findByName(b.name).removeClass(c).addClass(d):a(b).removeClass(c).addClass(d)}},setDefaults:function(b){a.extend(a.validator.defaults,b)},messages:{required:"This field is required.",remote:"Please fix this field.",email:"Please enter a valid email address.",url:"Please enter a valid URL.",date:"Please enter a valid date.",dateISO:"Please enter a valid date (ISO).",number:"Please enter a valid number.",digits:"Please enter only digits.",creditcard:"Please enter a valid credit card number.",equalTo:"Please enter the same value again.",accept:"Please enter a value with a valid extension.",maxlength:a.validator.format("Please enter no more than {0} characters."),minlength:a.validator.format("Please enter at least {0} characters."),rangelength:a.validator.format("Please enter a value between {0} and {1} characters long."),range:a.validator.format("Please enter a value between {0} and {1}."),max:a.validator.format("Please enter a value less than or equal to {0}."),min:a.validator.format("Please enter a value greater than or equal to {0}.")},autoCreateRanges:!1,prototype:{init:function(){function b(b){var c=a.data(this[0].form,"validator"),d="on"+b.type.replace(/^validate/,"");c.settings[d]&&c.settings[d].call(c,this[0],b)}this.labelContainer=a(this.settings.errorLabelContainer),this.errorContext=this.labelContainer.length&&this.labelContainer||a(this.currentForm),this.containers=a(this.settings.errorContainer).add(this.settings.errorLabelContainer),this.submitted={},this.valueCache={},this.pendingRequest=0,this.pending={},this.invalid={},this.reset();var c=this.groups={};a.each(this.settings.groups,function(b,d){a.each(d.split(/\s/),function(a,d){c[d]=b})});var d=this.settings.rules;a.each(d,function(b,c){d[b]=a.validator.normalizeRule(c)}),a(this.currentForm).validateDelegate("[type='text'], [type='password'], [type='file'], select, textarea, [type='number'], [type='search'] ,[type='tel'], [type='url'], [type='email'], [type='datetime'], [type='date'], [type='month'], [type='week'], [type='time'], [type='datetime-local'], [type='range'], [type='color'] ","focusin focusout keyup",b).validateDelegate("[type='radio'], [type='checkbox'], select, option","click",b),this.settings.invalidHandler&&a(this.currentForm).bind("invalid-form.validate",this.settings.invalidHandler)},form:function(){return this.checkForm(),a.extend(this.submitted,this.errorMap),this.invalid=a.extend({},this.errorMap),this.valid()||a(this.currentForm).triggerHandler("invalid-form",[this]),this.showErrors(),this.valid()},checkForm:function(){this.prepareForm();for(var a=0,b=this.currentElements=this.elements();b[a];a++)this.check(b[a]);return this.valid()},element:function(b){b=this.validationTargetFor(this.clean(b)),this.lastElement=b,this.prepareElement(b),this.currentElements=a(b);var c=this.check(b);return c?delete this.invalid[b.name]:this.invalid[b.name]=!0,this.numberOfInvalids()||(this.toHide=this.toHide.add(this.containers)),this.showErrors(),c},showErrors:function(b){if(b){a.extend(this.errorMap,b),this.errorList=[];for(var c in b)this.errorList.push({message:b[c],element:this.findByName(c)[0]});this.successList=a.grep(this.successList,function(a){return!(a.name in b)})}this.settings.showErrors?this.settings.showErrors.call(this,this.errorMap,this.errorList):this.defaultShowErrors()},resetForm:function(){a.fn.resetForm&&a(this.currentForm).resetForm(),this.submitted={},this.lastElement=null,this.prepareForm(),this.hideErrors(),this.elements().removeClass(this.settings.errorClass)},numberOfInvalids:function(){return this.objectLength(this.invalid)},objectLength:function(a){var b=0;for(var c in a)b++;return b},hideErrors:function(){this.addWrapper(this.toHide).hide()},valid:function(){return 0==this.size()},size:function(){return this.errorList.length},focusInvalid:function(){if(this.settings.focusInvalid)try{a(this.findLastActive()||this.errorList.length&&this.errorList[0].element||[]).filter(":visible").focus().trigger("focusin")}catch(b){}},findLastActive:function(){var b=this.lastActive;return b&&1==a.grep(this.errorList,function(a){return a.element.name==b.name}).length&&b},elements:function(){var b=this,c={};return a(this.currentForm).find("input, select, textarea").not(":submit, :reset, :image, [disabled]").not(this.settings.ignore).filter(function(){return!this.name&&b.settings.debug&&window.console&&console.error("%o has no name assigned",this),this.name in c||!b.objectLength(a(this).rules())?!1:(c[this.name]=!0,!0)})},clean:function(b){return a(b)[0]},errors:function(){return a(this.settings.errorElement+"."+this.settings.errorClass,this.errorContext)},reset:function(){this.successList=[],this.errorList=[],this.errorMap={},this.toShow=a([]),this.toHide=a([]),this.currentElements=a([])},prepareForm:function(){this.reset(),this.toHide=this.errors().add(this.containers)},prepareElement:function(a){this.reset(),this.toHide=this.errorsFor(a)},check:function(b){b=this.validationTargetFor(this.clean(b));var c=a(b).rules(),d=!1;for(var e in c){var f={method:e,parameters:c[e]};try{var g=a.validator.methods[e].call(this,b.value.replace(/\r/g,""),b,f.parameters);if("dependency-mismatch"==g){d=!0;continue}if(d=!1,"pending"==g)return void(this.toHide=this.toHide.not(this.errorsFor(b)));if(!g)return this.formatAndAdd(b,f),!1}catch(h){throw this.settings.debug&&window.console&&console.log("exception occured when checking element "+b.id+", check the '"+f.method+"' method",h),h}}return d?void 0:(this.objectLength(c)&&this.successList.push(b),!0)},customMetaMessage:function(b,c){if(a.metadata){var d=this.settings.meta?a(b).metadata()[this.settings.meta]:a(b).metadata();return d&&d.messages&&d.messages[c]}},customMessage:function(a,b){var c=this.settings.messages[a];return c&&(c.constructor==String?c:c[b])},findDefined:function(){for(var a=0;a<arguments.length;a++)if(void 0!==arguments[a])return arguments[a];return void 0},defaultMessage:function(b,c){return this.findDefined(this.customMessage(b.name,c),this.customMetaMessage(b,c),!this.settings.ignoreTitle&&b.title||void 0,a.validator.messages[c],"<strong>Warning: No message defined for "+b.name+"</strong>")},formatAndAdd:function(a,b){var c=this.defaultMessage(a,b.method),d=/\$?\{(\d+)\}/g;"function"==typeof c?c=c.call(this,b.parameters,a):d.test(c)&&(c=jQuery.format(c.replace(d,"{$1}"),b.parameters)),this.errorList.push({message:c,element:a}),this.errorMap[a.name]=c,this.submitted[a.name]=c},addWrapper:function(a){return this.settings.wrapper&&(a=a.add(a.parent(this.settings.wrapper))),a},defaultShowErrors:function(){for(var a=0;this.errorList[a];a++){var b=this.errorList[a];this.settings.highlight&&this.settings.highlight.call(this,b.element,this.settings.errorClass,this.settings.validClass),this.showLabel(b.element,b.message)}if(this.errorList.length&&(this.toShow=this.toShow.add(this.containers)),this.settings.success)for(var a=0;this.successList[a];a++)this.showLabel(this.successList[a]);if(this.settings.unhighlight)for(var a=0,c=this.validElements();c[a];a++)this.settings.unhighlight.call(this,c[a],this.settings.errorClass,this.settings.validClass);this.toHide=this.toHide.not(this.toShow),this.hideErrors(),this.addWrapper(this.toShow).show()},validElements:function(){return this.currentElements.not(this.invalidElements())},invalidElements:function(){return a(this.errorList).map(function(){return this.element})},showLabel:function(b,c){var d=this.errorsFor(b);d.length?(d.removeClass(this.settings.validClass).addClass(this.settings.errorClass),d.attr("generated")&&d.html(c)):(d=a("<"+this.settings.errorElement+"/>").attr({"for":this.idOrName(b),generated:!0}).addClass(this.settings.errorClass).html(c||""),this.settings.wrapper&&(d=d.hide().show().wrap("<"+this.settings.wrapper+"/>").parent()),this.labelContainer.append(d).length||(this.settings.errorPlacement?this.settings.errorPlacement(d,a(b)):d.insertAfter(b))),!c&&this.settings.success&&(d.text(""),"string"==typeof this.settings.success?d.addClass(this.settings.success):this.settings.success(d)),this.toShow=this.toShow.add(d)},errorsFor:function(b){var c=this.idOrName(b);return this.errors().filter(function(){return a(this).attr("for")==c})},idOrName:function(a){return this.groups[a.name]||(this.checkable(a)?a.name:a.id||a.name)},validationTargetFor:function(a){return this.checkable(a)&&(a=this.findByName(a.name).not(this.settings.ignore)[0]),a},checkable:function(a){return/radio|checkbox/i.test(a.type)},findByName:function(b){var c=this.currentForm;return a(document.getElementsByName(b)).map(function(a,d){return d.form==c&&d.name==b&&d||null})},getLength:function(b,c){switch(c.nodeName.toLowerCase()){case"select":return a("option:selected",c).length;case"input":if(this.checkable(c))return this.findByName(c.name).filter(":checked").length}return b.length},depend:function(a,b){return this.dependTypes[typeof a]?this.dependTypes[typeof a](a,b):!0},dependTypes:{"boolean":function(a){return a},string:function(b,c){return!!a(b,c.form).length},"function":function(a,b){return a(b)}},optional:function(b){return!a.validator.methods.required.call(this,a.trim(b.value),b)&&"dependency-mismatch"},startRequest:function(a){this.pending[a.name]||(this.pendingRequest++,this.pending[a.name]=!0)},stopRequest:function(b,c){this.pendingRequest--,this.pendingRequest<0&&(this.pendingRequest=0),delete this.pending[b.name],c&&0==this.pendingRequest&&this.formSubmitted&&this.form()?(a(this.currentForm).submit(),this.formSubmitted=!1):!c&&0==this.pendingRequest&&this.formSubmitted&&(a(this.currentForm).triggerHandler("invalid-form",[this]),this.formSubmitted=!1)},previousValue:function(b){return a.data(b,"previousValue")||a.data(b,"previousValue",{old:null,valid:!0,message:this.defaultMessage(b,"remote")})}},classRuleSettings:{required:{required:!0},email:{email:!0},url:{url:!0},date:{date:!0},dateISO:{dateISO:!0},dateDE:{dateDE:!0},number:{number:!0},numberDE:{numberDE:!0},digits:{digits:!0},creditcard:{creditcard:!0}},addClassRules:function(b,c){b.constructor==String?this.classRuleSettings[b]=c:a.extend(this.classRuleSettings,b)},classRules:function(b){var c={},d=a(b).attr("class");return d&&a.each(d.split(" "),function(){this in a.validator.classRuleSettings&&a.extend(c,a.validator.classRuleSettings[this])}),c},attributeRules:function(b){var c={},d=a(b);for(var e in a.validator.methods){var f;f="required"===e&&"function"==typeof a.fn.prop?d.prop(e):d.attr(e),f?c[e]=f:d[0].getAttribute("type")===e&&(c[e]=!0)}return c.maxlength&&/-1|2147483647|524288/.test(c.maxlength)&&delete c.maxlength,c},metadataRules:function(b){if(!a.metadata)return{};var c=a.data(b.form,"validator").settings.meta;return c?a(b).metadata()[c]:a(b).metadata()},staticRules:function(b){var c={},d=a.data(b.form,"validator");return d.settings.rules&&(c=a.validator.normalizeRule(d.settings.rules[b.name])||{}),c},normalizeRules:function(b,c){return a.each(b,function(d,e){if(e===!1)return void delete b[d];if(e.param||e.depends){var f=!0;switch(typeof e.depends){case"string":f=!!a(e.depends,c.form).length;break;case"function":f=e.depends.call(c,c)}f?b[d]=void 0!==e.param?e.param:!0:delete b[d]}}),a.each(b,function(d,e){b[d]=a.isFunction(e)?e(c):e}),a.each(["minlength","maxlength","min","max"],function(){b[this]&&(b[this]=Number(b[this]))}),a.each(["rangelength","range"],function(){b[this]&&(b[this]=[Number(b[this][0]),Number(b[this][1])])}),a.validator.autoCreateRanges&&(b.min&&b.max&&(b.range=[b.min,b.max],delete b.min,delete b.max),b.minlength&&b.maxlength&&(b.rangelength=[b.minlength,b.maxlength],delete b.minlength,delete b.maxlength)),b.messages&&delete b.messages,b},normalizeRule:function(b){if("string"==typeof b){var c={};a.each(b.split(/\s/),function(){c[this]=!0}),b=c}return b},addMethod:function(b,c,d){a.validator.methods[b]=c,a.validator.messages[b]=void 0!=d?d:a.validator.messages[b],c.length<3&&a.validator.addClassRules(b,a.validator.normalizeRule(b))},methods:{required:function(b,c,d){if(!this.depend(d,c))return"dependency-mismatch";switch(c.nodeName.toLowerCase()){case"select":var e=a(c).val();return e&&e.length>0;case"input":if(this.checkable(c))return this.getLength(b,c)>0;default:return a.trim(b).length>0}},remote:function(b,c,d){if(this.optional(c))return"dependency-mismatch";var e=this.previousValue(c);if(this.settings.messages[c.name]||(this.settings.messages[c.name]={}),e.originalMessage=this.settings.messages[c.name].remote,this.settings.messages[c.name].remote=e.message,d="string"==typeof d&&{url:d}||d,this.pending[c.name])return"pending";if(e.old===b)return e.valid;e.old=b;var f=this;this.startRequest(c);var g={};return g[c.name]=b,a.ajax(a.extend(!0,{url:d,mode:"abort",port:"validate"+c.name,dataType:"json",data:g,success:function(d){f.settings.messages[c.name].remote=e.originalMessage;var g=d===!0;if(g){var h=f.formSubmitted;f.prepareElement(c),f.formSubmitted=h,f.successList.push(c),f.showErrors()}else{var i={},j=d||f.defaultMessage(c,"remote");i[c.name]=e.message=a.isFunction(j)?j(b):j,f.showErrors(i)}e.valid=g,f.stopRequest(c,g)}},d)),"pending"},minlength:function(b,c,d){return this.optional(c)||this.getLength(a.trim(b),c)>=d},maxlength:function(b,c,d){return this.optional(c)||this.getLength(a.trim(b),c)<=d},rangelength:function(b,c,d){var e=this.getLength(a.trim(b),c);return this.optional(c)||e>=d[0]&&e<=d[1]},min:function(a,b,c){return this.optional(b)||a>=c},max:function(a,b,c){return this.optional(b)||c>=a},range:function(a,b,c){return this.optional(b)||a>=c[0]&&a<=c[1]},email:function(a,b){return this.optional(b)||/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$/i.test(a)},url:function(a,b){return this.optional(b)||/^(https?|ftp):\/\/(((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(\#((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?$/i.test(a)},date:function(a,b){return this.optional(b)||!/Invalid|NaN/.test(new Date(a))},dateISO:function(a,b){return this.optional(b)||/^\d{4}[\/-]\d{1,2}[\/-]\d{1,2}$/.test(a)},number:function(a,b){return this.optional(b)||/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(a)},digits:function(a,b){return this.optional(b)||/^\d+$/.test(a)},creditcard:function(a,b){if(this.optional(b))return"dependency-mismatch";if(/[^0-9 -]+/.test(a))return!1;var c=0,d=0,e=!1;a=a.replace(/\D/g,"");for(var f=a.length-1;f>=0;f--){var g=a.charAt(f),d=parseInt(g,10);e&&(d*=2)>9&&(d-=9),c+=d,e=!e}return c%10==0},accept:function(a,b,c){return c="string"==typeof c?c.replace(/,/g,"|"):"png|jpe?g|gif",this.optional(b)||a.match(new RegExp(".("+c+")$","i"))},equalTo:function(b,c,d){var e=a(d).unbind(".validate-equalTo").bind("blur.validate-equalTo",function(){a(c).valid()});return b==e.val()}}}),a.format=a.validator.format}(jQuery),function(a){var b={};if(a.ajaxPrefilter)a.ajaxPrefilter(function(a,c,d){var e=a.port;"abort"==a.mode&&(b[e]&&b[e].abort(),b[e]=d)});else{var c=a.ajax;a.ajax=function(d){var e=("mode"in d?d:a.ajaxSettings).mode,f=("port"in d?d:a.ajaxSettings).port;return"abort"==e?(b[f]&&b[f].abort(),b[f]=c.apply(this,arguments)):c.apply(this,arguments)}}}(jQuery),function(a){jQuery.event.special.focusin||jQuery.event.special.focusout||!document.addEventListener||a.each({focus:"focusin",blur:"focusout"},function(b,c){function d(b){return b=a.event.fix(b),b.type=c,a.event.handle.call(this,b)}a.event.special[c]={setup:function(){this.addEventListener(b,d,!0)},teardown:function(){this.removeEventListener(b,d,!0)},handler:function(b){return arguments[0]=a.event.fix(b),arguments[0].type=c,a.event.handle.apply(this,arguments)}}}),a.extend(a.fn,{validateDelegate:function(b,c,d){return this.bind(c,function(c){var e=a(c.target);return e.is(b)?d.apply(e,arguments):void 0})}})}(jQuery);;
(function($) {

// https://github.com/georgeadamson/jQuery-on-event-binding-polyfill

if (!$.fn.on) {

  // Monkeypatch older versions of jQuery to support event binding & delegation using the more convenient .on() method:
  // Can be minimised down to ~160 bytes if you don't need the AMD Module wrapper. :)

  /* jshint laxcomma:true, asi:true, debug:true, curly:false, camelcase:true, browser:true */

  // New syntax: (See http://api.jquery.com/on)
  //   .on( events [, selector ] [, data ], handler(eventObject) )
  // Old syntax:
  //   .bind( events [, data ], handler(eventObject) )
  //   .live( events [, data ], handler(eventObject) )
  //   .delegate( selector, events [, data], handler(eventObject) )

  // Tip: If you need AMD Module support, wrap this script inside the following syntax:
  // ;(function (factory) {
  //   // Register as an anonymous AMD module if relevant, otherwise assume oldskool browser globals:
  //   if (typeof define === "function" && define.amd)
  //     define(["jquery"], factory);
  //   else
  //     factory(jQuery);
  // })(function( $ ) {
  //
  //  ...script goes here...
  //
  // });


  $.fn.on = function(events, selector, data, handler) {

    var self = this;
    var args = arguments.length;

    // .on(events, selector, data, handler)
    if ( args > 3) {
      return self.delegate(selector, events, data, handler);
    }

    else if (args > 2) {
      // .on(events, selector, handler)
      if (typeof selector === 'string') {
        // handler = data
        return self.delegate(selector, events, data);
      }
      // .on(events, data, handler)
      else {
        // handler = data
        // data    = selector
        return self.bind(events, selector, data);
      }
    }

    // .on(events, handler)
    else {
      // handler = selector
      return self.bind(events, selector);
    }
  }

};

$.fn.off = function(events, selector, handler) {

  var self = this;
  var args = arguments.length;

  // .off(events, selector)
  if (typeof selector === 'string') {
    // handler = data
    if (args > 2) {
      return self.undelegate(selector, events, handler);
    } else if (args > 1) {
      return self.undelegate(selector, events);
    } else {
      return self.undelegate();
    }
  }
  // .off(events)
  else {
    if (args > 1) {
      handler = selector;
      return self.unbind(events, handler);
    } else if (args > 0) {
      return self.unbind(events);
    } else {
      return self.unbind();
    }
  }

};

})(this.jQuery);
;
function dean_addEvent(t,e,r){if(t.addEventListener)t.addEventListener(e,r,!1);else{r.$$guid||(r.$$guid=dean_addEvent.guid++),t.events||(t.events={});var o=t.events[e];o||(o=t.events[e]={},t["on"+e]&&(o[0]=t["on"+e])),o[r.$$guid]=r,t["on"+e]=handleEvent}}function removeEvent(t,e,r){t.removeEventListener?t.removeEventListener(e,r,!1):t.events&&t.events[e]&&delete t.events[e][r.$$guid]}function handleEvent(t){var e=!0;t=t||fixEvent(((this.ownerDocument||this.document||this).parentWindow||window).event);var r=this.events[t.type];for(var o in r)this.$$handleEvent=r[o],this.$$handleEvent(t)===!1&&(e=!1);return e}function fixEvent(t){return t.preventDefault=fixEvent.preventDefault,t.stopPropagation=fixEvent.stopPropagation,t}var stIsIE=!1;if(sorttable={init:function(){arguments.callee.done||(arguments.callee.done=!0,_timer&&clearInterval(_timer),document.createElement&&document.getElementsByTagName&&(sorttable.DATE_RE=/^(\d\d?)[\/\.-](\d\d?)[\/\.-]((\d\d)?\d\d)$/,forEach(document.getElementsByTagName("table"),function(t){-1!=t.className.search(/\bsortable\b/)&&sorttable.makeSortable(t)})))},makeSortable:function(t){if(0==t.getElementsByTagName("thead").length&&(the=document.createElement("thead"),the.appendChild(t.rows[0]),t.insertBefore(the,t.firstChild)),null==t.tHead&&(t.tHead=t.getElementsByTagName("thead")[0]),1==t.tHead.rows.length){sortbottomrows=[];for(var e=0;e<t.rows.length;e++)-1!=t.rows[e].className.search(/\bsortbottom\b/)&&(sortbottomrows[sortbottomrows.length]=t.rows[e]);if(sortbottomrows){null==t.tFoot&&(tfo=document.createElement("tfoot"),t.appendChild(tfo));for(var e=0;e<sortbottomrows.length;e++)tfo.appendChild(sortbottomrows[e]);delete sortbottomrows}headrow=t.tHead.rows[0].cells;for(var e=0;e<headrow.length;e++)headrow[e].className.match(/\bsorttable_nosort\b/)||(mtch=headrow[e].className.match(/\bsorttable_([a-z0-9]+)\b/),mtch&&(override=mtch[1]),headrow[e].sorttable_sortfunction=mtch&&"function"==typeof sorttable["sort_"+override]?sorttable["sort_"+override]:sorttable.guessType(t,e),headrow[e].sorttable_columnindex=e,headrow[e].sorttable_tbody=t.tBodies[0],dean_addEvent(headrow[e],"click",sorttable.innerSortFunction=function(){if(-1!=this.className.search(/\bsorttable_sorted\b/))return sorttable.reverse(this.sorttable_tbody),this.className=this.className.replace("sorttable_sorted","sorttable_sorted_reverse"),this.removeChild(document.getElementById("sorttable_sortfwdind")),sortrevind=document.createElement("span"),sortrevind.id="sorttable_sortrevind",sortrevind.innerHTML=stIsIE?'&nbsp<font face="webdings">5</font>':"&nbsp;&#x25B4;",void this.appendChild(sortrevind);if(-1!=this.className.search(/\bsorttable_sorted_reverse\b/))return sorttable.reverse(this.sorttable_tbody),this.className=this.className.replace("sorttable_sorted_reverse","sorttable_sorted"),this.removeChild(document.getElementById("sorttable_sortrevind")),sortfwdind=document.createElement("span"),sortfwdind.id="sorttable_sortfwdind",sortfwdind.innerHTML=stIsIE?'&nbsp<font face="webdings">6</font>':"&nbsp;&#x25BE;",void this.appendChild(sortfwdind);theadrow=this.parentNode,forEach(theadrow.childNodes,function(t){1==t.nodeType&&(t.className=t.className.replace("sorttable_sorted_reverse",""),t.className=t.className.replace("sorttable_sorted",""))}),sortfwdind=document.getElementById("sorttable_sortfwdind"),sortfwdind&&sortfwdind.parentNode.removeChild(sortfwdind),sortrevind=document.getElementById("sorttable_sortrevind"),sortrevind&&sortrevind.parentNode.removeChild(sortrevind),this.className+=" sorttable_sorted",sortfwdind=document.createElement("span"),sortfwdind.id="sorttable_sortfwdind",sortfwdind.innerHTML=stIsIE?'&nbsp<font face="webdings">6</font>':"&nbsp;&#x25BE;",this.appendChild(sortfwdind),row_array=[],col=this.sorttable_columnindex,rows=this.sorttable_tbody.rows;for(var t=0;t<rows.length;t++)row_array[row_array.length]=[sorttable.getInnerText(rows[t].cells[col]),rows[t]];row_array.sort(this.sorttable_sortfunction),tb=this.sorttable_tbody;for(var t=0;t<row_array.length;t++)tb.appendChild(row_array[t][1]);delete row_array}))}},guessType:function(t,e){sortfn=sorttable.sort_alpha;for(var r=0;r<t.tBodies[0].rows.length;r++)if(text=sorttable.getInnerText(t.tBodies[0].rows[r].cells[e]),""!=text){if(text.match(/^-?[£$¤]?[\d,.]+%?$/))return sorttable.sort_numeric;if(possdate=text.match(sorttable.DATE_RE),possdate){if(first=parseInt(possdate[1]),second=parseInt(possdate[2]),first>12)return sorttable.sort_ddmm;if(second>12)return sorttable.sort_mmdd;sortfn=sorttable.sort_ddmm}}return sortfn},getInnerText:function(t){if(!t)return"";if(hasInputs="function"==typeof t.getElementsByTagName&&t.getElementsByTagName("input").length,null!=t.getAttribute("sorttable_customkey"))return t.getAttribute("sorttable_customkey");if("undefined"!=typeof t.textContent&&!hasInputs)return t.textContent.replace(/^\s+|\s+$/g,"");if("undefined"!=typeof t.innerText&&!hasInputs)return t.innerText.replace(/^\s+|\s+$/g,"");if("undefined"!=typeof t.text&&!hasInputs)return t.text.replace(/^\s+|\s+$/g,"");switch(t.nodeType){case 3:if("input"==t.nodeName.toLowerCase())return t.value.replace(/^\s+|\s+$/g,"");case 4:return t.nodeValue.replace(/^\s+|\s+$/g,"");case 1:case 11:for(var e="",r=0;r<t.childNodes.length;r++)e+=sorttable.getInnerText(t.childNodes[r]);return e.replace(/^\s+|\s+$/g,"");default:return""}},reverse:function(t){newrows=[];for(var e=0;e<t.rows.length;e++)newrows[newrows.length]=t.rows[e];for(var e=newrows.length-1;e>=0;e--)t.appendChild(newrows[e]);delete newrows},sort_numeric:function(t,e){return aa=parseFloat(t[0].replace(/[^0-9.-]/g,"")),isNaN(aa)&&(aa=0),bb=parseFloat(e[0].replace(/[^0-9.-]/g,"")),isNaN(bb)&&(bb=0),aa-bb},sort_alpha:function(t,e){return t[0]==e[0]?0:t[0]<e[0]?-1:1},sort_ddmm:function(t,e){return mtch=t[0].match(sorttable.DATE_RE),y=mtch[3],m=mtch[2],d=mtch[1],1==m.length&&(m="0"+m),1==d.length&&(d="0"+d),dt1=y+m+d,mtch=e[0].match(sorttable.DATE_RE),y=mtch[3],m=mtch[2],d=mtch[1],1==m.length&&(m="0"+m),1==d.length&&(d="0"+d),dt2=y+m+d,dt1==dt2?0:dt1<dt2?-1:1},sort_mmdd:function(t,e){return mtch=t[0].match(sorttable.DATE_RE),y=mtch[3],d=mtch[2],m=mtch[1],1==m.length&&(m="0"+m),1==d.length&&(d="0"+d),dt1=y+m+d,mtch=e[0].match(sorttable.DATE_RE),y=mtch[3],d=mtch[2],m=mtch[1],1==m.length&&(m="0"+m),1==d.length&&(d="0"+d),dt2=y+m+d,dt1==dt2?0:dt1<dt2?-1:1},shaker_sort:function(t,e){for(var r=0,o=t.length-1,n=!0;n;){n=!1;for(var s=r;o>s;++s)if(e(t[s],t[s+1])>0){var a=t[s];t[s]=t[s+1],t[s+1]=a,n=!0}if(o--,!n)break;for(var s=o;s>r;--s)if(e(t[s],t[s-1])<0){var a=t[s];t[s]=t[s-1],t[s-1]=a,n=!0}r++}}},document.addEventListener&&document.addEventListener("DOMContentLoaded",sorttable.init,!1),/WebKit/i.test(navigator.userAgent))var _timer=setInterval(function(){/loaded|complete/.test(document.readyState)&&sorttable.init()},10);window.onload=sorttable.init,dean_addEvent.guid=1,fixEvent.preventDefault=function(){this.returnValue=!1},fixEvent.stopPropagation=function(){this.cancelBubble=!0},Array.forEach||(Array.forEach=function(t,e,r){for(var o=0;o<t.length;o++)e.call(r,t[o],o,t)}),Function.prototype.forEach=function(t,e,r){for(var o in t)"undefined"==typeof this.prototype[o]&&e.call(r,t[o],o,t)},String.forEach=function(t,e,r){Array.forEach(t.split(""),function(o,n){e.call(r,o,n,t)})};var forEach=function(t,e,r){if(t){var o=Object;if(t instanceof Function)o=Function;else{if(t.forEach instanceof Function)return void t.forEach(e,r);"string"==typeof t?o=String:"number"==typeof t.length&&(o=Array)}o.forEach(t,e,r)}};
;
var Smartsheet = Smartsheet || {};
// Such var. Many object.
var WOW = WOW || {};
(function($) {

    var $window = $(window);
    $(document).ready(function() {


        //global-ishVars
        var ctaOffset = jQuery('.body');

        function hideAllShowMatches($hide, $show) {
    for (var i = 0; i < $hide.length; i++) {
        $($hide[i]).hide();
        for (var e = 0; e < $show.length; e++) {
            if ($($hide[i]).hasClass($show[e])) {
                $($hide[i]).show();
            }
        }
    }
}
//js-click-filter for showing relivant info from inputs
jQuery('.js-click-filter button').on('click', function() {
    //show all the things
    $('section .content .activity').show();
    $('section .content .article-wrapper .nomatch').remove();

    var objVal = $('.js-click-filter select[name="objective"] ').val();
    var timeVal = $('.js-click-filter select[name="time"]').val();
    var groupVal = $('.js-click-filter select[name="groupSize"] ').val();

    var inexpensive = $('.js-click-filter input#inexpensive:checked').val();
    var fast = $('.js-click-filter input#fast:checked').val();
    var outdoors = $('.js-click-filter input#outdoors:checked').val();
    var remoteTeams = $('.js-click-filter input#remoteTeams:checked').val();
    var minimalSetUp = $('.js-click-filter input#minimalSetUp:checked').val();
    var wowFactor = $('.js-click-filter input#wowFactor:checked').val();


    // show only things that match select filter vals
    $('section .content .activity').hide();
    if (objVal !== 'default') {
        $('section .content .activity' + '.' + objVal).show();
    }
    if (timeVal !== 'default') {
        $('section .content .activity' + '.' + timeVal).show();
    }
    if (groupVal !== 'default') {
        $('section .content .activity' + '.' + groupVal).show();
    }
    if (objVal !== 'default' && timeVal !== 'default') {
        $('section .content .activity').hide();
        $('section .content .activity' + '.' + objVal + '.' + timeVal).show();
    }

    if (objVal !== 'default' && groupVal !== 'default') {
        $('section .content .activity').hide();
        $('section .content .activity' + '.' + objVal + '.' + groupVal).show();
    }
    if (timeVal !== 'default' && groupVal !== 'default') {
        $('section .content .activity').hide();
        $('section .content .activity' + '.' + groupVal + '.' + timeVal).show();

    }
    if (objVal !== 'default' && timeVal !== 'default' && groupVal !== 'default') {
        $('section .content .activity').hide();
        $('section .content .activity' + '.' + objVal + '.' + timeVal + '.' + groupVal).show();
    }


    //show checked boxes IF all three inputs are selected
    if ((objVal !== 'default' || timeVal !== 'default' || groupVal !== 'default') && ($('.js-click-filter input:checked').length !== 0)) {
        var valCounter = $('.js-click-filter input:checked');
        var checkBoxValues = [];
        var alreadyFilteredElements = [];
        for (var i = 0; i < valCounter.length; i++) {
            checkBoxValues.push($(valCounter[i]).val());
        }
        $('section .content .activity:visible').filter(function() {
            alreadyFilteredElements.push($(this));
        });
        hideAllShowMatches(alreadyFilteredElements, checkBoxValues);

    }

    //show only check box elements if input selects are default
    if (objVal === 'default' && timeVal === 'default' && groupVal === 'default') {
        var valCounter2 = $('.js-click-filter input:checked');
        var defaultSelectElements = [];
        var defaultCheckBoxValues = [];
        for (var g = 0; g < valCounter2.length; g++) {
            defaultCheckBoxValues.push($(valCounter2[g]).val());
        }
        $('section .content .activity').filter(function() {
            defaultSelectElements.push($(this));
        });
        hideAllShowMatches(defaultSelectElements, defaultCheckBoxValues);

    }
    if (objVal === 'default' && timeVal === 'default' && groupVal === 'default' && inexpensive === undefined && fast === undefined && outdoors === undefined && remoteTeams === undefined && minimalSetUp === undefined && wowFactor === undefined) {
        $('section .content .activity').show();
    }

    if ($('section .content .article-wrapper').children(':visible').length === 0) {
        $('section .content .article-wrapper').append('<div class="nomatch"><p>There were not matches to your query, please try again</p></li>');
    }

});





        //Sticky Nav ~ Solution Center
        var solutionCenterStickyNav = $('.sticky-navigation');
        if (solutionCenterStickyNav.length && solutionCenterStickyNav.css('display') === 'block') {
            $window.scroll(function() {
                if (Smartsheet.Utils.getTop('HeroContent') <= 0) {
                    solutionCenterStickyNav.addClass('stick');
                } else if (Smartsheet.Utils.getTop('HeroContent') >= 0) {
                    solutionCenterStickyNav.removeClass('stick');
                }
            });
        }

        // Add sticky banner to blog.
        var blogBanner = $('#banner.blog-banner');
        if (blogBanner.length) {
            var $body = $('body');
            $window.scroll(function() {
                // don't stick anythying if the mobile nav is open
                if ($body.hasClass('nav-open')) {
                    blogBanner.removeClass('stick-header');
                } else if (Smartsheet.Utils.getTop('BannerChecker') <= -69) {
                    blogBanner.addClass('stick-header');
                } else if (Smartsheet.Utils.getTop('BannerChecker') >= -69) {
                    blogBanner.removeClass('stick-header');
                }
            });
        }

        //Sticky social share on blog article
        var blogStickyShare = $('.sticky-social-bar');
        var blogStickyContainer = $('.social-column-container');
        if (blogStickyShare.length && blogStickyShare.css('display') === 'block') {
            $window.scroll(function() {
                if (Smartsheet.Utils.getTop('SocialChecker') <= 90) {
                    blogStickyContainer.addClass('stick');
                } else if (Smartsheet.Utils.getTop('SocialChecker') >= 90) {
                    blogStickyContainer.removeClass('stick');
                }
            });
        }


        //Only use Flexslider on Desktop
        $('ul.field-slide-collection-content').addClass('slides');
        $('.solutions-slider').flexslider({
            slideshow: false,
            animation: 'slide',
            pauseOnHover: true,
            touch: true,
            directionNav: true,
            prevText: '&nbsp;',
            nextText: '&nbsp;',
        });



        //product tour try-it overlay
        $('.trigger-overlay').click(function(e) {
            if ($('body').hasClass('try-it-overlay-active')) {
                e.preventDefault();
                $('#banner .overlay').fadeIn();
                $('.overlay-shroud').show();
            }
        });


        $('.overlay-shroud').click(function(e) {
            e.preventDefault();
            $('#banner .overlay').fadeOut();
            $(this).hide();
        });

        //Move product tour menu block on mobile to bottom of the page
        if ($(document).width() < 700) {
            var bottomMain = $('#block-menu-menu-product-tour').parent();
            var tourMenu = $('#block-menu-menu-product-tour');

            //target new location
            $('<div/>', {
                id: 'block-menu-menu-product-tour-bottom',
                'class': 'product-tour-menu-block',
                html: tourMenu.html()
            }).appendTo(bottomMain);

            $('#block-menu-menu-product-tour-bottom').css('position', 'inherit').css('margin-bottom', '30px');

        }

        //kraken message mobile toggle
        $('.global-alerts > div').click(function() {
            $(this).toggleClass('mobile-toggle');
        });


        //hacky mchackerson smooth scrolling try
        $('.GlobalNav').css('-webkit-overflow-scrolling', 'auto');


        // Handle social sharing on blog posts.
        $(document).click(function(event) {
            var $target = $(event.target);

            //blog share conditions
            if ($target.hasClass('share-article')) {
                $($target).parent('.social-share').toggleClass('open');
            } else {
                $('.social-share').removeClass('open');
            }
        });

        // Opens and closes share bar on blog
        var shareOpen = false;


        $('.snipe .demo .frame').addClass('ready');


        //Industry Page Slider
        $('.industry-view-changer').flexslider({
            animation: 'fade',
            slideshow: false,
            manualControls: '.flex-control-nav li',
            start: function() {}
        });

        //legacy homepage Slider
        $('.site-section-homepage .flexslider').flexslider({
            animation: 'fade',
            start: function() {
                var offset = $('#stickyCTA').offset();
                if (offset) {
                    ctaOffset = offset.top;
                }
            }
        });

        //NEW Homepage Sliders

        $('.hero-slider').flexslider({
            animation: 'fade',
            start: function() {
                var offset = $('#stickyCTA').offset();
                if (offset) {
                    ctaOffset = offset.top;
                }
            }
        });
        $('.customer-slider').flexslider({
            animation: 'fade',
            start: function() {}
        });


        //Industry Contact Switcher
        var industryMarquee = Smartsheet.Utils.getURLParameter('rel');
        if (industryMarquee) {
            $('body').addClass(industryMarquee);
        }

        //focus on the input field on the homepagez
        $('.cta-box input:text:visible:first').focus();
        $('#RainMan input:text:visible:first').focus();


        //Rainman slider speed
        $('.rainman-hero-slider').flexslider({
            animation: 'fade',
            slideshowSpeed: 3500
        });

        //Rainman PLA switcher
        var initialRadio = $('#PLA-Business-Plan input[type=radio]:checked');
        var plaRadio = $('#PLA-Business-Plan input[type=radio]');

        initialRadio.parent().addClass('active-check');

        plaRadio.closest('label').on('change', function() {
            $(this).addClass('active-check').siblings().removeClass('active-check');
        });



        //put a scroll delay on home-features-slider
        if ($('#Features').length && $('.home-features-slider').length) {
            var $features = $('#Features');
            var $slider = $('.home-features-slider');
            var featuresSliderStarted = false;
            $window.scroll(function() {
                if (!featuresSliderStarted && ($window.scrollTop() + 700 > $features.position().top)) {
                    $slider.flexslider({
                        animation: 'fade',
                        slideshow: true,
                        controlNav: false,
                        slideshowSpeed: 10000
                    });
                    featuresSliderStarted = true;
                }
            });
        }
        $('.resources-slider').flexslider({
            animation: 'slide',
            slideshow: false,
            itemWidth: 0
        });


        //Pert
        $('.js-pert-calc input[type="submit"]').on('click', function(event) {
            event.preventDefault();
            var $Opt = $('.js-pert-calc input#Opt').val();
            var $mostLikely = $('.js-pert-calc input#mostLikely').val();
            var $Pessemisticc = $('.js-pert-calc input#Pessemisticc').val();
            var pertCalc = ((parseInt($Opt) + (parseInt(4 * $mostLikely)) + parseInt($Pessemisticc)) / 6);
            if ($('.pert-wrap .solution') !== '') {
                $('.pert-wrap .solution').empty();
            }

            if (pertCalc !== '' && !isNaN(pertCalc)) {
                $('.js-pert-calc').after('<p class="solution">Your PERT Estimate = ' + pertCalc + '</p>');
            } else {
                $('.js-pert-calc').after('<p class="solution">Please enter a number value' + '</p>');

            }
        });
        //Pert reset
        $('.js-pert-calc input[type="button"]').on('click', function(event) {
            $('.js-pert-calc input[type="text"]').val(0);
            if ($('.pert-wrap .solution') !== '') {
                $('.pert-wrap .solution').empty();
            }
        });


        //Jira page slider
        $('.jira-features-slider').flexslider({
            animation: 'fade',
            slideshow: false
        });

        //partner page slider
        $('.partner-features-slider').flexslider({
            animation: 'fade',
            slideshow: false
        });

        //Sticky CTA
        var $cta = jQuery('#stickyCTA');
        var mobile = jQuery('.menu').find('span.mobile-checker').is(':visible');
        if (mobile && $cta.length > 0) {
            ctaOffset = ($cta.offset().top);
            jQuery(window).scroll(function() {
                var windowpos = $window.scrollTop();
                if (windowpos >= ctaOffset) {
                    $cta.addClass('stick');
                } else {
                    $cta.removeClass('stick');
                }
            });
        }
        // Display email address from URL in the page (used on provconfirm).
        var $emailDisplay = $('.js-display-url-email');
        if ($emailDisplay.length) {
            var emailAddress = Smartsheet.Utils.getURLParameter('email');
            if (!Smartsheet.Utils.validateEmail(emailAddress)) {
                emailAddress = 'Your Inbox';
            }
            $emailDisplay.html(Smartsheet.Utils.escapeHtml(emailAddress));
        }

        //Smooth scroll
        $('a[href*=#]:not([href=#])').click(function() {
            if (location.pathname.replace(/^\//, '') === this.pathname.replace(/^\//, '') && location.hostname === this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000, 'swing', function() {
                        $(this).trigger('smooth-scroll-complete');
                    });
                    return false;
                }
            }
        });

        // Content toggler used on pricing page
        var $toggler = $('.js-content-toggler');
        var getIndexFromClassPrefix = function(prefix, element) {
            // Iterate over the element's classes, looking for one that starts with
            // the prefix.
            var classes = $(element).attr('class').split(/\s+/);
            for (var i = 0; i < classes.length; i++) {
                var className = classes[i];
                if (className.indexOf(prefix) !== -1) {
                    return className.replace(new RegExp('^' + prefix), '');
                }
            }
            return false;
        };
        if ($toggler.length) {
            $toggler.change(function(e) {
                var $selected = $(this).find('option:selected');
                var index = getIndexFromClassPrefix('js-option-', $selected[0]);
                if (index) {
                    // Hide all js-content-*.
                    $('.js-active').filter(function() {
                        return getIndexFromClassPrefix('js-content-', this);
                    }).removeClass('js-active');
                    // Show the content corresponding to the selected option.
                    $('.js-content-' + index).addClass('js-active');
                }
                //fix for list item marketing points on pricing page
                $('li.interactive-list').removeClass('js-active');
                $('li.interactive-list.' + $(this).val()).addClass('js-active');

                //this needs to happen so that when overly large (i.e. JPY)
                //prices are shown the corresponding clearing of the copy looks good
                $('p.price').removeClass('JPY-active');
                $('p.price .JPY.js-active').parent().addClass('JPY-active');

            });
            /**
             * Returns the remainder of a class name, given an element and a prefix.
             *
             * @param prefix
             *   The class prefix (e.g. 'js-option-').
             * @param element
             *   The DOM element expected to have a class with the given name
             *   (e.g. <div class='js-option-2 some-other-class'>).
             * @returns {*}
             *   The remainder of the class name (e.g. '2'), or false if no class
             *   starting with the given prefix was found.
             */
        }

        // Tooltips
        if ($('.js-tooltip').length) {
            var $allMessages = $('.js-tooltip .js-message');
            $('body').click(function(e) {
                var $target = $(e.target);
                if ($target.hasClass('js-tooltip')) {
                    var $currentMessage = $target.find('.js-message');
                    var state = $currentMessage.hasClass('js-active');
                    $allMessages.removeClass('js-active');
                    $currentMessage.toggleClass('js-active', !state);
                } else if ($target.hasClass('js-message')) {
                    // Do nothing when the popup itself is clicked.
                } else {
                    $allMessages.removeClass('js-active');
                }
            });
        }

        // Accordion
        $('.js-simple-accordion-action ').click(function(e) {
            $(this).toggleClass('open');
        });
        //Accordion : Sticker // Pricing-C
        $('.accordion-sticker').click(function() {
            $(this).parent().parent().prev('h4.clickable').click();
        });
        // Accordion : Dreamforce Forms
        $('.js-simple-accordion-forms').click(function() {
            $(this).closest('.accordion--title').siblings('.accordion--box').toggleClass('open');
            $(this).toggleClass('active-grey');
        });

        // Add toggle to video transcripts
        $('.field-transcript').after('<div class="transcript-accordion">Expand</div>');

        $('.transcript-accordion').click(function() {
            $(this).prev().toggleClass('open');
            if ($(this).prev().hasClass('open')) {
                $(this).html('Collapse');
            } else {
                $(this).html('Expand');
            }
        });

        // Accordion Drawers
        $('.accordion-drawer').click(function(e) {
            if ($(this).hasClass('arrow')) {
                $(this).next().slideToggle();
                $(this).toggleClass('open');
            } else {
                $(this).next().slideToggle();
                $(this).toggleClass('open');
                $(this).next().toggleClass('open');
            }
        });

        $('.accordion-drawer a').click(function(e) {
            e.stopPropagation();
        });

        // Replacement Elements to replace Modal Overlays
        $('.replace-me').click(function() {
            //autoplay youtube
            var YT = $(this).next().find('iframe');
            var YTsrc = YT.attr('src') + '&autoplay=1';
            YT.attr('src', YTsrc);
            $(this).html($(this).next().html());
            $(this).next().html('');
        });

        //webinar email anchor
        // this is for links sent in emails. links will go to accordion section and open them
        $(function() {
            if (document.location.href.indexOf('webinars#onlinetraining') > -1) {
                $('#onlinetraining').addClass('open');
            }
        });
        $(function() {
            if (document.location.href.indexOf('webinars#101') > -1) {
                $('#101').addClass('open');
            }
        });
        $(function() {
            if (document.location.href.indexOf('webinars#201') > -1) {
                $('#201').addClass('open');
            }
        });
        $(function() {
            if (document.location.href.indexOf('webinars#qa') > -1) {
                $('#qa').addClass('open');
            }
        });
        $(function() {
            if (document.location.href.indexOf('webinars#worksmart') > -1) {
                $('#worksmart').addClass('open');
            }
        });

        //preselect Sales in contact form dropdown by url
        $(function() {
            if (document.location.href.indexOf('contact#sales') > -1) {
                $('option[value=sales]').attr('selected', 'selected');
            }
        });

        //services contact
        $(function() {
            if (document.location.href.indexOf('contact-services#design-desk') > -1) {
                $('option[value=design-desk]').attr('selected', 'selected');
            }
        });
        $(function() {
            if (document.location.href.indexOf('contact-services#custom-solution-development') > -1) {
                $('option[value=custom-solution-development]').attr('selected', 'selected');
            }
        });
        $(function() {
            if (document.location.href.indexOf('contact-services#consulting') > -1) {
                $('option[value=consulting]').attr('selected', 'selected');
            }
        });
        $(function() {
            if (document.location.href.indexOf('contact-services#certification') > -1) {
                $('option[value=certification]').attr('selected', 'selected');
            }
        });
        $(function() {
            if (document.location.href.indexOf('contact-services#training') > -1) {
                $('option[value=training]').attr('selected', 'selected');
            }
        });
        $(function() {
            if (document.location.href.indexOf('contact-services#custom-training') > -1) {
                $('option[value=custom-training]').attr('selected', 'selected');
            }
        });
        $(function() {
            if (document.location.href.indexOf('contact-services#onsite-training') > -1) {
                $('option[value=onsite-training]').attr('selected', 'selected');
            }
        });

        //legal contact
        $(function() {
            if (document.location.href.indexOf('contact#other') > -1) {
                $('option[value=other]').attr('selected', 'selected');
            }
        });


        // Scrolling on the google map without causing it to scroll or zoomed til clicked
        $('.js-google-map').click(function() {
            $('.js-google-map iframe').css('pointer-events', 'auto');
        });

        // Changing the dropdown text in the contact us page
        $('.site-section-contact-us #edit-submitted-department.form-select option:first').attr('text', 'Select Department');


        // Language switch dropdown
        var langSettings = {
            'de': 'http://de.smartsheet.com',
            'en': 'http://www.smartsheet.com',
            'es': 'http://es.smartsheet.com',
            'fr': 'http://fr.smartsheet.com',
            'it': 'http://it.smartsheet.com',
            'pt': 'http://pt.smartsheet.com',
            'ru': 'http://ru.smartsheet.com',
            'ja': 'http://jp.smartsheet.com'
        };

        $('#language-switch').change(function(event) {
            var langcode = this.options[this.selectedIndex].value;
            var href = langSettings[langcode];
            if (href.indexOf('http') !== -1) {
                window.location.href = href;
            }
        });

        // *** Form validation plugin Start ***
        // Form Validation for Contact Us Page
        $('.contact-form-wrapper form').validate({
            rules: {
                'submitted[department]': {
                    required: true
                },
                'submitted[first_name]': {
                    required: true,
                    minlength: 1,
                    maxlength: 32
                },
                'submitted[last_name]': {
                    required: true,
                    minlength: 1,
                    maxlength: 32
                },
                'submitted[email_address]': {
                    required: true,
                    email: true
                },
                'submitted[phone_number]': {
                    required: false
                },
                'submitted[message]': {
                    required: true
                }
            },
            messages: {
                'submitted[department]': '<p class="errormsg">This field is required</p>',
                'submitted[first_name]': '<p class="errormsg">This field is required</p>',
                'submitted[last_name]': '<p class="errormsg">This field is required</p>',
                'submitted[email_address]': {
                    required: '<p class="errormsg">This field is required</p>',
                    email: '<p class="errormsg">Your email address must be in the format of name@domain.com</p>'
                },
                'submitted[message]': '<p class="errormsg">This field is required</p>'
            }

        });

        //Video center pager add hash to links
        var videoHash = '#Video-Categories';
        $('.page-videos ul.pager a').each(function() {
            this.hash = videoHash;
        });

        if ($('article').hasClass('playlist')) {
            $('#banner').addClass('playlist-banner');
        } else if ($('body').hasClass('videos')) {
            $('#banner').addClass('playlist-banner');
        }

        //Dashboard Gallery
        $('#Dashboards .full-size').click(function() {
            var imgSrc = $(this).prev('img').attr('src');
            var altImgSrc = $(this).prev('img').attr('data-modal-img');
            var imgTitle = $(this).prev('img').attr('title');
            var modalImgSrc = altImgSrc || imgSrc;

            $('body').addClass('overlay');
            $('#page-shroud').addClass('overlay').fadeIn();
            $('#page-shroud img').attr('src', modalImgSrc);
            $('#page-shroud figcaption').text(imgTitle);

        });

        $('#page-shroud').click(function() {
            $('#page-shroud').removeClass('overlay').fadeOut();
            $('body').removeClass('overlay');
        });

        //Colin's useless menu experiment
        $('a:contains("View")').addClass('view');
        $('#tabs a[href*=edit]').addClass('edit');
        $('#tabs a[href*=outline]').addClass('outline');
        $('#tabs a[href*=revisions]').addClass('revisions');
        $('#tabs a[href*=translate]').addClass('translate');
        $('#tabs a[href*=clone]').addClass('clone');
        $('#tabs a[href*=shortcuts]').addClass('shortcuts');
        $('#tabs a[href*=contact]').addClass('contact');
        $('#tabs a[href*=devel]').addClass('devel');
        $('#tabs a[href*=results]').addClass('results');
        $('#tabs a[href*=log]').addClass('log');
        $('#tabs a[href*=lingotek_pm]').addClass('translations');
        $('#tabs a[href*=lingotek_dev]').addClass('lingotek');


        // Remove empty elements from legacy blog posts.
        $('.node-type-blog .field-body *').filter(function() {
            return $.trim($(this).html()) === '&nbsp;';
        }).remove();

        // Wrap video iframes from WYSIWYG with video divs
        var $videoIframe = $('.field-body iframe');
        var $videoDiv = $('.field-body .video');

        var $videoArticleIframe = $('.node-multipart-article .article-section iframe');
        var $videoArticleDiv = $('.node-multipart-article .article-section .video');

        //remove any existing divs that were added by users
        $videoDiv.removeClass('video');
        $videoIframe.wrap('<div class="video"></div>');

        $videoArticleDiv.removeClass('video');
        $videoArticleIframe.wrap('<div class="video"></div>');

        // Hide sidebar on blog if user checks box
        if ($('article').hasClass('one-column')) {
            $('body').addClass('one-column');
        }

        // Tile Wow overrides
        $('.apps a.tile').removeClass('wow');

        //Call Features Slider

        $('.features-slider').flexslider({
            animation: 'fade',
            slideshow: true,
            slideshowSpeed: 3000,
            animationSpeed: 500
        });

        //Careers Slider
        $('body.page-careers div.flexslider').flexslider({
            animation: 'fade',
            slideshow: true
        });

        // *****************
        // Apps Detail Scripts
        // *****************
        $('ul.field-app-detail-media-asset').addClass('slides');
        $('.apps-detail-slider').flexslider({
            animation: 'fade',
            slideshow: false
        });

        // create thumbnail images for apps page
        var count = 0;
        $('.field-app-detail-media-asset > li').each(function() {
            var $img = $(this).find('div.content img');
            if (typeof($img.attr('src')) !== 'undefined') {
                var src = $img.attr('src');
                $('ol.flex-control-nav li:eq(' + count +
                    ') a').html('<span style="background-image: url(' + src + ')"></span>');
                count++;
            } else {
                $('ol.flex-control-nav li:eq(' + count +
                    ') a').html('<span class="video-thumbnail" style="background-image: url(/sites/default/files/app-gallery-play-button-thumbnail-large.png)"></span>');
                count++;
            }
        });


        //Social Share Links
        var _href = window.location.href;

        var metaTags = document.getElementsByTagName('meta');
        var _title = '';
        for (var i = 0; i < metaTags.length; i++) {
            if (metaTags[i].getAttribute('property') === 'og:title') {
                _title = metaTags[i].getAttribute('content');
                break;
            }
        }

        //facebook
        $('a.socilfacebook').attr('href',
            'http://www.facebook.com/sharer.php?u=' + _href);
        //twitter
        $('a.socialtwitter').attr('href',
            'http://twitter.com/share?text=' + _title + '&url=' + _href);
        //google
        $('a.socialgoogle').attr('href',
            'https://plus.google.com/share?url=' + _href);
        //linked
        $('a.sociallinkedin').attr('href',
            'http://www.linkedin.com/shareArticle?mini=true&amp;url=' + _href + '&amp;title=' + _title);
        //email
        $('a.socialemail').attr('href',
            'mailto:?subject=' + _title + '&body=Check this out: ' + _href);


        //Befor After Slider Function
        function drags(dragElement, resizeElement, container) {

            // Initialize the dragging event on mousedown.
            dragElement.on('mousedown touchstart', function(e) {

                dragElement.addClass('draggable');
                resizeElement.addClass('resize-me');

                // Check if it's a mouse or touch event and pass along the correct value
                var startX = (e.pageX) ? e.pageX : e.originalEvent.touches[0].pageX;

                // Get the initial position
                var dragWidth = dragElement.outerWidth(),
                    posX = dragElement.offset().left + dragWidth - startX,
                    containerOffset = container.offset().left,
                    containerWidth = container.outerWidth();

                // Set limits
                var minLeft = containerOffset + 10;
                var maxLeft = containerOffset + containerWidth - dragWidth - 10;

                // Calculate the dragging distance on mousemove.
                dragElement.parents().on('mousemove touchmove', function(e) {

                    // Check if it's a mouse or touch event and pass along the correct value
                    var moveX = (e.pageX) ? e.pageX : e.originalEvent.touches[0].pageX;

                    var leftValue = moveX + posX - dragWidth;

                    // Prevent going off limits
                    if (leftValue < minLeft) {
                        leftValue = minLeft;
                    } else if (leftValue > maxLeft) {
                        leftValue = maxLeft;
                    }

                    // Translate the handle's left value to masked divs width.
                    var widthValue = (leftValue + dragWidth / 2 - containerOffset) * 100 / containerWidth + '%';

                    // Set the new values for the slider and the handle.
                    // Bind mouseup events to stop dragging.
                    $('.draggable').css('left', widthValue).on('mouseup touchend touchcancel', function() {
                        $(this).removeClass('draggable');
                        resizeElement.removeClass('resize-me');
                    });
                    // $('.resize-me').css('width', widthValue);
                    $('.resize-me').attr('style', 'width:' + widthValue + '!important');
                }).on('mouseup touchend touchcancel', function() {
                    dragElement.removeClass('draggable');
                    resizeElement.removeClass('resize-me');
                });
                e.preventDefault();
            }).on('mouseup touchend touchcancel', function(e) {
                dragElement.removeClass('draggable');
                resizeElement.removeClass('resize-me');
            });
        }

        // Call & init
        $(document).ready(function() {
            $('.ba-slider').each(function() {
                var cur = $(this);
                // Adjust the slider
                var width = cur.width() + 'px';
                // cur.find('.resize img').css('width', width);
                cur.find('.resize img').attr('style', 'width:' + width + '!important');
                // Bind dragging events
                drags(cur.find('.handle'), cur.find('.resize'), cur);
            });
        });

        // Update sliders on resize.
        // Because we all do this: i.imgur.com/YkbaV.gif
        $(window).resize(function() {
            $('.ba-slider').each(function() {
                var cur = $(this);
                var width = cur.width() + 'px';
                // cur.find('.resize img').css('width', width);
                cur.find('.resize img').attr('style', 'width:' + width + '!important');
                // Bind dragging events
            });
        });


    }); //end of the document ready

    /**
     * Namespace for generic utility functions.
     */
    Smartsheet.Utils = {};

    /**
     * Returns the value of a URL query parameter.
     *
     * For example, if the current window location is
     * 'https://www.smartsheet.com/provconfirm?email=jane@doe.com',
     * getURLParameter('email') will return 'jane@doe.com'.
     *
     * @param name
     *   The query parameter key (e.g. 'email').
     * @returns {string|null}
     *   The query parameter value ('jane@doe.com'), or null if the key does not
     *   exist in the URL.
     */
    Smartsheet.Utils.getURLParameter = function(name) {
        var match = location.search.match(new RegExp('[?|&]' + name + '=(.+?)(&|$)'));
        if (match) {
            return decodeURIComponent(match[1]);
        }
        return null;
    };

    /**
     * Determines whether a string is (likely to be) a valid email address.
     *
     * @param email
     *   The email address.
     * @returns {boolean}
     */
    Smartsheet.Utils.validateEmail = function(email) {
        var re = /\S+@\S+\.\S+/;
        return !!re.test(email);
    };

    /**
     * Returns a plain-text version of a string, with HTML characters escaped.
     *
     * @param string
     *   The input (e.g. '<script></script>').
     * @returns {string}
     *   The escaped output (e.g. '&lt;script&gt;&lt;&#x2F;script&gt;').
     */
    Smartsheet.Utils.escapeHtml = function(string) {
        var entityMap = {
            '&': '&amp;',
            '<': '&lt;',
            '>': '&gt;',
            '"': '&quot;',
            "'": '&#39;', // jshint ignore:line
            '/': '&#x2F;'
        };

        return String(string).replace(/[&<>"'\/]/g, function(s) {
            return entityMap[s];
        });
    };

    /**
     * Returns the top bound of an element.
     *
     * @param id
     *   The element id.
     * @returns {Number}
     *   The top bound of the element.
     */
    Smartsheet.Utils.getTop = function(el) {
        var div;
        if (!el.tagName) {
            div = document.getElementById(el);
        } else {
            div = el;
        }
        if (div.getBoundingClientRect) {
            var rect = div.getBoundingClientRect();
            return rect.top;
        }
    };

    /**
     * Returns the bottom bound of an element.
     *
     * @param id
     *   The element id.
     * @returns {Number}
     *   The bottom bound of the element.
     */
    Smartsheet.Utils.getBottom = function(el) {
        var div;
        if (!el.tagName) {
            div = document.getElementById(el);
        } else {
            div = el;
        }
        if (div.getBoundingClientRect) {
            var rect = div.getBoundingClientRect();
            return rect.bottom;
        }
    };

})(jQuery);
;
(function($) {

  $(document).ready(function() {

    //target the subnavs and add a hook
    $('.smartsheet-global-navigation > .content > .menu > li > ul').addClass('nav-dropdown');
    $('.smartsheet-global-navigation .no-hover-dropdown').next('.nav-dropdown').addClass('no-height');
    $('.smartsheet-global-navigation .no-height').parent('li').addClass('no-highlight');

    //insert the interceptor!
    var $parents = $('.smartsheet-global-navigation li.expanded');
    $parents.append('<div class="toggle"></div>');

    //mobile nav drawer action
    $('.smartsheet-global-navigation .toggle').click(function (e) {
      e.preventDefault();
      $(this).prev('.nav-dropdown').toggleClass('open');
      $(this).prev().prev('a.parent').toggleClass('downCarat');
    });

    //make sure the nav is always closed on page load
    $('#nav-trigger').attr('checked', false);

    //add an open class to the body when the nav is open
    $('#nav-trigger').change(function () {
      $('body').toggleClass('nav-open');
    });

    //category sub navigation
    $('ul.menu .overflow').parent('li').addClass('overflow-li');

  }); //end of the document ready

})(jQuery);
;
/*!
 * Fresco - A Beautiful Responsive Lightbox - v1.6.3
 * (c) 2012-2014 Nick Stakenburg
 *
 * http://www.frescojs.com
 *
 * License: http://www.frescojs.com/license
 */
;eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('(J(i){"J"==8Z 5L&&5L.90?5L(["91"],i):2a&&!16.75&&(16.75=i(2a))})(J($){J 1e(i){K t={};1Z(K e 4o i)t[e]=i[e]+"1e";T t}J 5M(){K i=A.3a();T i.M>i.L?"4p":"4Z"}J 5N(i){T 51.76.2u(51,i.77(" ","").3H(","))}J 5O(){1Z(K i="",t=5N("92,97,93,78,94,95");!/^([a-52-Z])+/.53(i);)i=1a[t]().96(36).54(2,5);T i}J 5N(i){T 51.76.2u(51,i.3H(","))}J 5P(i){16.5Q&&5Q[5Q.5P?"5P":"98"](i)}J 5R(i,t){U(!1G.79)T t(!1,1),2v 0;K e={L:i.L,M:i.M},s={L:3V,M:3V},n=1,o=1;e.L>s.L&&(n=s.L/e.L),e.M>s.M&&(o=s.M/e.M);K a=1a.1V(n,o);1>a&&(e.L*=a,e.M*=a);K r=2j 5S,h=$("<4q>").2w(e)[0],d=h.5T("2d");d.99=.8,d.9a(i,0,0,e.L,e.M),r.3I=J(){t(r,a)};7a{r.2Q=h.5U("1q/7b")}7c(l){t(!1,1)}}J 56(i,t){1Z(K e 4o t)t[e]&&t[e].7d&&t[e].7d===9b?(i[e]=$.1b({},i[e])||{},56(i[e],t[e])):i[e]=t[e];T i}J 3m(i,t){T 56($.1b({},i),t)}J 3W(){I.1z.2u(I,2C.2b(1J))}J 5V(){I.1z.2u(I,2C.2b(1J))}J 5W(){I.1z.2u(I,2C.2b(1J))}J 5X(){I.1z.2u(I,2C.2b(1J))}J 5Y(){I.1z.2u(I,2C.2b(1J))}J 3X(){I.1z.2u(I,2C.2b(1J))}J 5Z(){I.1z.2u(I,2C.2b(1J))}J 4r(i){K t={11:"1q"};T $.1h(H,J(e,s){K n=s.1j(i);n&&(t=n,t.11=e,t.1u=i)}),t}J 57(i){K t=(i||"").77(/\\?.*/g,"").7e(/\\.([^.]{3,4})$/);T t?t[1].60():1A}K j={};$.1b(j,{61:"1.6.3"}),j.3J={7f:{1v:{1r:{1i:0,1f:0,3n:9c,58:!0},1K:{1i:0,1f:62,2F:63},14:{1i:3V,3o:0,2p:62,2F:63},9d:{9e:3V,9f:3V},16:{1i:9g,1f:62,1s:9h},W:{1i:63,1f:3V,2F:9i}},59:{W:{1i:7g,1f:7g,2F:9j},16:{1i:10}},5a:{1n:!0,2x:!0,5b:!0},2R:!1,3Y:"1H-1C",3b:"2k",1M:{2q:!0},1s:!1,3K:!0,7h:{2k:{21:20,2y:20},x:{21:0,2y:0},y:{21:0,2y:0},2S:{21:0,2y:0}},14:!0,1R:{L:{4p:.8,4Z:.6}},W:"1W",1N:{64:1,5c:1,9k:1,9l:1,4p:0,2R:0},22:{64:1,2T:1,9m:1,7i:1,9n:3,2R:0,9o:1,9p:0,9q:"7j"},5d:{1q:{},1N:{L:7k},22:{L:7k,M:7l}}},7m:{},23:{},7n:{}};K q=J(i){J t(t){K e=9r(t+"([\\\\d.]+)").5e(i);T e?65(e[1]):!0}T{1k:!(!16.9s||-1!==i.2U("66"))&&t("9t "),66:i.2U("66")>-1&&(!!16.67&&67.61&&65(67.61())||7.55),3Z:i.2U("7o/")>-1&&t("7o/"),7p:i.2U("7p")>-1&&-1===i.2U("9u")&&t("9v:"),4s:!!i.7e(/9w.*9x.*9y/),68:i.2U("68")>-1&&t("68/"),7q:i.2U("7r")>-1&&t("7r/"),3p:i.2U("3p")>-1&&t("3p "),5f:i.2U("5f")>-1&&t("5f/")}}(7s.9z),2C=9A.2V.9B,2l={5g:J(i){T i&&1==i.7t},12:{9C:J(){J i(i){1Z(K t=i;t&&t.7u;)t=t.7u;T t}T J(t){K e=i(t);T!(!e||!e.4t)}}()}};(J(){J i(i){K t;U(i.4u.7v?t=i.4u.7v/9D:i.4u.7w&&(t=-i.4u.7w/3),t){K e=$.9E("23:5h");$(i.3c).9F(e,t),e.9G()&&i.3d(),e.9H()&&i.2W()}}$(2c.40).1O("5h 9I",i)})();K z=J(){K i=0,t=5O()+5O();T J(e){1Z(e=e||t,i++;$("#"+e+i)[0];)i++;T e+i}}(),3L={};(J(){K i={};$.1h(["9J","9K","9L","9M","9N"],J(t,e){i[e]=J(i){T 1a.9O(i,t+2)}}),$.1b(i,{9P:J(i){T 1-1a.9Q(i*1a.9R/2)}}),$.1h(i,J(i,t){3L["9S"+i]=t,3L["9T"+i]=J(i){T 1-t(1-i)},3L["9U"+i]=J(i){T.5>i?t(2*i)/2:1-t(-2*i+2)/2}}),$.1h(3L,J(i,t){$.3L[i]||($.3L[i]=t)})})();K A={3a:J(){K i={L:$(16).L(),M:$(16).M()};U(q.4s){K t=2c.40.9V/16.69;i.M=16.7x*t}T i}},3q={3r:J(i){K t=$.1b({2e:"2S"},1J[1]||{});t.2G||(t.2G=$.1b({},V.2z));K e=t.2G,s=$.1b({},i),n=1,o=5;t.3s&&(e.L-=2*t.3s,e.M-=2*t.3s);K a={M:!0,L:!0};2D(t.2e){1D"2k":a={};1D"L":1D"M":a={},a[t.2e]=!0}1Z(;o>0&&(a.L&&s.L>e.L||a.M&&s.M>e.M);){K r=1,h=1;a.L&&s.L>e.L&&(r=e.L/s.L),a.M&&s.M>e.M&&(h=e.M/s.M);K n=1a.1V(r,h);s={L:1a.2X(i.L*n),M:1a.2X(i.M*n)},o--}T s.L=1a.1x(s.L,0),s.M=1a.1x(s.M,0),s}},1G=J(){J i(i){T e(i,"7y")}J t(i,t){1Z(K e 4o i)U(2v 0!==s.41[i[e]])T"7y"==t?i[e]:!0;T!1}J e(i,e){K s=i.9W(0).7z()+i.54(1),o=(i+" "+n.9X(s+" ")+s).3H(" ");T t(o,e)}K s=2c.6a("13"),n="9Y 9Z O a0 a1".3H(" ");T{4q:J(){K i=2c.6a("4q");T!(!i.5T||!i.5T("2d"))}(),1R:J(){7a{T!!("a2"4o 16||16.7A&&2c a3 7A)}7c(i){T!1}}(),6b:!(!16.6b||q.1k&&9>q.1k),15:{7B:e("7B"),a4:i}}}();1G.24=1G.1R&&(q.4s||q.3p||q.5f||q.7q||!/^(a5|a6|a7)/.53(7s.a8)),1G.79=1G.4q&&J(){K i=2c.6a("4q");T i.5U&&0===i.5U("1q/6c").2U("1j:1q/6c")}();K B={1I:J(i,t,e){"J"==$.11(t)&&(e=t,t={}),t=$.1b({3M:!1,11:!1,a9:aa,2Y:!0},t||{});K s=B.1B.1I(i),n=t.11||4r(i).11,o={11:n,42:e};U(!s){K a;(a=B.3t.1I(i))&&a.17&&(s=a,B.1B.1S(i,a.17,a.1j))}U(s)e&&e($.1b({},s.17),s.1j);2r 2D(t.3M&&B.1K.2m(i),n){1D"1q":K r=2j 5S;r.3I=J(){r.3I=J(){},s={17:{L:r.L,M:r.M}},o.1q=r,t.2Y?5R(r,J(n,a){o.2Y=n,o.4v=a,B.1B.1S(i,s.17,o),t.3M&&B.1K.2m(i),e&&e(s.17,o)}):(B.1B.1S(i,s.17,o),t.3M&&B.1K.2m(i),e&&e(s.17,o))},r.2Q=i,t.3M&&B.1K.1S(i,{1q:r,11:n});2Z;1D"1N":K h=4r(i).3u,d="4w"+(16.2H&&"4x:"==16.2H.4y?"s":"")+":",l=$.7C(d+"//1N.31/5c/7D.7E?1u="+d+"//1N.31/"+h+"&42=?",$.Y(J(s){K n={17:{L:s.L,M:s.M}};B.1B.1S(i,n.17,o),t.3M&&B.1K.2m(i),e&&e(n.17,o)},I));t.3M&&B.1K.1S(i,{5i:l,11:n})}}};B.6d=J(){T I.1z.2u(I,2C.2b(1J))},$.1b(B.6d.2V,{1z:J(){I.1B=[]},1I:J(i){1Z(K t=1A,e=0;I.1B.1t>e;e++)I.1B[e]&&I.1B[e].1u==i&&(t=I.1B[e]);T t},1S:J(i,t,e){I.25(i),I.1B.2s({1u:i,17:t,1j:e})},25:J(i){1Z(K t=0;I.1B.1t>t;t++)I.1B[t]&&I.1B[t].1u==i&&43 I.1B[t]},ab:J(i){K t=1I(i.1u);t?$.1b(t,i):I.1B.2s(i)}}),B.1B=2j B.6d,B.3W=J(){T I.1z.2u(I,2C.2b(1J))},$.1b(B.3W.2V,{1z:J(){I.1B=[]},1S:J(i,t){I.2m(i),I.1B.2s({1u:i,1j:t})},1I:J(i){1Z(K t=1A,e=0;I.1B.1t>e;e++)I.1B[e]&&I.1B[e].1u==i&&(t=I.1B[e]);T t},2m:J(i){1Z(K t=I.1B,e=0;t.1t>e;e++)U(t[e]&&t[e].1u==i&&t[e].1j){K s=t[e].1j;2D(s.11){1D"1q":s.1q&&s.1q.3I&&(s.1q.3I=J(){});2Z;1D"1N":s.5i&&(s.5i.ac(),s.5i=1A)}43 t[e]}}}),B.1K=2j B.3W,B.3K=J(i,t,e){U("J"==$.11(t)&&(e=t,t={}),t=$.1b({2Y:!0,6e:!1},t||{}),!t.6e||!B.3t.1I(i)){K s;U((s=B.3t.1I(i))&&s.17)T"J"==$.11(e)&&e($.1b({},s.17),s.1j),2v 0;K n={1u:i,1j:{11:"1q"}},o=2j 5S;n.1j.1q=o,o.3I=J(){o.3I=J(){},n.17={L:o.L,M:o.M},t.2Y?5R(o,J(i,t){$.1b(n.1j,{2Y:i,4v:t}),"J"==$.11(e)&&e(n.17,n.1j)}):"J"==$.11(e)&&e(n.17,n.1j)},B.3t.1B.1X(n),o.2Q=i}},B.3t={1I:J(i){T B.3t.1B.1I(i)},7F:J(i){K t=I.1I(i);T t&&t.17}},B.3t.1B=J(){J i(i){1Z(K t=1A,s=0,n=e.1t;n>s;s++)e[s]&&e[s].1u&&e[s].1u==i&&(t=e[s]);T t}J t(i){e.2s(i)}K e=[];T{1I:i,1X:t}}();K C=J(){J i(i,s,n){i=i||{},n=n||{},i.3N=i.3N||(j.3J[D.44]?D.44:"23"),q.1k&&7>q.1k&&(i.3N="7n");K o=i.3N?$.1b({},j.3J[i.3N]||j.3J[D.44]):{},a=3m(e,o);s&&a.5d[s]&&(a=3m(a.5d[s],a),43 a.5d);K r=3m(a,i);U((1G.24||"1R"==r.W)&&(r.W="1W"),r.2e||(r.3b?"5j"==$.11(r.3b)?r.2e="2k":$.11("46"==r.3b)&&(r.2e="x"==r.3b?"M":"y"==r.3b?"L":"2S"==r.3b?"2k":"2S"):r.2e="2S"),r.2e?"5j"==$.11(r.2e)&&(r.2e="2S"):r.2e="2k",1G.24&&(r.2e="2S"),r.2T&&(r.2T="46"==$.11(r.2T)?3m(a.2T||e.2T||t.2T,{11:r.2T}):3m(t.2T,r.2T)),!r.1v||1G.24&&!r.59?(r.1v={},$.1h(t.1v,J(i,t){$.1h(r.1v[i]=$.1b({},t),J(t){r.1v[i][t]=0})})):1G.24&&r.59&&(r.1v=3m(r.1v,r.59)),q.1k&&9>q.1k&&56(r.1v,{1r:{1i:0,1f:0},14:{3o:0},16:{1i:0,1f:0},W:{1i:0,1f:0}}),(1G.24||q.1k&&7>q.1k)&&(r.14=!1),r.5a&&"1q"!=s&&$.1b(r.5a,{1n:!1,2x:!1}),!r.1o&&"5j"!=$.11(r.1o)){K h=!1;2D(s){1D"22":K d="4w"+(16.2H&&"4x:"==16.2H.4y?"s":"")+":";h=d+"//5k.22.31/6f/"+n.3u+"/0.7G";2Z;1D"1q":1D"1N":h=!0}r.1o=h}T r}K t=j.3J.7f,e=3m(t,j.3J.7m);T{7H:i}}();$.1b(3W.2V,{1z:J(i){I.3O=i,I.Q=$.1b({14:F,2f:"N-1K"},1J[1]||{}),I.Q.14&&(I.14=I.Q.14),I.2A(),I.3v()},2A:J(){U($(2c.4t).X(I.12=$("<13>").R(I.Q.2f).1f().X(I.4z=$("<13>").R(I.Q.2f+"-4z").X($("<13>").R(I.Q.2f+"-32")).X($("<13>").R(I.Q.2f+"-33")))),q.1k&&7>q.1k){K i=I.12[0].41;i.1s="6g",i.47("1p","((!!16.2a ? 2a(16).48() + (.5 * 2a(16).M()) : 0) + \'1e\')"),i.47("1n","((!!16.2a ? 2a(16).5l() + (.5 * 2a(16).L()): 0) + \'1e\')")}},49:J(i){I.12[0].2f=I.Q.2f+" "+I.Q.2f+"-"+i},3v:J(){I.12.1O("2g",$.Y(J(){I.3O.1f()},I))},7I:J(i){I.6h();K t=V.19&&V.19[V.1c-1];I.12.1L(1,0).3P(t?t.P.Q.1v.1K.1i:0,1,i)},1L:J(i,t){K e=V.19&&V.19[V.1c-1];I.12.1L(1,0).2F(t?0:e?e.P.Q.1v.1K.ad:0).4A(e.P.Q.1v.1K.1f,i)},6h:J(){K i=0,t="21"==I.14.1w.34;U(I.14){I.14.35();K i=I.14.1w.14[t?"M":"L"]}I.4z.15(1e({"1g-1p":I.3O.P.Q.14?t?i*-.5:0:0,"1g-1n":I.3O.P.Q.14?t?0:.5*i:0}))}}),$.1b(5V.2V,{1z:J(i){I.Q=$.1b({2f:"N-1M"},1J[1]||{}),I.3O=i,I.2A(),q.1k&&9>q.1k&&$(16).1O("1Y",$.Y(J(){I.12&&I.12.2I(":1P")&&I.1x()},I)),I.6i()},2A:J(){U(I.12=$("<13>").R(I.Q.2f).X(I.32=$("<13>").R(I.Q.2f+"-32")),1G.24&&I.12.R(I.Q.2f+"-7J-1R-1Q"),I.7K=I.12.2w("6j"),$(2c.4t).3Q(I.12),q.1k&&7>q.1k){I.12.15({1s:"6g"});K i=I.12[0].41;i.47("1p","((!!16.2a ? 2a(16).48() : 0) + \'1e\')"),i.47("1n","((!!16.2a ? 2a(16).5l() : 0) + \'1e\')")}I.12.1f(),I.12.1O("2g",$.Y(J(){K i=I.3O.P;U(i){K t=i.Q;U(t.1M&&!t.1M.2q)T}I.3O.1f()},I)),I.12.1O("23:5h",J(i){i.2W()})},49:J(i){I.12[0].2f=I.7K+" "+I.Q.2f+"-"+i},ae:J(i){I.Q=i,I.6i()},6i:J(){I.1x()},1i:J(i){I.1x(),I.12.1L(1,0);K t=V.19&&V.19[V.1c-1];T I.4a(1,t?t.P.Q.1v.16.1i:0,i),I},1f:J(i){K t=V.19&&V.19[V.1c-1];T I.12.1L(1,0).4A(t?t.P.Q.1v.16.1f||0:0,"7L",i),I},4a:J(i,t,e){I.12.3P(t||0,i,"7L",e)},6k:J(){K i={};T $.1h(["L","M"],J(t,e){K s=e.54(0,1).7z()+e.54(1),n=2c.40;i[e]=(q.1k?1a.1x(n["4z"+s],n["6l"+s]):q.3Z?2c.4t["6l"+s]:n["6l"+s])||0}),i},1x:J(){K i;q.4s&&q.3Z&&7M.18>q.3Z&&(i=I.6k(),I.12.15(1e(i))),q.1k&&9>q.1k&&I.12.15(1e({M:$(16).M(),L:$(16).L()})),1G.24&&!i&&I.12.15(1e({M:I.6k().M}))}}),$.1b(5W.2V,{1z:J(){I.2t={},I.5m=0},1S:J(i,t,e){U("46"==$.11(i)&&I.2m(i),"J"==$.11(i)){1Z(e=t,t=i;I.2t["7N"+I.5m];)I.5m++;i="7N"+I.5m}I.2t[i]=16.4b($.Y(J(){t&&t(),I.2t[i]=1A,43 I.2t[i]},I),e)},1I:J(i){T I.2t[i]},2m:J(i){i||($.1h(I.2t,$.Y(J(i,t){16.4B(t),I.2t[i]=1A,43 I.2t[i]},I)),I.2t={}),I.2t[i]&&(16.4B(I.2t[i]),I.2t[i]=1A,43 I.2t[i])}}),$.1b(5X.2V,{1z:J(){I.6m={}},1S:J(i,t){I.6m[i]=t},1I:J(i){T I.6m[i]||!1}});K D={44:"23",1z:J(){I.3w=[],I.3w.6n=$({}),I.3w.7O=$({}),I.2E=2j 5X,I.3x=2j 5W,I.2A(),I.3v(),I.49(I.44)},2A:J(){U(I.1M=2j 5V(I),$(2c.4t).3Q(I.12=$("<13>").R("N-16").X(I.3e=$("<13>").R("N-3e").1f().X(I.2n=$("<13>").R("N-2n").X(I.3n=$("<13>").R("N-2n-3n"))).X(I.14=$("<13>").R("N-14")))),I.1K=2j 3W(I),q.1k&&7>q.1k){K i=I.12[0].41;i.1s="6g",i.47("1p","((!!16.2a ? 2a(16).48() : 0) + \'1e\')"),i.47("1n","((!!16.2a ? 2a(16).5l() : 0) + \'1e\')")}U(q.1k){9>q.1k&&I.12.R("N-af");1Z(K t=6;9>=t;t++)t>q.1k&&I.12.R("N-ag"+t)}1G.1R&&I.12.R("N-1R-1Q"),1G.24&&I.12.R("N-7J-1R-1Q"),I.12.1j("6j-7P",I.12[0].2f),F.1z(I.12),V.1z(I.12),E.1z(),I.12.1f()},49:J(i,t){t=t||{},i&&(t.3N=i),I.1M.49(i);K e=I.12.1j("6j-7P");T I.12[0].2f=e+" N-16-"+i,I},6o:J(i){j.3J[i]&&(I.44=i)},3v:J(){$(2c.40).3f(".23[4C]","2g",J(i,t){U(!G.3y){i.3d(),i.2W();K t=i.ah;V.3z({x:i.4c,y:i.4d}),G.1i(t)}}),$(2c.40).1O("2g",J(i){V.3z({x:i.4c,y:i.4d})}),I.12.3f(".N-W-26, .N-1T-26","2g",$.Y(J(i){i.3d()},I)),$(2c.40).3f(".N-1M, .N-W, .N-1l, .N-3e","2g",$.Y(J(i){K t=D.P;U(!$(i.3c).3R(".N-1F")[0]){U(t){K e=t.Q;U(e.1M&&!e.1M.2q)T}i.2W(),i.3d(),D.1f()}},I)),I.12.1O("23:5h",J(i){i.2W()})},2p:J(i,t){K e=$.1b({},1J[2]||{});I.4e(),I.2h=!0;K s=2>i.1t;U($.1h(i,J(i,t){T t.Q.1o?2v 0:(s=!0,!1)}),s&&$.1h(i,J(i,t){t.Q.1o=!1,t.Q.14=!1}),2>i.1t){K n=i[0].Q.3Y;n&&"2q"!=n&&(i[0].Q.3Y="2q")}I.4f=i,F.2p(i),V.2p(i),E.1Q={5b:!0},t&&I.38(t,$.Y(J(){I.2h&&(I.2h=!1,e.42&&e.42())},I))},7Q:J(){U(!I.2E.1I("4D")){K i=$("5n, 6p, ai"),t=[];i.1h(J(i,e){K s;$(e).2I("6p, 5n")&&(s=$(e).2B(\'6q[aj="7R"]\')[0])&&s.7S&&"7T"==s.7S.60()||$(e).2I("[7R=\'7T\']")||t.2s({12:e,3g:$(e).15("3g")})}),$.1h(t,J(i,t){$(t.12).15({3g:"ak"})}),I.2E.1S("4D",t)}},7U:J(){K i=I.2E.1I("4D");i&&i.1t>0&&$.1h(i,J(i,t){$(t.12).15({3g:t.3g})}),I.2E.1S("4D",1A)},al:J(){K i=I.2E.1I("4D");i&&$.1h(i,$.Y(J(i,t){K e;(e=$(t.12).3R(".am-1r")[0])&&e==I.1r[0]&&$(t.12).15({3g:t.3g})},I))},1i:J(){K i=J(){};T J(t){K e=V.19&&V.19[V.1c-1],s=I.3w.6n,n=e&&e.P.Q.1v.16.1f||0;U(I.2E.1I("1P"))T"J"==$.11(t)&&t(),2v 0;I.2E.1S("1P",!0),s.3A([]),I.7Q(),e&&"J"==$.11(e.P.Q.7V)&&e.P.Q.7V.2b(j);K o=2;s.3A($.Y(J(i){e.P.Q.1M&&I.1M.1i($.Y(J(){1>--o&&i()},I)),I.3x.1S("1i-16",$.Y(J(){I.7W(J(){1>--o&&i()})},I),n>1?1a.1V(.5*n,50):1)},I)),i(),s.3A($.Y(J(i){E.4E(),i()},I)),s.3A($.Y(J(i){F.7X(),i()},I)),"J"==$.11(t)&&s.3A($.Y(J(i){t(),i()}),I)}}(),7W:J(i){1G.24&&(I.6r={1p:I.12.15("1p")},D.12.15({1p:$(16).48()})),V.1Y(),I.12.1i(),I.3e.1L(!0);K t=V.19&&V.19[V.1c-1];T I.4a(1,t.P.Q.1v.16.1i,$.Y(J(){i&&i()},I)),I},1f:J(){K i=V.19&&V.19[V.1c-1],t=I.3w.6n;t.3A([]),I.6s(),I.1K.1L(1A,!0);K e=1;t.3A($.Y(J(t){K s=i.P.Q.1v.16.1f||0;I.3e.1L(!0,!0).4A(s,"6t",$.Y(J(){I.12.1f(),V.7Y(),1>--e&&(I.6u(),t())},I)),i.P.Q.1M&&(e++,I.3x.1S("1f-1M",$.Y(J(){I.1M.1f($.Y(J(){1>--e&&(I.6u(),t())},I))},I),s>1?1a.1V(.5*s,an):1))},I))},6u:J(){I.2E.1S("1P",!1),I.7U(),E.4g(),F.6v();K i=V.19&&V.19[V.1c-1];i&&"J"==$.11(i.P.Q.7Z)&&i.P.Q.7Z.2b(j),I.3x.2m(),I.4e()},4e:J(){K i=$.1b({6w:!1,5o:!1},1J[0]||{});"J"==$.11(i.5o)&&i.5o.2b(j),I.6s(),I.3x.2m(),I.1s=-1,I.4f=1A,F.2m(),1G.24&&I.6r&&I.12.15(I.6r),I.2h=!1,D.2E.1S("4F",!1),I.4F&&($(I.4F).1L().25(),I.4F=1A),I.6x&&($(I.6x).1L().25(),I.6x=1A),"J"==$.11(i.6w)&&i.6w.2b(j)},4a:J(i,t,e){I.3e.1L(!0,!0).3P(t||0,i||1,"6y",e)},6s:J(){I.3w.7O.3A([]),I.3e.1L(!0)},38:J(i,t){i&&I.1s!=i&&(I.3x.2m("4F"),I.1c,I.1s=i,I.P=I.4f[i-1],I.49(I.P.Q&&I.P.Q.3N,I.P.Q),V.38(i,t))}};"5p"==$.11(q.3p)&&3>q.3p&&$.1h(D,J(i,t){"J"==$.11(t)&&(D[i]=J(){T I})});K E={1Q:!1,4G:{1n:37,2x:39,5b:27},4E:J(){I.6z()},4g:J(){I.1Q=!1},1z:J(){I.6z(),$(2c).ao($.Y(I.80,I)).ap($.Y(I.81,I)),E.4g()},6z:J(){K i=V.19&&V.19[V.1c-1];I.1Q=i&&i.P.Q.5a},80:J(i){U(I.1Q&&D.12.2I(":1P")){K t=I.6A(i.4G);U(t&&(!t||!I.1Q||I.1Q[t]))2D(i.2W(),i.3d(),t){1D"1n":V.1H();2Z;1D"2x":V.1C()}}},81:J(i){U(I.1Q&&D.4f){K t=I.6A(i.4G);U(t&&(!t||!I.1Q||I.1Q[t]))2D(t){1D"5b":D.1f()}}},6A:J(i){1Z(K t 4o I.4G)U(I.4G[t]==i)T t;T 1A}},V={1z:J(i){i&&(I.12=i,I.1c=-1,I.3h=[],I.2J=0,I.2K=[],I.82=[],I.3w=[],I.3w.28=$({}),I.2n=I.12.2B(".N-2n:3S"),I.3n=I.12.2B(".N-2n-3n:3S"),I.83=I.12.2B(".N-83:3S"),I.6B(5M()),I.5q(),I.3v())},6B:J(){K i={4p:"4Z",4Z:"4p"};T J(t){I.2n.R("N-2n-"+t).2L("N-2n-"+i[t])}}(),3v:J(){$(16).1O("1Y",$.Y(J(){D.2E.1I("1P")&&I.1Y()},I)),$(16).1O("aq",$.Y(J(){I.6B(5M()),D.2E.1I("1P")&&I.1Y()},I)),I.2n.3f(".N-1d","2g",$.Y(J(i){i.3d(),I.3z({x:i.4c,y:i.4d});K t=$(i.3c).3R(".N-1d").1j("1d");I[t]()},I))},2p:J(i){I.19&&($.1h(I.19,J(i,t){t.25()}),I.19=1A,I.ar=!1,I.2K=[],I.82=[]),I.2J=0,I.3n.84("41"),I.19=[];K t=!1;$.1h(i,$.Y(J(i,e){I.19.2s(2j 5Y(e,i+1)),!t&&e.1m&&(t=!0)},I)),I.as=!t,I.5q()},85:J(i){q.1k&&9>q.1k?(I.3z({x:i.4c,y:i.4d}),I.1s()):I.5r=4b($.Y(J(){I.3z({x:i.4c,y:i.4d}),I.1s()},I),30)},86:J(){I.5r&&(4B(I.5r),I.5r=1A)},87:J(){1G.24||I.4H||I.12.1O("6C",I.4H=$.Y(I.85,I))},88:J(){!1G.24&&I.4H&&(I.12.at("6C",I.4H),I.4H=1A,I.86())},38:J(i,t){I.89(),I.1c=i;K e=I.19[i-1];e.P.Q.W;K s=1;I.3n.X(e.1l),I.2n.2B(".N-1l").2L("N-1l-3T"),e.1l.R("N-1l-3T"),F.38(i),e.2p($.Y(J(){!e||e&&!e.P||I.1i(i,J(){e&&e.P&&(t&&t(),"J"==$.11(e.P.Q.8a)&&1>--s&&e.P.Q.8a.2b(j,i))})},I)),I.8b()},8b:J(){U(I.19&&I.19.1t>1){K i=I.4I(),t=i.1H,e=i.1C,s={1H:t!=I.1c&&I.19[t-1],1C:e!=I.1c&&I.19[e-1]};1==I.1c&&(s.1H=1A),I.1c==I.19.1t&&(s.1C=1A),$.1h(s,$.Y(J(i,t){K e=t&&t.P;e&&"1q"==e.11&&e.Q.3K&&B.3K(e.1u,{6e:!0})},I))}},4I:J(){U(!I.19)T{};K i=I.1c,t=I.19.1t,e=1>=i?t:i-1,s=i>=t?1:i+1;T{1H:e,1C:s}},8c:J(){K i=V.19&&V.19[V.1c-1];T i&&i.P.Q.2R&&I.19&&I.19.1t>1||1!=I.1c},1H:J(i){K t=I.8c();(i||t)&&D.38(I.4I().1H)},8d:J(){K i=V.19&&V.19[V.1c-1];T i&&i.P.Q.2R&&I.19&&I.19.1t>1||I.19&&I.19.1t>1&&1!=I.4I().1C},1C:J(i){K t=I.8d();(i||t)&&D.38(I.4I().1C)},8e:J(i){I.8f(i)||I.3h.2s(i)},8g:J(i){I.3h=$.8h(I.3h,J(t){T t!=i})},8f:J(i){T $.8i(i,I.3h)>-1},3z:J(i){i.y-=$(16).48(),i.x-=$(16).5l(),F.1P()&&"2y"==F.1w.34&&(i.x-=F.1w.14.L);K t={y:1a.1V(1a.1x(i.y/I.1E.M,0),1),x:1a.1V(1a.1x(i.x/I.1E.L,0),1)},e=20,s={x:"L",y:"M"},n={};$.1h("x y".3H(" "),$.Y(J(i,o){n[o]=1a.1V(1a.1x(e/I.1E[s[o]],0),1),t[o]*=1+2*n[o],t[o]-=n[o],t[o]=1a.1V(1a.1x(t[o],0),1)},I)),I.8j(t)},8j:J(i){I.6D=i},1s:J(){1>I.2K.1t||$.1h(I.2K,J(i,t){t.1s()})},1Y:J(){q.1k&&7>q.1k||F.1Y(),I.5q(),I.2n.15(1e(I.1E)),$.1h(I.19,J(i,t){t.1Y()}),1G.24&&(I.2n.15({L:"78%"}),D.1M.1x(),4b(J(){D.12.15({1p:$(16).48()})},0))},5q:J(){K i=A.3a(),t=I.19&&I.19[0].P.Q.W;U(F.1P()){F.35();K e="21"==F.1w.34,s=e?"M":"L",n=F.1w.14[s],o={1n:e?0:n};i[s]-=n,I.2n.15(1e(o))}2r I.2n.84("41");K a=$.1b({},i);2D(I.2J=0,t){1D"1W":$.1h(I.19,$.Y(J(i,t){D.12.1i();K e=!1;t.4J(J(){e=t.2q.2I(":1P")}),4h=t.2q,I.19.1t>1&&(t.6E&&(4h=4h.1X(t.6E)),t.4i&&(4h=4h.1X(t.4i)));K s=0;t.4J(J(){$.1h(4h,J(i,t){s=1a.1x(s,$(t).au(!0))})}),I.2J=1a.1x(I.2J,s)||0},I)),a.L-=2*(I.2J||0)}I.1E=i,I.2z=a,I.av=1p},aw:J(){T{1H:I.1c-1>0,1C:I.1c+1<=I.19.1t}},1i:J(i,t){K e=[];$.1h(I.19,J(t,s){s.1c!=i&&e.2s(s)});K s=e.1t+1,n=I.19[I.1c-1];F[n.P.Q.14?"1i":"1f"](),I.1Y();K o=n.P.Q.1v.1r.58;$.1h(e,$.Y(J(e,n){n.1f($.Y(J(){o?t&&1>=s--&&t():2>=s--&&I.19[i-1].1i(t)},I))},I)),o&&I.19[i-1].1i(J(){t&&1>=s--&&t()})},7Y:J(){$.1h(I.3h,$.Y(J(i,t){K e=I.19[t-1];e.5s(),e.1f()},I)),F.1f(),I.3z({x:0,y:0})},ax:J(i){$.1h(I.19,$.Y(J(t,e){e.1s!=i&&e.1f()},I))},8k:J(i){I.8l(i)||(I.2K.2s(I.19[i-1]),1==I.2K.1t&&I.87())},ay:J(){I.2K=[]},6F:J(i){I.2K=$.8h(I.2K,J(t){T t.1c!=i}),1>I.2K.1t&&I.88()},8l:J(i){K t=!1;T $.1h(I.2K,J(e,s){T s.1c==i?(t=!0,!1):2v 0}),t},2G:J(){K i=I.1E;T D.az&&(i.L-=aA),i},89:J(){$.1h(I.19,$.Y(J(i,t){t.6G()},I))}};$.1b(5Y.2V,{1z:J(i,t){I.P=i,I.1c=t,I.1E={},I.2A()},25:J(){I.5t(),I.4K&&(V.6F(I.1c),I.4K=!1),I.5s(),I.4e(),I.1l.25(),I.1l=1A,I.W&&(I.W.25(),I.W=1A),I.P=1A,I.1E={},I.6G()},2A:J(){K i=I.P.Q.W,t=D.4f.1t;V.3n.X(I.1l=$("<13>").R("N-1l").X(I.1T=$("<13>").R("N-1T").R("N-1T-2M-W-"+i).R("N-1T-2M-11-"+I.P.11))),I.1T.X(I.4j=$("<13>").R("N-1T-26").X(I.6H=$("<13>").R("N-1T-3i").X(I.5u=$("<13>").R("N-1T-8m-3s").X(I.3j=$("<13>").R("N-1T-1y"))))),"1q"==I.P.11&&"1R"!=i&&(I.3k=$("<13>").R("N-6I-1q")),I.1l.1i();K e=I.P.Q.3Y;U("1q"==I.P.11&&("1C"==e&&(I.P.Q.2R||!I.P.Q.2R&&I.1c!=D.4f.1t)||"2q"==e)&&I.1l.R("N-1l-2N-"+e.60()),"1W"==i?I.1l.3Q(I.W=$("<13>").R("N-W N-W-1W")):I.1l.X(I.W=$("<13>").R("N-W N-W-2O")),I.4j.1O("2g",$.Y(J(i){i.3c==I.4j[0]&&I.P.Q.1M&&I.P.Q.1M.2q&&D.1f()},I)),"1W"==I.P.Q.W?I.W.X(I.29=$("<13>").R("N-W-1y-1W")):(I.W.X(I.6J=$("<13>").R("N-W-26").X(I.5v=$("<13>").R("N-W-3i").X(I.6K=$("<13>").R("N-W-8m-3s").X(I.8n=$("<13>").R("N-W-aB").X(I.29=$("<13>").R("N-W-1y")))))),I.3k&&I.29.X(I.3k.5w())),t>1&&(I.29.X(I.4L=$("<13>").R("N-1d N-1d-1C").X(I.4i=$("<13>").R("N-1d-2o").X($("<13>").R("N-1d-2o-33"))).1j("1d","1C")),I.1c!=t||I.P.Q.2R||(I.4L.R("N-1d-4M"),I.4i.R("N-1d-2o-4M")),I.29.X(I.4N=$("<13>").R("N-1d N-1d-1H").X(I.5x=$("<13>").R("N-1d-2o").X($("<13>").R("N-1d-2o-33"))).1j("1d","1H")),1!=I.1c||I.P.Q.2R||(I.4N.R("N-1d-4M"),I.5x.R("N-1d-2o-4M"))),I.3k&&"2O"==I.P.Q.W&&I.29.2B(".N-1d").3Q(I.3k.5w()),I.1l.R("N-2P-1m"),(I.P.1m||"2O"==I.P.Q.W&&!I.P.1m)&&I["2O"==I.P.Q.W?"29":"1l"].X(I.1F=$("<13>").R("N-1F N-1F-"+I.P.Q.W).X(I.aC=$("<13>").R("N-1F-32")).X(I.6L=$("<13>").R("N-1F-3i"))),I.P.1m&&(I.1l.2L("N-2P-1m").R("N-2M-1m"),I.6L.X(I.1m=$("<13>").R("N-1m").6M(I.P.1m))),t>1&&I.P.Q.1s){K s=I.1c+" / "+t;I.1l.R("N-2M-1s");K i=I.P.Q.W;I["2O"==i?"6L":"29"]["2O"==i?"3Q":"X"](I.6E=$("<13>").R("N-1s").X($("<13>").R("N-1s-32")).X($("<6N>").R("N-1s-aD").6M(s)))}I.29.X(I.2q=$("<13>").R("N-2q").1O("2g",J(){D.1f()}).X($("<6N>").R("N-2q-32")).X($("<6N>").R("N-2q-33"))),"1q"==I.P.11&&"2q"==I.P.Q.3Y&&I["1W"==I.P.Q.W?"3j":"5v"].1O("2g",J(i){$(i.3c).3R(".N-1F")[0]||(i.2W(),i.3d(),D.1f())}),I.1l.1f()},6O:J(i){U(!I.P.1m)T 0;"1W"==I.P.Q.W&&(i=1a.1V(i,V.2z.L));K t,e=I.1F.15("L");T I.1F.15({L:i+"1e"}),t=65(I.1F.15("M")),I.1F.15({L:e}),t},4J:J(i,t){K e=[],s=D.12.1X(D.3e).1X(I.1l).1X(I.W);t&&(s=s.1X(t)),$.1h(s,J(i,t){e.2s({1P:$(t).2I(":1P"),12:$(t).1i()})}),i(),$.1h(e,J(i,t){t.1P||t.12.1f()})},3U:J(){I.35();K i=I.1E.1x,t=I.P.Q.W,e=I.6P,s=I.8o,n=I.5y,o=3q.3r(i,{2e:e,W:t,3s:n}),a=$.1b({},o);U(n&&(a=3q.3r(a,{2G:o,W:t}),o.L+=2*n,o.M+=2*n),s.21||s.2y){K r=$.1b({},V.2z);n&&(r.L-=2*n,r.M-=2*n),r={L:1a.1x(r.L-2*s.21,0),M:1a.1x(r.M-2*s.2y,0)},a=3q.3r(a,{2e:e,2G:r,W:t})}K h={1m:!0},d=!1;U("1W"==t){K s={M:o.M-a.M,L:o.L-a.L},l=$.1b({},a);I.1m&&I.1l.4O("N-2P-1m");K u;U(I.1m){u=I.1m,I.1F.2L("N-2P-1m");K p=I.1l.4O("N-2P-1m");I.1l.2L("N-2P-1m");K c=I.1l.4O("N-2M-1m");I.1l.R("N-2M-1m")}D.12.15({3g:"1P"}),I.4J($.Y(J(){1Z(K i=0,o=2;o>i;){h.M=I.6O(a.L);K r=.5*(V.2z.M-2*n-(s.2y?2*s.2y:0)-a.M);h.M>r&&(a=3q.3r(a,{2G:$.1b({},{L:a.L,M:1a.1x(a.M-h.M,0)}),2e:e,W:t})),i++}h.M=I.6O(a.L);K d=A.3a();(5z>=d.M&&5A>=d.L||5z>=d.L&&5A>=d.M||h.M>=.5*a.M||h.M>=.6*a.L)&&(h.1m=!1,h.M=0,a=l)},I),u),D.12.15({3g:"1P"}),p&&I.1l.R("N-2P-1m"),c&&I.1l.R("N-2M-1m");K m={M:o.M-a.M,L:o.L-a.L};o.M+=s.M-m.M,o.L+=s.L-m.L,a.M!=l.M&&(d=!0)}2r h.M=0;K f={L:a.L+2*n,M:a.M+2*n};h.M&&(o.M+=h.M),"2O"==t&&(h.M=0);K v={26:{17:o},3i:{17:f},1y:{17:a,2G:f,1g:{1p:.5*(o.M-f.M)-.5*h.M,1n:.5*(o.L-f.L)}},1r:{17:a},1F:h};"1W"==t&&(v.1F.1p=v.1y.1g.1p,h.L=1a.1V(a.L,V.2z.L));K r=$.1b({},V.2z);T"1W"==t&&(v.1T={17:{L:V.2z.L},1s:{1n:.5*(V.1E.L-V.2z.L)}}),v.W={26:{17:{L:1a.1V(o.L,r.L),M:1a.1V(o.M,r.M)}},3i:{17:f},1y:{17:{L:1a.1V(v.1y.17.L,r.L-2*n),M:1a.1V(v.1y.17.M,r.M-2*n)},1g:{1p:v.1y.1g.1p+n,1n:v.1y.1g.1n+n}}},v},35:J(){K i=$.1b({},I.1E.1x),t=3B(I.5u.15("3s-1p-L"));I.5y=t,t&&(i.L-=2*t,i.M-=2*t);K e=I.P.Q.2e;"aE"==e?e=i.L>i.M?"M":i.M>i.L?"L":"2k":e||(e="2k"),I.6P=e;K s={2k:"2S",L:"y",M:"x",2S:"2k"},n=I.P.Q.7h[s[I.6P]];I.8o=n},6Q:J(){I.4P&&(4B(I.4P),I.4P=1A)},6G:J(){I.4P&&I.2h&&!I.3C&&(I.6Q(),I.2h=!1)},2p:J(i,t){T I.3C||I.2h?(I.3C&&I.5B(i),2v 0):(t||B.1B.1I(I.P.1u)||B.3t.7F(I.P.1u)||D.1K.7I(),I.2h=!0,I.4P=4b($.Y(J(){2D(I.6Q(),I.P.11){1D"1q":K e=I.P.Q.W;B.1I(I.P.1u,{2Y:"1R"!=e},$.Y(J(s,n){U(I.P){I.1E.8p=s,I.1E.1x=s,I.3C=!0,I.2h=!1,I.35();K o=I.3U();I.1E.26=o.26.17,I.1E.1r=o.1r.17,I.1r=$("<5k>").2w({2Q:I.P.1u}).R("N-1r N-1r-1q"),I.3j.X(I.1r),"1R"==e&&I.1r.1O("8q",J(i){i.2W()});K a;I.3j.X(a=$("<13>").R("N-1r-1q-1M")),I.3k&&a.X(I.3k.5w());K r;U("1W"==I.P.Q.W&&((r=I.P.Q.3Y)&&"1C"==r||"1H-1C"==r)){K h=I.P.Q.2R;(I.1c!=V.19.1t||h)&&I.3j.X($("<13>").R("N-2N-1d N-2N-1C").1j("1d","1C")),"1H-1C"!=r||1==I.1c&&!h||I.3j.X($("<13>").R("N-2N-1d N-2N-1H").1j("1d","1H")),I.3k&&I.3j.2B(".N-2N-1d").1h($.Y(J(i,t){K e=$(t).1j("1d");$(t).3Q(I.3k.5w().1j("1d",e))},I)),I.1l.3f(".N-2N-1d","2g",J(i){K t=$(i.3c).3R(".N-2N-1d").1j("1d");V[t]()}),I.1l.3f(".N-2N-1d","8r",$.Y(J(i){K t=$(i.3c).3R(".N-2N-1d").1j("1d"),e=t&&I["2l"+t+"5C"];e&&I["2l"+t+"5C"].R("N-1d-2o-3T")},I)).3f(".N-2N-1d","8s",$.Y(J(i){K t=$(i.3c).1j("1d"),e=t&&I["2l"+t+"5C"];e&&I["2l"+t+"5C"].2L("N-1d-2o-3T")},I))}I.1l.2B(".N-6I-1q").1h($.Y(J(i,t){K e=$("<5k>").R("N-6I-1q").2w({2Q:I.P.1u}).15({aF:0}),s=$(t).1j("1d");U(q.1k&&9>q.1k){K o=3B(D.12.15("z-6R"))||0;e.15({"z-6R":o}),$(t).aG().15({"z-6R":o}),/^(x|2S)$/.53(I.P.Q.3b||"")&&e.1f()}n.2Y&&!1G.24&&e.1X(I.1r).1O("8q",$.Y(J(i){U("1R"==I.P.Q.W)T i.2W(),2v 0;K t=i.4u,e=t.aH||{};U(n.2Y&&e.8t){K s=t.4c||0,o=t.4d||0,a=I.1r.4z();s=1a.2X(s-a.1n),o=1a.2X(o-a.1p),1>n.4v&&(s*=n.4v,o*=n.4v),e.8t(n.2Y,s,o)}2r e.8u?e.8u(I.1r[0]):i.2W()},I)),s&&e.1j("1d",s),$(t).aI(e)},I)),I.5B(i,t)}},I));2Z;1D"22":K s={L:I.P.Q.L,M:I.P.Q.M};I.P.Q.22&&I.P.Q.22.7i&&(I.P.3D.aJ=s.L>7l?"7j":"aK"),I.6S(s,i);2Z;1D"1N":K s={L:I.P.Q.L,M:I.P.Q.M};B.1I(I.P.1u,$.Y(J(t){U(I.P){K e=s.L,n=s.M,o=t.L,a=t.M,r=!1;(r=e&&!n||n&&!e)||e&&n?(r&&(e&&!n?s.M=e*a/o:s.L=n*o/a),s=3q.3r(t,{2G:s})):s=t,I.6S(s,i)}},I))}},I),10),2v 0)},6S:J(i,t){I.1E.8p=i,I.1E.1x=i,I.3C=!0,I.2h=!1,I.35();K e=I.3U();I.1E.26=e.26.17,I.1E.1r=e.1r.17,I.3j.X(I.1r=$("<13>").R("N-1r N-1r-"+I.P.11)),"1R"!=I.P.Q.W||"22"!=I.P.11&&"1N"!=I.P.11||(I.1Y(),("22"==I.P.11&&16.aL||"1N"==I.P.11&&1G.6b)&&I.1i()),I.5B(t)},5B:J(i){K t=I.P.Q.W;I.1Y(),"2O"==t&&I.6K.1O("8r",$.Y(I.4Q,I)).1O("8s",$.Y(I.5D,I)),I.W&&(1G.24?I.1T.1O("2g",$.Y(J(){I.29.2I(":1P")||I.4Q(),I.4R()},I)):I.W.3f(".N-W-3i","6C",$.Y(J(){I.29.2I(":1P")||I.4Q(),I.4R()},I)));K e;V.19&&(e=V.19[V.1c-1])&&(e.P.1u==I.P.1u||"1R"==e.P.Q.W)&&D.1K.1L(),i&&i()},1Y:J(){U(I.1r){K i=I.3U(),t=I.P.Q.W;I.1E.26=i.26.17,I.1E.1r=i.1r.17,I.4j.15(1e(i.26.17)),"2O"==t&&I.6J.15(1e(i.W.26.17)),I.3j.1X(I.5u).15(1e(i.1y.17));K e=0;2D("1W"==I.P.Q.W&&i.1F.1m&&(e=i.1F.M),I.5u.15({"5E-4S":e+"1e"}),I.6H.15(1e({L:i.3i.17.L,M:i.3i.17.M+e})),i.26.17.L>("1W"==I.P.Q.W?i.1T.17.L:A.3a().L)?I.1T.R("N-8v-8w"):I.1T.2L("N-8v-8w"),t){1D"1W":I.1m&&I.1F.15(1e({L:i.1F.L}));2Z;1D"2O":I.29.1X(I.6K).1X(I.8n).15(1e(i.W.1y.17)),I.5v.15(1e(i.W.3i.17));K s=0;U(I.1m){K n=I.1l.4O("N-2P-1m"),o=I.1l.4O("N-2M-1m");I.1l.2L("N-2P-1m"),I.1l.R("N-2M-1m");K s=0;I.4J($.Y(J(){s=I.1F.aM()},I),I.29.1X(I.1m));K a=A.3a();(s>=.45*i.1y.17.M||5z>=a.M&&5A>=a.L||5z>=a.L&&5A>=a.M)&&(i.1F.1m=!1),n&&I.1l.R("N-2P-1m"),o||I.1l.2L("N-2M-1m")}}U(I.1m){K r=i.1F.1m;I.1m[r?"1i":"1f"](),I.1l[(r?"25":"1X")+"5F"]("N-2P-1m"),I.1l[(r?"1X":"25")+"5F"]("N-2M-1m")}I.6H.1X(I.5v).15(1e(i.1y.1g));K h=V.2z,d=I.1E.26;U(I.5G={y:d.M-h.M,x:d.L-h.L},I.4K="2k"!=I.P.Q.3b&&(I.5G.x>0||I.5G.y>0),V[(I.4K?"1S":"25")+"aN"](I.1c),q.1k&&8>q.1k&&"1q"==I.P.11&&I.1r.15(1e(i.1y.17)),/^(1N|22)$/.53(I.P.11)){K l=i.1y.17;I.6T?I.6T.aO(l.L,l.M):I.3E&&I.3E.2w(l)}}I.1s()},1s:J(){U(I.1r){K i=V.6D,t=V.2z,e=I.1E.26,s={1p:0,1n:0},n=I.5G;s.1p=n.y>0?0-i.y*n.y:.5*t.M-.5*e.M,s.1n=n.x>0?0-i.x*n.x:.5*t.L-.5*e.L,1G.24&&(n.y>0&&(s.1p=0),n.x>0&&(s.1n=0),I.4j.15({1s:"aP"})),I.aQ=s,I.4j.15({1p:s.1p+"1e",1n:s.1n+"1e"});K o=$.1b({},s);0>o.1p&&(o.1p=0),0>o.1n&&(o.1n=0);K a=I.P.Q.W;2D(a){1D"1W":K r=I.3U();U(I.1T.15(1e(r.1T.17)).15(1e(r.1T.1s)),I.P.1m){K h=s.1p+r.1y.1g.1p+r.1y.17.M+I.5y;h>V.2z.M-r.1F.M&&(h=V.2z.M-r.1F.M);K d=V.2J+s.1n+r.1y.1g.1n+I.5y;V.2J>d&&(d=V.2J),d+r.1F.L>V.2J+r.1T.17.L&&(d=V.2J),I.1F.15({1p:h+"1e",1n:d+"1e"})}2Z;1D"2O":I.6J.15({1n:o.1n+"1e",1p:o.1p+"1e"})}}},aR:J(i){I.17=i},8x:J(){K i=(q.1k&&8>q.1k,I.3U()),t=i.1y.17,e=$.1b({},I.P.Q.22||{}),s="4w"+(16.2H&&"4x:"==16.2H.4y?"s":"")+":",n=$.6q(e);I.1r.X(I.3E=$("<8y 8z 8A 8B>").2w({2Q:s+"//aS.22.31/5n/"+I.P.3D.3u+"?"+n,M:t.M,L:t.L,8C:0}))},8D:J(){K i=I.3U(),t=i.1y.17,e=$.1b({},I.P.Q.1N||{});"1R"==I.P.Q.W&&(e.64=0);K s="4w"+(16.2H&&"4x:"==16.2H.4y?"s":"")+":",n=z()+"1N";e.aT=n,e.5c=1;K o=$.6q(e);I.1r.X(I.3E=$("<8y 8z 8A 8B>").2w({2Q:s+"//6T.1N.31/aU/"+I.P.3D.3u+"?"+o,3u:n,M:t.M,L:t.L,8C:0}))},8E:J(){2D(I.P.11){1D"22":I.8x();2Z;1D"1N":I.8D()}},1i:J(i){U("1R"==I.P.Q.W){U(I.8F)T i&&i(),2v 0;I.8F=!0}I.8E(),V.8e(I.1c),I.1l.1L(1,0),I.W&&(I.W.1L(1,0),I.4Q(1A,!0)),I.4K&&V.8k(I.1c),I.4a(1,1a.1x(I.P.Q.1v.1r.1i,q.1k&&9>q.1k?0:10),$.Y(J(){i&&i()},I))},8G:J(){I.P&&I.1r&&"1R"!=I.P.Q.W&&I.5s()},5s:J(){I.aV=!1,I.3E&&(I.3E[0].2Q="//aW:aX",I.3E.25(),I.3E=1A),("22"==I.P.11||"1N"==I.P.11)&&I.1r&&I.1r.6M("")},4e:J(i){V.6F(I.1c),V.8g(I.1c),I.8G(i)},1f:J(i){U("1R"==I.P.Q.W)T i&&i(),2v 0;K t=1a.1x(I.P.Q.1v.1r.1f||0,q.1k&&9>q.1k?0:10),e=I.P.Q.1v.1r.58?"aY":"6y";I.1l.1L(1,0).4A(t,e,$.Y(J(){I.4e(),i&&i()},I))},4a:J(i,t,e){K s=I.P.Q.1v.1r.58?"aZ":"6t";I.1l.1L(1,0).3P(t||0,i,s,e)},4Q:J(i,t){I.W&&(t?(I.29.1i(),I.4R(),"J"==$.11(i)&&i()):I.29.1L(1,0).3P(t?0:I.P.Q.1v.W.1i,1,"6t",$.Y(J(){I.4R(),"J"==$.11(i)&&i()},I)))},5D:J(i,t){I.W&&"1W"!=I.P.Q.W&&(t?(I.29.1f(),"J"==$.11(i)&&i()):I.29.1L(1,0).4A(t?0:I.P.Q.1v.W.1f,"6y",J(){"J"==$.11(i)&&i()}))},5t:J(){I.4T&&(4B(I.4T),I.4T=1A)},4R:J(){I.5t(),I.4T=4b($.Y(J(){I.5D()},I),I.P.Q.1v.W.2F)},b0:J(){I.5t(),I.4T=4b($.Y(J(){I.5D()},I),I.P.Q.1v.W.2F)}}),$.1b(3X.2V,{1z:J(a){K b=1J[1]||{},d={};U("46"==$.11(a))a={1u:a};2r U(a&&1==a.7t){K c=$(a);a={12:c[0],1u:c.2w("4C"),1m:c.1j("23-1m"),4k:c.1j("23-4k"),4U:c.1j("23-4U"),11:c.1j("23-11"),Q:c.1j("23-Q")&&6U("({"+c.1j("23-Q")+"})")||{}}}U(a&&(a.4U||(a.4U=57(a.1u)),!a.11)){K d=4r(a.1u);a.3D=d,a.11=d.11}T a.3D||(a.3D=4r(a.1u)),a.Q=a&&a.Q?$.1b(!0,$.1b({},b),$.1b({},a.Q)):$.1b({},b),a.Q=C.7H(a.Q,a.11,a.3D),$.1b(I,a),I}});K F={1z:J(i){I.12=i,I.2i=[],I.1w={34:"21",1o:{M:0,L:0},1U:{M:0,L:0},14:{M:0,L:0}},I.14=I.12.2B(".N-14:3S"),I.2A(),I.6v(),I.1f(),I.3v()},2A:J(){I.14.X(I.1y=$("<13>").R("N-14-1y").X(I.6V=$("<13>").R("N-14-b1").X(I.4N=$("<13>").R("N-14-1d N-14-1d-1H").X(I.5x=$("<13>").R("N-14-1d-2o").X($("<13>").R("N-14-1d-2o-32")).X($("<13>").R("N-14-1d-2o-33")))).X(I.6W=$("<13>").R("N-14-4V").X(I.4l=$("<13>").R("N-14-3o"))).X(I.4L=$("<13>").R("N-14-1d N-14-1d-1C").X(I.4i=$("<13>").R("N-14-1d-2o").X($("<13>").R("N-14-1d-2o-32")).X($("<13>").R("N-14-1d-2o-33")))))),I.3F=$("<13>").R("N-14 N-14-21").X($("<13>").R("N-14-1d N-14-1d-1H")).X($("<13>").R("N-1o")).X($("<13>").R("N-14-1d N-14-1d-1C"))},3v:J(){I.6V.3f(".N-1o","2g",$.Y(J(i){i.3d();K t=$(i.3c).3R(".N-1o")[0],e=t&&$(t).1j("N-1s");e&&(I.6X(e),D.38(e))},I)),I.6V.1O("2g",J(i){i.3d()}),I.4N.1O("2g",$.Y(I.8H,I)),I.4L.1O("2g",$.Y(I.8I,I))},2p:J(i){U(I.2m(),I.2i=[],!(2>i.1t)){K t=!1;U($.1h(i,$.Y(J(i,e){T"1R"==e.Q.W?(t=!0,!1):2v 0},I)),!t){K e="21";$.1h(i,$.Y(J(i,t){"2y"==t.Q.14&&(e="2y")},I)),I.1w.34=e,I.8J(e),$.1h(i,$.Y(J(i,t){I.2i.2s(2j 5Z(I.4l,t,i+1))},I)),q.1k&&7>q.1k||I.1Y()}}},2m:J(){$.1h(I.2i,J(i,t){t.25()}),I.2i=[],I.1c=-1,I.3l=-1},8J:J(i){I.14.2L("N-14-21 N-14-2y").R("N-14-"+i)},8K:J(i){$.1h(i,$.Y(J(i,t){I.8L(t)},I))},8L:J(i){K t=i["1g-1n"],e=i["1g-2x"];i["1g-1n"]=0,i["1g-2x"]=0,i["1g-1p"]=t,i["1g-4S"]=e},8M:J(i){K t=i.L;i.L=i.M,i.M=t},8N:J(i){$.1h(i,$.Y(J(i,t){I.8M(t)},I))},35:J(){K i=D.12,t=D.3e,e=I.1w,s=e.34,n=A.3a(),o=i.2I(":1P");o||i.1i();K a=t.2I(":1P");a||t.1i(),I.14.5o(I.3F);K r=I.3F.2B(".N-14-1d-1H:3S"),h=I.3F.2B(".N-14-1d-1C:3S"),d=I.3F.2B(".N-1o:3S"),l=I.3F.7x(),u=3B(I.3F.15("5E-1p"))||0;$.1b(e.14,{M:l,5E:u});K p=l-2*u,c=3B(d.15("1g-1n"));$.1b(e.1o,{M:p,L:p}),$.1b(e.1U,{L:p+2*c,M:l}),e.28={1H:{17:{L:r.69(),M:l},1g:{"1g-1p":0,"1g-4S":0,"1g-1n":3B(r.15("1g-1n"))||0,"1g-2x":3B(r.15("1g-2x"))||0}},1C:{17:{L:h.69(),M:l},1g:{"1g-1p":0,"1g-4S":0,"1g-1n":3B(h.15("1g-1n"))||0,"1g-2x":3B(h.15("1g-2x"))||0}}};K m=n["21"==s?"L":"M"],f=e.1U.L,v=I.2i.1t;e.14.L=m,e.28.1Q=v*f/m>1;K w=m,g=e.28,b=g.1H,2l=g.1C,x=b.1g["1g-1n"]+b.17.L+b.1g["1g-2x"]+2l.1g["1g-1n"]+2l.17.L+2l.1g["1g-2x"];e.28.1Q&&(w-=x),w=1a.8O(w/f)*f;K y=v*f;w>y&&(w=y);K k=w+(e.28.1Q?x:0);e.3G=w/f,I.4W="5H",1>=e.3G&&(w=m,k=m,e.28.1Q=!1,I.4W="6h"),e.6Y=1a.4X(v*f/w),e.1y={L:k+1,M:l},e.4V={L:w,M:l},e.3o={L:v*f+1,M:l},"2y"==s&&(I.8N([e.14,e.1y,e.4V,e.3o,e.1U,e.1o,e.28.1H.17,e.28.1C.17]),I.8K([e.28.1H.1g,e.28.1C.1g])),I.3F.b2(),a||t.1f(),o||i.1f()},4g:J(){I.3y=!0},4E:J(){I.3y=!1},1Q:J(){T!I.3y},1i:J(){2>I.2i.1t||(I.4E(),I.14.1i(),I.3h=!0)},1f:J(){I.4g(),I.14.1f(),I.3h=!1},1P:J(){T!!I.3h},1Y:J(){I.35();K i=I.1w,t="21"==I.1w.34,e=i.14;I.14.15({L:e.L+"1e",M:e.M+"1e","1V-M":"2k","1x-M":"2k","1V-L":"2k","1x-L":"2k",5E:0}),$.1h(I.2i,J(i,t){t.1Y()}),I.4N[i.28.1Q?"1i":"1f"]().15(1e(i.28.1H.17)).15(1e(i.28.1H.1g)),I.4L[i.28.1Q?"1i":"1f"]().15(1e(i.28.1C.17)).15(1e(i.28.1C.1g)),q.1k&&9>q.1k&&(D.3x.2m("8P-8Q-14"),D.3x.1S("8P-8Q-14",$.Y(J(){I.35(),I.6W.15(1e(i.4V)),I.4l.15(1e(i.3o))},I),b3)),I.6W.15(1e(i.4V)),I.4l.15(1e(i.3o));K s=$.1b({},1e(i.1y));s["1g-"+(t?"1n":"1p")]=1a.2X(-.5*i.1y[t?"L":"M"])+"1e",s["1g-"+(t?"1p":"1n")]=0,I.1y.15(s),I.1c&&I.5I(I.1c,!0)},6Z:J(i){U(!(1>i||i>I.1w.6Y||i==I.3l)){K t=I.1w.3G*(i-1)+1;I.5I(t)}},8H:J(){I.6Z(I.3l-1)},8I:J(){I.6Z(I.3l+1)},b4:J(){K i=A.3a();T i},38:J(i){U(!(q.1k&&7>q.1k)){K t=0>I.1c;1>i&&(i=1);K e=I.2i.1t;i>e&&(i=e),I.1c=i,I.6X(i),("5H"!=I.4W||I.3l!=1a.4X(i/I.1w.3G))&&I.5I(i,t)}},5I:J(i,t){I.35();K e,s="21"==I.1w.34,n=A.3a()[s?"L":"M"],o=.5*n,a=I.1w.1U[s?"L":"M"];U("5H"==I.4W){K r=1a.4X(i/I.1w.3G);I.3l=r,e=-1*a*(I.3l-1)*I.1w.3G;K h="N-14-1d-2o-4M";I.5x[(2>r?"1X":"25")+"5F"](h),I.4i[(r>=I.1w.6Y?"1X":"25")+"5F"](h)}2r e=o+-1*(a*(i-1)+.5*a);K d=V.19&&V.19[V.1c-1],l={},u={};l[s?"1p":"1n"]=0,u[s?"1n":"1p"]=e+"1e",I.4l.1L(1,0).15(l).b5(u,t?0:d?d.P.Q.1v.14.3o:0,$.Y(J(){I.70()},I))},6v:J(){I.71=!0},7X:J(){I.71=!1,I.2i.1t>0&&I.70()},70:J(){K i=!1;I.71&&(i=!0);K t,e;U(I.1c&&I.1w.1U.L&&!(1>I.2i.1t)){U("5H"==I.4W){U(1>I.3l)T;t=(I.3l-1)*I.1w.3G+1,e=1a.1V(t-1+I.1w.3G,I.2i.1t)}2r{K s="21"==I.1w.34,n=1a.4X(I.1w.14[s?"L":"M"]/I.1w.1U[s?"L":"M"]);t=1a.1x(1a.8O(1a.1x(I.1c-.5*n,0)),1),e=1a.4X(1a.1V(I.1c+.5*n)),e>I.2i.1t&&(e=I.2i.1t)}1Z(K o=t;e>=o;o++)I.2i[o-1][i?"2A":"2p"]()}},6X:J(i){I.4l.2B(".N-1o-3T").2L("N-1o-3T");K t=i&&I.2i[i-1];t&&t.8R()},b6:J(){I.1c&&I.38(I.1c)}};$.1b(5Z.2V,{1z:J(i,t,e){I.12=i,I.P=t,I.b7={},I.1c=e,I.8S()},8S:J(){I.1o=$("<13>").R("N-1o").1j("N-1s",I.1c)},2A:J(){U(!I.1U){K i=I.P.Q;I.12.X(I.1U=$("<13>").R("N-1o-1l").X(I.1o.X(I.5J=$("<13>").R("N-1o-1y")))),"1q"==I.P.11&&I.1o.R("N-2p-1o").1j("1o",{P:I.P,2Q:i.1o||I.P.1u});K t=i.1o&&i.1o.33;t&&I.1o.X($("<13>").R("N-1o-33 N-1o-33-"+t));K e;I.1o.X(e=$("<13>").R("N-1o-1M").X($("<13>").R("N-1o-1M-32")).X(I.1K=$("<13>").R("N-1o-1K").X($("<13>").R("N-1o-1K-32")).X($("<13>").R("N-1o-1K-33"))).X($("<13>").R("N-1o-1M-3s"))),I.1o.X($("<13>").R("N-1o-b8")),I.1Y()}},25:J(){I.1U&&(I.1U.25(),I.1U=1A,I.b9=1A),I.2h=!1,I.8T=!0},2p:J(){U(!I.3C&&!I.2h&&F.1P()&&!I.8T){I.5J||I.2A(),I.2h=!0;K i=I.P.Q.1o,t=i&&"5j"==$.11(i)?I.P.1u:i||I.P.1u;U(I.4m=t,t)U("1N"==I.P.11)U(t==i)B.3K(I.4m,{11:"1q"},$.Y(I.5K,I));2r{K e="4w"+(16.2H&&"4x:"==16.2H.4y?"s":"")+":";$.7C(e+"//1N.31/5c/7D.7E?1u="+e+"//1N.31/"+I.P.3D.3u+"&42=?",$.Y(J(i){i&&i.8U?(I.4m=i.8U,B.3K(I.4m,{11:"1q"},$.Y(I.5K,I))):(I.3C=!0,I.2h=!1,I.1K.1L(1,0).2F(I.P.Q.1v.14.2F).3P(I.P.Q.1v.14.2p,0))},I))}2r B.3K(I.4m,{11:"1q"},$.Y(I.5K,I))}},5K:J(i){I.1U&&I.2h&&(I.3C=!0,I.2h=!1,I.1E=i,I.1q=$("<5k>").2w({2Q:I.4m}),I.5J.3Q(I.1q),I.1Y(),I.1K.1L(1,0).2F(I.P.Q.1v.14.2F).3P(I.P.Q.1v.14.2p,0))},1Y:J(){U(I.1U){I.1U.15(1e(F.1w.1U));K i="21"==F.1w.34;U(I.1U.15(1e({1p:i?0:F.1w.1U.M*(I.1c-1),1n:i?F.1w.1U.L*(I.1c-1):0})),I.5J){K t=F.1w.1o;U(I.1o.15(1e({L:t.L,M:t.M,"1g-1p":1a.2X(-.5*t.M),"1g-1n":1a.2X(-.5*t.L),"1g-4S":0,"1g-2x":0})),I.1q){K e,s={L:t.L,M:t.M},n=1a.1x(s.L,s.M),o=$.1b({},I.1E);U(o.L>s.L&&o.M>s.M){e=3q.3r(o,{2G:s});K a=1,r=1;e.L<s.L&&(a=s.L/e.L),e.M<s.M&&(r=s.M/e.M);K h=1a.1x(a,r);h>1&&(e.L*=h,e.M*=h),$.1h("L M".3H(" "),J(i,t){e[t]=1a.2X(e[t])})}2r e=3q.3r(o.L<s.L||o.M<s.M?{L:n,M:n}:s,{2G:I.1E});K d=1a.2X(.5*s.L-.5*e.L),l=1a.2X(.5*s.M-.5*e.M);I.1q.15(1e($.1b({},e,{1p:l,1n:d})))}}}},8R:J(){I.1o.R("N-1o-3T")}});K G={3y:!1,72:!0,1z:J(){D.1z()},1i:J(b){U(I.3y)T I.73.2u(G,2C.2b(1J)),2v 0;K c=1J[1]||{},1s=1J[2];1J[1]&&"5p"==$.11(1J[1])&&(1s=1J[1],c={});K d=[],8V;2D(8V=$.11(b)){1D"46":1D"6p":K f=2j 3X(b,c),4Y="1j-23-4k-Q";U(f.4k){U(2l.5g(b)){K g=$(\'.23[1j-23-4k="\'+$(b).1j("23-4k")+\'"]\'),h={};g.ba("["+4Y+"]").1h(J(i,a){$.1b(h,6U("({"+($(a).2w(4Y)||"")+"})"))}),g.1h(J(i,t){1s||t!=b||(1s=i+1),d.2s(2j 3X(t,$.1b({},h,c)))})}}2r{K h={};2l.5g(b)&&$(b).2I("["+4Y+"]")&&($.1b(h,6U("({"+($(b).2w(4Y)||"")+"})")),f=2j 3X(b,$.1b({},h,c))),d.2s(f)}2Z;1D"8W":$.1h(b,J(i,t){K e=2j 3X(t,c);d.2s(e)})}(!1s||1>1s)&&(1s=1),1s>d.1t&&(1s=d.1t),V.6D||V.3z({x:0,y:0}),D.2p(d,1s,{42:J(){D.1i(J(){})}})},73:J(){J i(t){K e,s=$.11(t);U("46"==s)e=t;2r U("8W"==s&&t[0])e=i(t[0]);2r U(2l.5g(t)&&$(t).2w("4C"))K e=$(t).2w("4C");2r e=t.1u?t.1u:!1;T e}T J(t){U(I.72){K e=i(t);e&&(16.2H.4C=e)}}}()};$.1b(j,{1i:J(){T G.1i.2u(G,2C.2b(1J)),I},1f:J(){T D.1f(),I},4g:J(){T G.3y=!0,I},4E:J(){T G.3y=!1,I},bb:J(i){T G.72=i,I},6o:J(i){T D.6o(i),I}}),("5p"==$.11(q.3p)&&3>q.3p||q.4s&&"5p"==$.11(q.3Z)&&7M.18>q.3Z)&&(j.1i=G.73);K H={1q:{8X:"bc bd 6c 7G 7b",4n:J(i){T $.8i(57(i),I.8X.3H(" "))>-1},1j:J(i){T I.4n()?{4U:57(i)}:!1}},22:{4n:J(i){K t=/(22\\.31|8Y\\.be)\\/bf\\?(?=.*6f?=([a-52-74-9-2l]+))(?:\\S+)?$/.5e(i);T t&&t[2]?t[2]:(t=/(22\\.31|8Y\\.be)\\/(6f?\\/|u\\/|5n\\/)?([a-52-74-9-2l]+)(?:\\S+)?$/i.5e(i),t&&t[3]?t[3]:!1)},1j:J(i){K t=I.4n(i);T t?{3u:t}:!1}},1N:{4n:J(i){K t=/(1N\\.31)\\/([a-52-74-9-2l]+)(?:\\S+)?$/i.5e(i);T t&&t[2]?t[2]:!1},1j:J(i){K t=I.4n(i);T t?{3u:t}:!1}}};T $(2c).bg(J(){G.1z()}),j});',62,699,'||||||||||||||||||||||||||||||||||||||||||||this|function|var|width|height|fr||view|options|addClass||return|if|Frames|ui|append|proxy|||type|element|div|thumbnails|css|window|dimensions||_frames|Math|extend|_position|side|px|hide|margin|each|show|data|IE|frame|caption|left|thumbnail|top|image|content|position|length|url|effects|_vars|max|wrapper|initialize|null|cache|next|case|_dimensions|info|Support|previous|get|arguments|loading|stop|overlay|vimeo|bind|visible|enabled|touch|set|box|thumbnail_frame|min|outside|add|resize|for||horizontal|youtube|fresco|mobileTouch|remove|spacer||sides|ui_wrapper|jQuery|call|document||fit|className|click|_loading|_thumbnails|new|none|_|clear|frames|button|load|close|else|push|_timeouts|apply|void|attr|right|vertical|_boxDimensions|build|find|_slice|switch|states|delay|bounds|location|is|_sideWidth|_tracking|removeClass|has|onclick|inside|no|src|loop|both|controls|indexOf|prototype|preventDefault|round|dragImage|break||com|background|icon|orientation|updateVars|||setPosition||viewport|overflow|target|stopPropagation|bubble|delegate|visibility|_visible|padder|box_wrapper|download_image|_page|deepExtendClone|move|slide|Android|Fit|within|border|preloaded|id|startObserving|queues|timeouts|_disabled|setXY|queue|parseInt|_loaded|_data|player_iframe|measure|ipp|split|onload|skins|preload|easing|track|skin|Window|fadeTo|prepend|closest|first|active|getLayout|200|Loading|View|onClick|WebKit|documentElement|style|callback|delete|defaultSkin||string|setExpression|scrollTop|setSkin|setOpacity|setTimeout|pageX|pageY|_reset|views|disable|elements|_next_button|box_spacer|group|_slide|_url|detect|in|portrait|canvas|getURIData|MobileSafari|body|originalEvent|dragScale|http|https|protocol|offset|fadeOut|clearTimeout|href|overlapping|enable|_m|keyCode|_handleTracking|getSurroundingIndexes|_whileVisible|_track|_next|disabled|_previous|hasClass|_loadTimer|showUI|startUITimer|bottom|_ui_timer|extension|thumbs|_mode|ceil|_dgo|landscape||String|zA|test|substr||deepExtend|detectExtension|sync|touchEffects|keyboard|esc|api|initialTypeOptions|exec|IEMobile|isElement|mousewheel|xhr|boolean|img|scrollLeft|_count|embed|before|number|updateDimensions|_tracking_timer|_removeVideo|clearUITimer|box_outer_border|ui_padder|clone|_previous_button|_border|320|568|afterLoad|_button|hideUI|padding|Class|overlap|page|moveTo|thumbnail_wrapper|_afterLoad|define|getOrientation|sfcc|rs|warn|console|createDragImage|Image|getContext|toDataURL|Overlay|Timeouts|States|Frame|Thumbnail|toLowerCase|version|300|250|autoplay|parseFloat|Opera|opera|Chrome|innerWidth|createElement|postMessage|jpeg|Cache|once|vi|absolute|center|draw|class|getScrollDimensions|scroll|_states|showhide|setDefaultSkin|object|param|_restoreScroll|stopQueues|easeInSine|_hide|block|after|_s|easeOutSine|fetchOptions|getKeyByKeyCode|setOrientation|mousemove|_xyp|_pos|removeTracking|clearLoad|box_padder|download|ui_spacer|ui_outer_border|info_padder|html|span|_getInfoHeight|_fit|clearLoadTimer|index|_movieLoaded|player|eval|_slider|_thumbs|setActive|pages|moveToPage|loadCurrentPage|_blocked|_fallback|showFallback|Z0|Fresco|fromCharCode|replace|100|canvasToDataUrlPNG|try|png|catch|constructor|match|base|175|spacing|hd|hd1080|1280|720|reset|IE6|AppleWebKit|Gecko|ChromeMobile|CrMo|navigator|nodeType|parentNode|wheelDelta|detail|innerHeight|prefix|toUpperCase|DocumentTouch|pointerEvents|getJSON|oembed|json|getDimensions|jpg|create|start|mobile|_noSkinClass|easeInOutSine|533|timeout_|update|skinless|hideOverlapping|wmode|value|transparent|restoreOverlapping|onShow|_show|unblock|hideAll|afterHide|onkeydown|onkeyup|_preloaded|uis|removeAttr|handleTracking|clearTrackingTimer|startTracking|stopTracking|clearLoads|afterPosition|preloadSurroundingImages|mayPrevious|mayNext|setVisible|isVisible|setHidden|grep|inArray|setXYP|setTracking|isTracking|outer|ui_toggle|_spacing|_max|dragstart|mouseenter|mouseleave|setDragImage|addElement|prevent|swipe|insertYoutubeVideo|iframe|webkitAllowFullScreen|mozallowfullscreen|allowFullScreen|frameborder|insertVimeoVideo|_preShow|_shown|_postHide|previousPage|nextPage|setOrientationClass|flipMargins|flipMargin|flipDimensions|flipMultiple|floor|ie|resizing|activate|preBuild|_removed|thumbnail_url|object_type|array|extensions|youtu|typeof|amd|jquery|114|110|111|109|toString||log|globalAlpha|drawImage|Object|400|touchCaption|slideOut|slideIn|440|180|3e3|5e3|title|byline|enablejsapi|iv_load_policy|modestbranding|rel|vq|RegExp|attachEvent|MSIE|KHTML|rv|Apple|Mobile|Safari|userAgent|Array|slice|isAttached|120|Event|trigger|isPropagationStopped|isDefaultPrevented|DOMMouseScroll|Quad|Cubic|Quart|Quint|Expo|pow|Sine|cos|PI|easeIn|easeOut|easeInOut|clientWidth|charAt|join|Webkit|Moz|ms|Khtml|ontouchstart|instanceof|prefixed|Win|Mac|Linux|platform|lifetime|3e5|inject|abort|dela|setOptions|oldIE|ltIE|currentTarget|select|name|hidden|restoreOverlappingWithinContent|fs|150|keydown|keyup|orientationchange|_touched|_noCaptions|unbind|outerWidth|_top|pn|hideAllBut|clearTracking|_scrollbarWidth|scrollbarWidth|toggle|info_background|text|smart|opacity|parents|dataTransfer|replaceWith|quality|hd720|YT|outerHeight|Tracking|setSize|relative|_style|setDimensions|www|player_id|video|_playing|about|blank|easeInQuad|easeOutQuart|hideUIDelayed|slider|detach|500|adjustToViewport|animate|refresh|_dimension|state|thumbnail_image|filter|fallback|bmp|gif||watch|ready'.split('|'),0,{}));;
/*
  By Osvaldas Valutis, www.osvaldas.info
  Available for use under the MIT License
*/



;(function( $, window, document, undefined )
{
  $.fn.doubleTapToGo = function( params )
  {
    if( !( 'ontouchstart' in window ) &&
      !navigator.msMaxTouchPoints &&
      !navigator.userAgent.toLowerCase().match( /windows phone os 7/i ) ) return false;

    this.each( function()
    {
      var curItem = false;

      $( this ).on( 'click', function( e )
      {
        var item = $( this );
        if( item[ 0 ] != curItem[ 0 ] )
        {
          e.preventDefault();
          curItem = item;
        }
      });

      $( document ).on( 'click touchstart MSPointerDown', function( e )
      {
        var resetItem = true,
          parents   = $( e.target ).parents();

        for( var i = 0; i < parents.length; i++ )
          if( parents[ i ] == curItem[ 0 ] )
            resetItem = false;

        if( resetItem )
          curItem = false;
      });
    });
    return this;
  };
})( jQuery, window, document );
;
/*
 * jQuery Easing v1.3 - http://gsgd.co.uk/sandbox/jquery/easing/
 *
 * Uses the built in easing capabilities added In jQuery 1.1
 * to offer multiple easing options
 *
 * TERMS OF USE - jQuery Easing
 * 
 * Open source under the BSD License. 
 * 
 * Copyright © 2008 George McGinley Smith
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 * 
 * Redistributions of source code must retain the above copyright notice, this list of 
 * conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list 
 * of conditions and the following disclaimer in the documentation and/or other materials 
 * provided with the distribution.
 * 
 * Neither the name of the author nor the names of contributors may be used to endorse 
 * or promote products derived from this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY 
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 *  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 *  GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED 
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 *  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED 
 * OF THE POSSIBILITY OF SUCH DAMAGE. 
 *
*/
jQuery.easing["jswing"]=jQuery.easing["swing"];jQuery.extend(jQuery.easing,{def:"easeOutQuad",swing:function(a,b,c,d,e){return jQuery.easing[jQuery.easing.def](a,b,c,d,e)},easeInQuad:function(a,b,c,d,e){return d*(b/=e)*b+c},easeOutQuad:function(a,b,c,d,e){return-d*(b/=e)*(b-2)+c},easeInOutQuad:function(a,b,c,d,e){if((b/=e/2)<1)return d/2*b*b+c;return-d/2*(--b*(b-2)-1)+c},easeInCubic:function(a,b,c,d,e){return d*(b/=e)*b*b+c},easeOutCubic:function(a,b,c,d,e){return d*((b=b/e-1)*b*b+1)+c},easeInOutCubic:function(a,b,c,d,e){if((b/=e/2)<1)return d/2*b*b*b+c;return d/2*((b-=2)*b*b+2)+c},easeInQuart:function(a,b,c,d,e){return d*(b/=e)*b*b*b+c},easeOutQuart:function(a,b,c,d,e){return-d*((b=b/e-1)*b*b*b-1)+c},easeInOutQuart:function(a,b,c,d,e){if((b/=e/2)<1)return d/2*b*b*b*b+c;return-d/2*((b-=2)*b*b*b-2)+c},easeInQuint:function(a,b,c,d,e){return d*(b/=e)*b*b*b*b+c},easeOutQuint:function(a,b,c,d,e){return d*((b=b/e-1)*b*b*b*b+1)+c},easeInOutQuint:function(a,b,c,d,e){if((b/=e/2)<1)return d/2*b*b*b*b*b+c;return d/2*((b-=2)*b*b*b*b+2)+c},easeInSine:function(a,b,c,d,e){return-d*Math.cos(b/e*(Math.PI/2))+d+c},easeOutSine:function(a,b,c,d,e){return d*Math.sin(b/e*(Math.PI/2))+c},easeInOutSine:function(a,b,c,d,e){return-d/2*(Math.cos(Math.PI*b/e)-1)+c},easeInExpo:function(a,b,c,d,e){return b==0?c:d*Math.pow(2,10*(b/e-1))+c},easeOutExpo:function(a,b,c,d,e){return b==e?c+d:d*(-Math.pow(2,-10*b/e)+1)+c},easeInOutExpo:function(a,b,c,d,e){if(b==0)return c;if(b==e)return c+d;if((b/=e/2)<1)return d/2*Math.pow(2,10*(b-1))+c;return d/2*(-Math.pow(2,-10*--b)+2)+c},easeInCirc:function(a,b,c,d,e){return-d*(Math.sqrt(1-(b/=e)*b)-1)+c},easeOutCirc:function(a,b,c,d,e){return d*Math.sqrt(1-(b=b/e-1)*b)+c},easeInOutCirc:function(a,b,c,d,e){if((b/=e/2)<1)return-d/2*(Math.sqrt(1-b*b)-1)+c;return d/2*(Math.sqrt(1-(b-=2)*b)+1)+c},easeInElastic:function(a,b,c,d,e){var f=1.70158;var g=0;var h=d;if(b==0)return c;if((b/=e)==1)return c+d;if(!g)g=e*.3;if(h<Math.abs(d)){h=d;var f=g/4}else var f=g/(2*Math.PI)*Math.asin(d/h);return-(h*Math.pow(2,10*(b-=1))*Math.sin((b*e-f)*2*Math.PI/g))+c},easeOutElastic:function(a,b,c,d,e){var f=1.70158;var g=0;var h=d;if(b==0)return c;if((b/=e)==1)return c+d;if(!g)g=e*.3;if(h<Math.abs(d)){h=d;var f=g/4}else var f=g/(2*Math.PI)*Math.asin(d/h);return h*Math.pow(2,-10*b)*Math.sin((b*e-f)*2*Math.PI/g)+d+c},easeInOutElastic:function(a,b,c,d,e){var f=1.70158;var g=0;var h=d;if(b==0)return c;if((b/=e/2)==2)return c+d;if(!g)g=e*.3*1.5;if(h<Math.abs(d)){h=d;var f=g/4}else var f=g/(2*Math.PI)*Math.asin(d/h);if(b<1)return-.5*h*Math.pow(2,10*(b-=1))*Math.sin((b*e-f)*2*Math.PI/g)+c;return h*Math.pow(2,-10*(b-=1))*Math.sin((b*e-f)*2*Math.PI/g)*.5+d+c},easeInBack:function(a,b,c,d,e,f){if(f==undefined)f=1.70158;return d*(b/=e)*b*((f+1)*b-f)+c},easeOutBack:function(a,b,c,d,e,f){if(f==undefined)f=1.70158;return d*((b=b/e-1)*b*((f+1)*b+f)+1)+c},easeInOutBack:function(a,b,c,d,e,f){if(f==undefined)f=1.70158;if((b/=e/2)<1)return d/2*b*b*(((f*=1.525)+1)*b-f)+c;return d/2*((b-=2)*b*(((f*=1.525)+1)*b+f)+2)+c},easeInBounce:function(a,b,c,d,e){return d-jQuery.easing.easeOutBounce(a,e-b,0,d,e)+c},easeOutBounce:function(a,b,c,d,e){if((b/=e)<1/2.75){return d*7.5625*b*b+c}else if(b<2/2.75){return d*(7.5625*(b-=1.5/2.75)*b+.75)+c}else if(b<2.5/2.75){return d*(7.5625*(b-=2.25/2.75)*b+.9375)+c}else{return d*(7.5625*(b-=2.625/2.75)*b+.984375)+c}},easeInOutBounce:function(a,b,c,d,e){if(b<e/2)return jQuery.easing.easeInBounce(a,b*2,0,d,e)*.5+c;return jQuery.easing.easeOutBounce(a,b*2-e,0,d,e)*.5+d*.5+c}})
/*
 *
 * TERMS OF USE - EASING EQUATIONS
 * 
 * Open source under the BSD License. 
 * 
 * Copyright © 2001 Robert Penner
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 * 
 * Redistributions of source code must retain the above copyright notice, this list of 
 * conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list 
 * of conditions and the following disclaimer in the documentation and/or other materials 
 * provided with the distribution.
 * 
 * Neither the name of the author nor the names of contributors may be used to endorse 
 * or promote products derived from this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY 
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 *  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 *  GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED 
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 *  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED 
 * OF THE POSSIBILITY OF SUCH DAMAGE. 
 *
 */;
