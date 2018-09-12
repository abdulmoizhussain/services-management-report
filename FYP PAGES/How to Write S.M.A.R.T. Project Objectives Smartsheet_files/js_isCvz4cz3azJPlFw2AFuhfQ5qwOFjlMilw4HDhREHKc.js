/*! Picturefill - v2.1.0 - 2014-10-07
* http://scottjehl.github.io/picturefill
* Copyright (c) 2014 https://github.com/scottjehl/picturefill/blob/master/Authors.txt; Licensed MIT */
window.matchMedia||(window.matchMedia=function(){"use strict";var a=window.styleMedia||window.media;if(!a){var b=document.createElement("style"),c=document.getElementsByTagName("script")[0],d=null;b.type="text/css",b.id="matchmediajs-test",c.parentNode.insertBefore(b,c),d="getComputedStyle"in window&&window.getComputedStyle(b,null)||b.currentStyle,a={matchMedium:function(a){var c="@media "+a+"{ #matchmediajs-test { width: 1px; } }";return b.styleSheet?b.styleSheet.cssText=c:b.textContent=c,"1px"===d.width}}}return function(b){return{matches:a.matchMedium(b||"all"),media:b||"all"}}}()),function(a,b,c){"use strict";function d(a){var b,c,d,e,g,h=a||{};b=h.elements||f.getAllElements();for(var i=0,j=b.length;j>i;i++)if(c=b[i],d=c.parentNode,e=void 0,g=void 0,"IMG"===c.nodeName.toUpperCase()&&(c[f.ns]||(c[f.ns]={}),h.reevaluate||!c[f.ns].evaluated)){if("PICTURE"===d.nodeName.toUpperCase()){if(f.removeVideoShim(d),e=f.getMatch(c,d),e===!1)continue}else e=void 0;("PICTURE"===d.nodeName.toUpperCase()||c.srcset&&!f.srcsetSupported||!f.sizesSupported&&c.srcset&&c.srcset.indexOf("w")>-1)&&f.dodgeSrcset(c),e?(g=f.processSourceSet(e),f.applyBestCandidate(g,c)):(g=f.processSourceSet(c),(void 0===c.srcset||c[f.ns].srcset)&&f.applyBestCandidate(g,c)),c[f.ns].evaluated=!0}}function e(){function c(){var b;a._picturefillWorking||(a._picturefillWorking=!0,a.clearTimeout(b),b=a.setTimeout(function(){d({reevaluate:!0}),a._picturefillWorking=!1},60))}d();var e=setInterval(function(){return d(),/^loaded|^i|^c/.test(b.readyState)?void clearInterval(e):void 0},250);a.addEventListener?a.addEventListener("resize",c,!1):a.attachEvent&&a.attachEvent("onresize",c)}if(a.HTMLPictureElement)return void(a.picturefill=function(){});b.createElement("picture");var f={};f.ns="picturefill",function(){f.srcsetSupported="srcset"in c,f.sizesSupported="sizes"in c}(),f.trim=function(a){return a.trim?a.trim():a.replace(/^\s+|\s+$/g,"")},f.endsWith=function(a,b){return a.endsWith?a.endsWith(b):-1!==a.indexOf(b,a.length-b.length)},f.restrictsMixedContent=function(){return"https:"===a.location.protocol},f.matchesMedia=function(b){return a.matchMedia&&a.matchMedia(b).matches},f.getDpr=function(){return a.devicePixelRatio||1},f.getWidthFromLength=function(a){a=a&&a.indexOf("%")>-1==!1&&(parseFloat(a)>0||a.indexOf("calc(")>-1)?a:"100vw",a=a.replace("vw","%"),f.lengthEl||(f.lengthEl=b.createElement("div"),f.lengthEl.style.cssText="border:0;display:block;font-size:1em;left:0;margin:0;padding:0;position:absolute;visibility:hidden"),f.lengthEl.style.width=a,b.body.appendChild(f.lengthEl),f.lengthEl.className="helper-from-picturefill-js",f.lengthEl.offsetWidth<=0&&(f.lengthEl.style.width=b.documentElement.offsetWidth+"px");var c=f.lengthEl.offsetWidth;return b.body.removeChild(f.lengthEl),c},f.types={},f.types["image/jpeg"]=!0,f.types["image/gif"]=!0,f.types["image/png"]=!0,f.types["image/svg+xml"]=b.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#Image","1.1"),f.types["image/webp"]=function(){var a="image/webp";c.onerror=function(){f.types[a]=!1,d()},c.onload=function(){f.types[a]=1===c.width,d()},c.src="data:image/webp;base64,UklGRh4AAABXRUJQVlA4TBEAAAAvAAAAAAfQ//73v/+BiOh/AAA="},f.verifyTypeSupport=function(a){var b=a.getAttribute("type");return null===b||""===b?!0:"function"==typeof f.types[b]?(f.types[b](),"pending"):f.types[b]},f.parseSize=function(a){var b=/(\([^)]+\))?\s*(.+)/g.exec(a);return{media:b&&b[1],length:b&&b[2]}},f.findWidthFromSourceSize=function(a){for(var b,c=f.trim(a).split(/\s*,\s*/),d=0,e=c.length;e>d;d++){var g=c[d],h=f.parseSize(g),i=h.length,j=h.media;if(i&&(!j||f.matchesMedia(j))){b=i;break}}return f.getWidthFromLength(b)},f.parseSrcset=function(a){for(var b=[];""!==a;){a=a.replace(/^\s+/g,"");var c,d=a.search(/\s/g),e=null;if(-1!==d){c=a.slice(0,d);var f=c.slice(-1);if((","===f||""===c)&&(c=c.replace(/,+$/,""),e=""),a=a.slice(d+1),null===e){var g=a.indexOf(",");-1!==g?(e=a.slice(0,g),a=a.slice(g+1)):(e=a,a="")}}else c=a,a="";(c||e)&&b.push({url:c,descriptor:e})}return b},f.parseDescriptor=function(a,b){var c,d=b||"100vw",e=a&&a.replace(/(^\s+|\s+$)/g,""),g=f.findWidthFromSourceSize(d);if(e)for(var h=e.split(" "),i=h.length-1;i>=0;i--){var j=h[i],k=j&&j.slice(j.length-1);if("h"!==k&&"w"!==k||f.sizesSupported){if("x"===k){var l=j&&parseFloat(j,10);c=l&&!isNaN(l)?l:1}}else c=parseFloat(parseInt(j,10)/g)}return c||1},f.getCandidatesFromSourceSet=function(a,b){for(var c=f.parseSrcset(a),d=[],e=0,g=c.length;g>e;e++){var h=c[e];d.push({url:h.url,resolution:f.parseDescriptor(h.descriptor,b)})}return d},f.dodgeSrcset=function(a){a.srcset&&(a[f.ns].srcset=a.srcset,a.removeAttribute("srcset"))},f.processSourceSet=function(a){var b=a.getAttribute("srcset"),c=a.getAttribute("sizes"),d=[];return"IMG"===a.nodeName.toUpperCase()&&a[f.ns]&&a[f.ns].srcset&&(b=a[f.ns].srcset),b&&(d=f.getCandidatesFromSourceSet(b,c)),d},f.applyBestCandidate=function(a,b){var c,d,e;a.sort(f.ascendingSort),d=a.length,e=a[d-1];for(var g=0;d>g;g++)if(c=a[g],c.resolution>=f.getDpr()){e=c;break}if(e&&!f.endsWith(b.src,e.url))if(f.restrictsMixedContent()&&"http:"===e.url.substr(0,"http:".length).toLowerCase())void 0!==typeof console&&console.warn("Blocked mixed content image "+e.url);else{b.src=e.url,b.currentSrc=b.src;var h=b.style||{},i="webkitBackfaceVisibility"in h,j=h.zoom;i&&(h.zoom=".999",i=b.offsetWidth,h.zoom=j)}},f.ascendingSort=function(a,b){return a.resolution-b.resolution},f.removeVideoShim=function(a){var b=a.getElementsByTagName("video");if(b.length){for(var c=b[0],d=c.getElementsByTagName("source");d.length;)a.insertBefore(d[0],c);c.parentNode.removeChild(c)}},f.getAllElements=function(){for(var a=[],c=b.getElementsByTagName("img"),d=0,e=c.length;e>d;d++){var g=c[d];("PICTURE"===g.parentNode.nodeName.toUpperCase()||null!==g.getAttribute("srcset")||g[f.ns]&&null!==g[f.ns].srcset)&&a.push(g)}return a},f.getMatch=function(a,b){for(var c,d=b.childNodes,e=0,g=d.length;g>e;e++){var h=d[e];if(1===h.nodeType){if(h===a)return c;if("SOURCE"===h.nodeName.toUpperCase()){null!==h.getAttribute("src")&&void 0!==typeof console&&console.warn("The `src` attribute is invalid on `picture` `source` element; instead, use `srcset`.");var i=h.getAttribute("media");if(h.getAttribute("srcset")&&(!i||f.matchesMedia(i))){var j=f.verifyTypeSupport(h);if(j===!0){c=h;break}if("pending"===j)return!1}}}}return c},e(),d._=f,"object"==typeof module&&"object"==typeof module.exports?module.exports=d:"function"==typeof define&&define.amd?define(function(){return d}):"object"==typeof a&&(a.picturefill=d)}(this,this.document,new this.Image);

;
if(typeof Drupal!=="undefined"&&typeof jQuery!=="undefined"){(function($){Drupal.behaviors.picture={attach:function(context){("HTMLPictureElement" in window)||window.picturefill($(context));if(context==="#cboxLoadedContent"&&$(context).find("picture").length){$.colorbox.resize();$("img",context).once("colorbox-lazy-load",function(){$(this).load(function(){this.style.maxHeight=$(window).height()+"px";this.style.maxWidth=$(window).width()+"px";$.colorbox.resize({innerHeight:this.height,innerWidth:this.width});this.style.maxHeight=null;this.style.maxWidth=null;});});}}};})(jQuery);};
/**
 * @file
 * Handles ajax functionalities for Ajax Links API module.
 */
(function ($) {
  var ajaxLoading = false;
  Drupal.behaviors.ajaxLinksApi = {
    attach: function () {
      var trigger = Drupal.settings.ajax_links_api.trigger,
        negativeTrigger = Drupal.settings.ajax_links_api.negative_triggers;

      // match the elements from the positive selector
      var $elements = $(trigger);

      // remove elements if the negative trigger is specified
      if (negativeTrigger) {
        $elements = $elements.not(negativeTrigger);
      }

      // add the click handler
      $elements.click(function(e) {
        e.preventDefault();
        var selector;
        if(!ajaxLoading) {
          ajaxLoading = true;
          var url = $(this).attr("href");
          var id = $(this).attr("rel");
          if(id) {
            selector = $(this).attr("rel");
          } else {
            selector = Drupal.settings.ajax_links_api.selector;
          }
          ajaxBefore(selector);
          ajaxLink(selector, url);          
        }
      });
    }
  };
  function  ajaxLink(selector, url) {
    $.ajax({
      url: url,
      type: "GET",
      data: "ajax=1",
      success: function (data) {        
        ajaxAfter(selector, url, data, window, document);
        Drupal.attachBehaviors(selector);
      },
      error: function (xhr) {
        var data = xhr.response.replace("?ajax=1", "");
        ajaxAfter(selector, url, data, window, document);
      }
    });
  }
  function ajaxBefore(selector){
    // Preserve the height of the current content to avoid the entire page
    // collapsing.
    $(selector).css('height', $(selector).height() + 'px');

    // Replace the content with a throbber.
    $(selector).html("<div class='ajax-links-api-loading'></div>");
  }
  function ajaxAfter(selector, url, data, window, document){    
    // Reset the height of the container.
    $(selector).css('height', '');

    // Replace the contents of the container with the data.
    $(selector).html(data);

    // Update active class.
    $('a.active').removeClass('active').parents('li').removeClass('active-trail');
    $('a').filter(function() {
      return $(this).attr('href')== url
    }).addClass('active').parents('li').addClass('active-trail');

    // Change Url if option is selected and for html5 compatible browsers.
    var html5 = Drupal.settings.ajax_links_api.html5;
    if(html5 == 1 && window.history.replaceState) {
      // get title of loaded content.
      var matches = data.match("<title>(.*?)</title>");
      if (matches) {
        // Decode any HTML entities.
        var title = $('<div/>').html(matches[1]).text();
        // Since title is not changing with window.history.pushState(),
        // manually change title. Possible bug with browsers.
        document.title = title;
      }
      // store current url.
      window.history.replaceState({page : 0} , document.title, window.location.href);
      // Change url.
      window.history.pushState({page : 1} , title, url);
      window.onpopstate = function (e) {
        window.history.go(0);
      };
    }

    // Views Pager.
    // Please check http://drupal.org/node/1907376 for details.
    var viewsPager = Drupal.settings.ajax_links_api.vpager;
    if(viewsPager == 1) {
      $(selector + " .view .pager a").each(function(){
        var href = $(this).attr('href');
        href = href.replace("?ajax=1", "");
        href = href.replace("&ajax=1", "");
        $(this).attr('href', href);
      });
    }

    // Form Validation.
    // Plese check http://drupal.org/node/1760414 for details.
    var formAction = $(selector + " form").attr('action');
    if (formAction) {
      formAction = formAction.replace("?ajax=1", "");
      $("form").attr('action', formAction);
    }    
  }
})(jQuery);
;
(function ($) {
  Drupal.behaviors.gssAutocomplete = {
    attach: function(context, settings) {
      if (settings.gss.key == undefined) {
        return;
      }

      $('.block-search .form-item-search-block-form input.form-text, .gss .form-item-keys input.form-text, .block-search .form-search input.form-text')
        .focus(function () {
          this.select();
        })
        .mouseup(function (e) {
          e.preventDefault();
        })
        .autocomplete({
          position: {
            my: "left top",
            at: "left bottom",
            offset: "0, 5",
            collision: "none"
          },
          source: function (request, response) {
            $.ajax({
              url: "http://clients1.google.com/complete/search?q=" + request.term + "&hl=en&client=partner&source=gcsc&partnerid=" + settings.gss.key + "&ds=cse&nocache=" + Math.random().toString(),
              dataType: "jsonp",
              success: function (data) {
                response($.map(data[1], function (item) {
                  return {
                    label: item[0],
                    value: item[0]
                  };
                }));
              }
            });
          },
          autoFill: true,
          minChars: 0,
          select: function (event, ui) {
            $(this).closest('input').val(ui.item.value);
            $(this).closest('form').trigger('submit');
          }
        });
    }
  };
}(jQuery));
;
(function($) {
  Drupal.behaviors.marketo_ma = {
    attach: function(context, settings) {
      if (typeof settings.marketo_ma !== 'undefined' && settings.marketo_ma.track) {
        jQuery.ajax({
          url: document.location.protocol + settings.marketo_ma.library,
          dataType: 'script',
          cache: true,
          success: function() {
            Munchkin.init(settings.marketo_ma.key);
            if (typeof settings.marketo_ma.actions !== 'undefined') {
              jQuery.each(settings.marketo_ma.actions, function() {
                Drupal.behaviors.marketo_ma.marketoMunchkinFunction(this.action, this.data, this.hash);
              });
            }
          }
        });
      }
    },
    marketoMunchkinFunction: function(leadType, data, hash) {
      mktoMunchkinFunction(leadType, data, hash);
    }
  };

})(jQuery);
;
var Smartsheet = Smartsheet || {};
var dataLayer = dataLayer || [];

(function($, dataLayer, Smartsheet) {

  $(document).ready(function() {
    var signup, handler, i;

    // Add the mailcheck-enabled handler to signup forms requesting mailcheck.
    var $form = $(".js-signup-email-verification").once();
    if ($form.length) {
      for (i = 0; i < $form.length; i++) {
        signup = new Smartsheet.Signup($($form[i]), true);
      }
    }

    // Add the non-mailcheck handler to regular signup forms.
    $form = $(".js-signup").once();
    if ($form.length) {
      for (i = 0; i < $form.length; i++) {
        signup = new Smartsheet.Signup($($form[i]), false);
      }
    }

    // Process Google signup links.
    var $google = $("a.google-signup").once(function (){
      // Take any query parameters from the URL and copy them to the link.
      $(this).querystring($.deparam.querystring());
    });
  });

  /**
   * Object constructor.
   *
   * @param $form
   *   A jQuery object representing the signup form.
   * @param mailcheck
   *   Whether or not to run the Mailcheck library on the user's email
   *   address to catch possible typos. Defaults to false.
   */
  Smartsheet.Signup = function ($form, mailcheck) {
    this.$form = $form;
    this.$container = this.getValidationMessageContainer($form);
    this.$input = this.$form.find(".email-address-input");
    this.lang = $('html').attr('lang');
    this.mailcheck = !!mailcheck;
    this.$form.submit($.proxy(this.submitHandler, this));
    this.$form.keyup($.proxy(this.keyupHandler, this));
  };

  /**
   * Form submit handler.
   *
   * @returns {boolean}
   */
  Smartsheet.Signup.prototype.submitHandler = function (e) {
    var email = this.$input.val();

    // Handle entirely invalid email addresses.
    if (!this.validateEmail(email)) {
      this.displayValidationMessage();
      // Prevent the form from submitting.
      return false;
    }

    if (this.mailcheck) {
      // Handle addresses with valid but questionable domains such as gnail.com.
      var suggestion = this.runMailcheck();
      // Accept such email addresses only if the user has already seen the
      // warning message.
      if (suggestion && !this.warningSent(email)) {
        this.displaySuggestionMessage(suggestion);
        // Record the fact that we have already shown the user a warning about
        // this email address, so we can consider it valid on next submit.
        this.addWarning(email);
        return false;
      }
    }

    // Handle valid email addresses.
    this.closePopup();
    this.$form.attr('action', this.getActionUrl(email));
    // debug
    //console.log(this.$form.attr('action'));
    //return false;

    this.reportSignupIntent();
    return true;
  };

  /**
   * Keyup handler.
   */
  Smartsheet.Signup.prototype.keyupHandler = function (e) {
    if (e.which !== 13) {
      this.closePopup();
    }
  };

  /**
   * Assemble the correct action URL for form submission.
   *
   * The signup API consists of a POST request to a URL with GET parameters,
   * so we assemble all the needed data into the URL before allowing the
   * POST request to succeed.
   *
   * @param email
   *   The user's valid email address.
   * @returns {string}
   *   The signup URL for the form action attribute.
   */
  Smartsheet.Signup.prototype.getActionUrl = function (email) {
    var actionURL = "https://app.smartsheet.com/b/signup?lang=" + this.lang + "&lc_explicit=true&email=" + email;

    // Allow forms to specify that they want all their form fields sent to
    // the signup API. This wouldn't be needed if the API accepted GET requests,
    // or if it accepted arbitrary form fields in the POST data, but it doesn't.
    // To use this: <form ... data-include-fields="true" ...>
    if (this.$form.attr('data-include-fields')) {
      actionURL += '&' + this.$form.serialize();
    }

    // The LX code determines what the user sees when they first open the app.
    // It should come from the URL.
    var lx = this.getURLParameter('lx');
    if (lx) {
      actionURL += "&lx=" + lx;
    }

    // If the form has a data-url attribute, developers can use it to add
    // arbitrary parameters to the signup request.
    if (this.$form.attr('data-url')) {
      var dataUrl = $.trim(this.$form.attr('data-url') );
      actionURL += "&" + dataUrl;
    }

    // The TRP tracking code can come from the URL, or it can be set as a field
    // on the node containing the form.
    var trp;
    // Prefer TRP code in URL over TRP code belonging to node.
    if (trp = this.getURLParameter('trp')) {
      actionURL += "&trp=" + trp;
    }
    else if (Drupal && Drupal.settings && Drupal.settings.smartsheetTRP && Drupal.settings.smartsheetTRP.code) {
      trp = Drupal.settings.smartsheetTRP.code;
      actionURL += "&trp=" + trp;
    }

    return actionURL;

  };

  /**
   * Run the Mailcheck function on the email input field.
   */
  Smartsheet.Signup.prototype.runMailcheck = function () {
    this.$input.mailcheck({
      suggested: this.suggestionHandler.bind(this),
      empty: this.emptyHandler.bind(this)
    });
    return this.emailSuggestion;
  };

  /**
   * Mailcheck suggestion handler.
   */
  Smartsheet.Signup.prototype.suggestionHandler = function (element, suggestion) {
    this.emailSuggestion = suggestion;
  };

  /**
   * Mailcheck empty handler.
   */
  Smartsheet.Signup.prototype.emptyHandler = function (element) {
    this.emailSuggestion = null;
  };

  /**
   * Validates an email address.
   *
   * @param email
   * @returns {boolean|*}
   */
  Smartsheet.Signup.prototype.validateEmail = function (email) {
    var re = /\S+@\S+\.\S+/;
    return re.test(email);
  };

  /**
   * Indicates that we have already warned the user about this address.
   *
   * @param {string} email
   *   The email address we're warning the user to check.
   */
  Smartsheet.Signup.prototype.addWarning = function (email) {
    var emails = this.getValidEmails();
    emails.push(email);
    this.$input.attr('email-validated', emails.join(' '));
  };

  /**
   * Returns a list of emails that the user has already been warned about.
   *
   * @returns {boolean}
   */
  Smartsheet.Signup.prototype.getValidEmails = function (email) {
    var attr_value = this.$input.attr('email-validated') || '';
    return attr_value.split(' ');
  };

  /**
   * Whether or not the user has been warned about a particular email.
   *
   * @param email
   *   The email address.
   * @returns {boolean}
   */
  Smartsheet.Signup.prototype.warningSent = function (email) {
    var emails = this.getValidEmails();
    return emails.indexOf(email) != -1;
  };

  Smartsheet.Signup.prototype.getValidationMessageContent = function () {
    switch (this.lang) {
      case 'fr':
        return "Veuillez entrer une adresse courriel valide.";
        break;
      case 'it':
        return "Si prega di inserire un indirizzo email valido.";
        break;
      case 'ru':
        return "Пожалуйста, введите действующий адрес электронной почты.";
        break;
      case 'de':
        return "Bitte geben Sie eine gültige E - Mail - Adresse.";
        break;
      case 'es':
        return "Por favor, introduce una dirección de email válida.";
        break;
      case 'pt':
        return "Por favor insira um endereço de e-mail válido.";
        break;
      case 'ja':
        return "メール アドレスを確認し、もう一度やり直してください。";
        break;
    }
    return "Please check your email address and try again.";
  };

  /**
   * Returns the container for the validation message popup.
   *
   * Creates a div container if it doesn't already exist.
   */
  Smartsheet.Signup.prototype.getValidationMessageContainer = function ($form) {
    var $container = $form.find(".alert-message-email-validation-container");
    if (!$container.length) {
      $container = $('<div class="alert-message-email-validation-container"></div>').appendTo($form);
    }
    return $container;
  };

  /**
   * Displays a popup telling the user to check their email address.
   */
  Smartsheet.Signup.prototype.displayValidationMessage = function () {
    var validationMessage = '';
    validationMessage += '<div id="alert-message-email-validation">';
    validationMessage += this.getValidationMessageContent();
    validationMessage += '</div>';
    this.showPopup(validationMessage);
  };

  /**
   * Displays a popup to suggest that the user check their email for typos.
   */
  Smartsheet.Signup.prototype.displaySuggestionMessage = function (suggestion) {
    var suggestionMessage = '<div id="alert-message-email-validation">';
    //suggestionMessage += this.getCloseButton();
    suggestionMessage += 'Did you mean ';
    suggestionMessage += '<span class="email-guess">' + suggestion.full + '</span>?';
    suggestionMessage += '<div id="EmailSuggestion"><span class="accept suggestion">Yes</span><span>|</span><span class="reject suggestion">No</span></div>';
    suggestionMessage += '</div>';
    this.showPopup(suggestionMessage);

    // Add click handler for email address and "yes".
    var handler = $.proxy(this.acceptSuggestion, this);
    this.$container.find('.accept.suggestion').click(handler);

    // Add click handler for close button and "no".
    handler = $.proxy(this.closePopup, this);
    this.$container.find('.close-button').click(handler);
    this.$container.find('.reject.suggestion').click(handler);
  };

  /**
   * Displays a popup next to the email signup form.
   *
   * @param html
   *   The contents of the popup.
   */
  Smartsheet.Signup.prototype.showPopup = function (html) {
    this.$container.html(html);
    this.$container.show();
  };

  /**
   * Returns the URL-decoded version of a query string parameter value.
   *
   * @param name
   *   The name of the query string parameter key.
   * @returns {string}
   *   The value of the parameter, or null if the value does not exist.
   */
  Smartsheet.Signup.prototype.getURLParameter = function (name) {
    var result = (location.search.match(new RegExp("[?|&]" + name + '=(.+?)(&|$)')) || [, false])[1];
    return (result ? decodeURIComponent(result) : result);
  };

  Smartsheet.Signup.prototype.escapeHtml = function (string) {
    var entityMap = {
      "&": "&amp;",
      "<": "&lt;",
      ">": "&gt;",
      '"': '&quot;',
      "'": '&#39;',
      "/": '&#x2F;'
    };

    return String(string).replace(/[&<>"'\/]/g, function (s) {
      return entityMap[s];
    });
  };

  /**
   * Returns markup for the close button inside the validation error message.
   */
  Smartsheet.Signup.prototype.getCloseButton = function () {
    return '<span class="close-button">X</span>';
  };

  /**
   * Closes the validation error popup message.
   */
  Smartsheet.Signup.prototype.closePopup = function () {
    this.$container.hide();
    $('#alert-message-email-validation').remove();
  };

  /**
   * Fills the email address field with the suggested address.
   */
  Smartsheet.Signup.prototype.acceptSuggestion = function () {
    var $suggestion = this.$container.find('.email-guess');
    var email = $suggestion.text();
    if (email) {
      this.$input.val(email);
      this.closePopup();
    }
  };

  /**
   * Reports signup intent to the Google Tag Manager dataLayer.
   */
  Smartsheet.Signup.prototype.reportSignupIntent = function () {
    dataLayer.push({
      'event': 'non-application-event',
      'eventObject': 'External Signup Screen',
      'object-noun': 'Form - Signup',
      'object-string': 'Sign up with an Email',
      'object-type': 'button',
      'object-verb': 'Click'
    });
  };

})(jQuery, dataLayer, Smartsheet);

/*1.1.0*/var Mailcheck={domainThreshold:4,topLevelThreshold:3,defaultDomains:"yahoo.com google.com hotmail.com gmail.com me.com aol.com mac.com live.com comcast.net googlemail.com msn.com hotmail.co.uk yahoo.co.uk facebook.com verizon.net sbcglobal.net att.net gmx.com mail.com outlook.com icloud.com".split(" "),defaultTopLevelDomains:"co.jp co.uk com net org info edu gov mil ca".split(" "),run:function(a){a.domains=a.domains||Mailcheck.defaultDomains;a.topLevelDomains=a.topLevelDomains||Mailcheck.defaultTopLevelDomains;
  a.distanceFunction=a.distanceFunction||Mailcheck.sift3Distance;var b=function(a){return a},c=a.suggested||b,b=a.empty||b;return(a=Mailcheck.suggest(Mailcheck.encodeEmail(a.email),a.domains,a.topLevelDomains,a.distanceFunction))?c(a):b()},suggest:function(a,b,c,d){a=a.toLowerCase();a=this.splitEmail(a);if(b=this.findClosestDomain(a.domain,b,d,this.domainThreshold)){if(b!=a.domain)return{address:a.address,domain:b,full:a.address+"@"+b}}else if(c=this.findClosestDomain(a.topLevelDomain,c,d,this.topLevelThreshold),
  a.domain&&c&&c!=a.topLevelDomain)return d=a.domain,b=d.substring(0,d.lastIndexOf(a.topLevelDomain))+c,{address:a.address,domain:b,full:a.address+"@"+b};return!1},findClosestDomain:function(a,b,c,d){d=d||this.topLevelThreshold;var e,g=99,f=null;if(!a||!b)return!1;c||(c=this.sift3Distance);for(var h=0;h<b.length;h++){if(a===b[h])return a;e=c(a,b[h]);e<g&&(g=e,f=b[h])}return g<=d&&null!==f?f:!1},sift3Distance:function(a,b){if(null==a||0===a.length)return null==b||0===b.length?0:b.length;if(null==b||
  0===b.length)return a.length;for(var c=0,d=0,e=0,g=0;c+d<a.length&&c+e<b.length;){if(a.charAt(c+d)==b.charAt(c+e))g++;else for(var f=e=d=0;5>f;f++){if(c+f<a.length&&a.charAt(c+f)==b.charAt(c)){d=f;break}if(c+f<b.length&&a.charAt(c)==b.charAt(c+f)){e=f;break}}c++}return(a.length+b.length)/2-g},splitEmail:function(a){a=a.trim().split("@");if(2>a.length)return!1;for(var b=0;b<a.length;b++)if(""===a[b])return!1;var c=a.pop(),d=c.split("."),e="";if(0==d.length)return!1;if(1==d.length)e=d[0];else{for(b=
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        1;b<d.length;b++)e+=d[b]+".";2<=d.length&&(e=e.substring(0,e.length-1))}return{topLevelDomain:e,domain:c,address:a.join("@")}},encodeEmail:function(a){a=encodeURI(a);return a=a.replace("%20"," ").replace("%25","%").replace("%5E","^").replace("%60","`").replace("%7B","{").replace("%7C","|").replace("%7D","}")}};"undefined"!==typeof module&&module.exports&&(module.exports=Mailcheck);
"undefined"!==typeof window&&window.jQuery&&function(a){a.fn.mailcheck=function(a){var c=this;if(a.suggested){var d=a.suggested;a.suggested=function(a){d(c,a)}}if(a.empty){var e=a.empty;a.empty=function(){e.call(null,c)}}a.email=this.val();Mailcheck.run(a)}}(jQuery);
;
var Drupal = Drupal || {};
var dataLayer = dataLayer || {};
var Smartsheet = Smartsheet || {};

(function ($, Drupal, dataLayer, Smartsheet) {

  // ensures the optimizely object is defined globally using
  window['optimizely'] = window['optimizely'] || [];

  Drupal.behaviors = Drupal.behaviors || {};

  /**
   * Adds GA dataLayer tracking to webforms that use webform_ajax.
   */
  Drupal.behaviors.smartsheetWebformTracking = {};

  Drupal.behaviors.smartsheetWebformTracking.attach = function (context, settings) {
    var $context = $(context);

    $context.find('form.webform-client-form').once('datalayer-tracking', function () {
      var $wrapper = getWrapper(this);
      var formId = getFormId($wrapper);
      if (formId) {
        // Registers a new form impression every time the form is loaded.
        dataLayer.push({
            'event': 'marketo-form-impression',
            'marketo-form-id' : formId
          }
        );
        // Adds a change handler to report field completion.
        $wrapper.find('input').change(function (e) {
          dataLayer.push({
            'event': 'marketo-form-field-complete',
            'marketo-form-field': formId
          });
        });
      }
    });

    $(context).find('.webform-confirmation').once('datalayer-tracking', function () {
      var $wrapper = getWrapper(this);
      var formId = getFormId($wrapper);
      if (formId) {
        // Reports successful form submission.
        dataLayer.push({
          'event': 'marketo-form-submit-success',
          'marketo-form-id': formId
        });
        // sends a form_success custom tracking event to Optimizely for the given event name.
         window.optimizely.push(["trackEvent", "form_success"]);
      }
    });

    $(context).find('.messages.error').once('datalayer-tracking', function () {
      var $wrapper = getWrapper(this);
      var formId = getFormId($wrapper);


      if (formId) {
        var error = $(this).not('element-invisible').text();

        // Reports a validation error on form submission.
        dataLayer.push({
          'event': 'marketo-form-submit-failed',
          'marketo-form-id': formId,
          'validation-error': error
        });

        // sends a form_fail custom tracking event to Optimizely for the given event name.
        // Collect field errors
        $('.datalayer-tracking-processed ul li').each(function (index, value) {
          //otimizely dimension value has a 20 char string limit
          var fieldError = $(this).html().substring(0, 20);
          window.optimizely.push(['setDimensionValue', 'failed_contact_fields', fieldError]);
          window.optimizely.push(["trackEvent", "form_fail"]);
        });

      }

    });

    /**
     * Returns the webform ajax wrapper for the given element, if any.
     *
     * @param {HTMLElement} elem
     * @returns jQuery
     */
    function getWrapper(elem) {
      return $(elem).parents('div').filter(function(){
        return (this.id && this.id.match(/webform-ajax-wrapper-[0-9]+$/));
      });
    }

    /**
     * Returns the webform node ID corresponding to a webform ajax wrapper.
     *
     * @param {jQuery} $wrapper
     * @returns {string|bool}
     *   The form ID as a string, or false if none.
     */
    function getFormId($wrapper) {
      if (!$wrapper || !$wrapper.length || !$wrapper[0].id) {
        return false;
      }
      return $wrapper.attr('id').match(/[0-9]+$/)[0];
    }

  };

})(jQuery, Drupal, dataLayer, Smartsheet);
;
var Drupal = Drupal || {};
var Smartsheet = Smartsheet || {};

(function ($, Drupal, Smartsheet) {

  /**
   * Drupal behaviors integration for the Smartsheet.videoTracking object.
   */
  Drupal.behaviors = Drupal.behaviors || {};
  Drupal.behaviors.smartsheetVideoTracking = {};
  Drupal.behaviors.smartsheetVideoTracking.attach = function (context, settings) {

    var $iframes = $('iframe.media-youtube-player').once('ga-video-tracking');
    if ($iframes.length) {
      // Load the YouTube iframe API JS, if it isn't already loaded.
      var tag = document.createElement('script');
      tag.src = "https://www.youtube.com/iframe_api";
      var firstScriptTag = document.getElementsByTagName('script')[0];
      firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

      // Create a new player object for each iframe.
      $iframes.each(function () {
        new Smartsheet.VideoTracking(this);
      });
    }
  };

  /**
   * Handles YouTube video tracking via Google Analytics.
   *
   * @param {HTMLElement} iframe
   *   The iframe of the YouTube player.
   */
  Smartsheet.VideoTracking = function (iframe) {
    this.iframe = iframe;
    this.player = this.createPlayer();
  };

  /**
   * Instantiates a YT Player object for the current iframe.
   *
   * @returns {YT.Player}
   */
  Smartsheet.VideoTracking.prototype.createPlayer = function () {
    if (Smartsheet.VideoTracking.apiReady) {
      this.player = new YT.Player(this.iframe, {
        events: {
          onReady: this.handleReady.bind(this),
          onStateChange: window.onPlayerStateChange
        }
      });
      return this.player;
    }
    else {
      // If the YouTube iFrame API isn't ready yet, try every two seconds to
      // run this same method again.
      window.setTimeout(this.createPlayer.bind(this), 2000);
    }
  };

  /**
   * Callback for the YouTube iframe API's onReady event.
   */
  Smartsheet.VideoTracking.prototype.handleReady = function () {
    window.registerYouTubePlayer(this.player);
  };

  /**
   * Global function required for Analytics Pros integration.
   */
  window.onPlayerStateChange = function (e) {};

  /**
   * Callback executed by the YouTube iframe API when the API is available.
   */
  window.onYouTubeIframeAPIReady = function () {
    Smartsheet.VideoTracking.apiReady = true;
  };


})(jQuery, Drupal, Smartsheet);
;
(function ($, Drupal) {
  Drupal.behaviors.iosHandling = {};
  Drupal.behaviors.iosHandling.attach = function (context, settings) {
    var iosString = 'iOS';
    // Check the current URL for the string indicating we're inside the iOS app.
    var currentQuery = $.deparam.querystring();
    if (typeof currentQuery[iosString] !== 'undefined') {
      $('body').addClass(iosString);
      // Add the iOS code to every link on the page.
      $('a').querystring(iosString);
    }
  };
})(jQuery, Drupal);
;
(function($, window, Drupal){
  Drupal.behaviors.smartsheetTRP = {};
  Drupal.behaviors.smartsheetTRP.attach = function (context, settings) {
    if (Drupal.settings.smartsheetTRP) {
      var $links = Drupal.smartsheetTRP.findSignupLinks();
      $links.each(Drupal.smartsheetTRP.addTRPcode);
    }
  };

  Drupal.smartsheetTRP = Drupal.smartsheetTRP || {};

  /**
   * Finds any links on the page that point the user to sign up for Smartsheet.
   *
   * @returns jQuery
   *   A jQuery object representing all signup links found on the page.
   */
  Drupal.smartsheetTRP.findSignupLinks = function () {
    // Configurable list of all signup pages we want to find links to.
    var pages = Drupal.settings.smartsheetTRP.pages;

    // Add a preceding / to every entry in our list of pages and add the two
    // lists together. This is necessary because IE handles element.pathname
    // differently:
    // http://stackoverflow.com/questions/956233/javascript-pathname-ie-quirk
    pages = $.map(pages, function(page){return '/' + page}).concat(pages);

    /**
     * jQuery filter callback. Checks whether a link points at a signup page.
     *
     * @param {integer} index
     *   The position of the element within the set being filtered.
     * @param {HTMLAnchorElement} element
     *   The link being checked.
     * @returns {boolean}
     */
    var isSignupLink = function (index, element) {
      return ($.inArray(element.pathname, pages) > -1);
    };

    /**
     * jQuery filter callback. Checks whether a link points to our site.
     *
     * @param {integer} index
     *   The position of the element within the set being filtered.
     * @param {HTMLAnchorElement} element
     *   The link being checked.
     * @returns {boolean}
     */
    var isSmartsheet = function (index, element) {
      // This try/catch is necessary because IE will throw a "Security Error"
      // on an attempt to access the properties of certain links (such as
      // anything with a username and password embedded in the URL).
      try {
        // Check for links to the current website.
        if (element.hostname == window.location.hostname) {
          return true;
        }
        // Check for hard-coded smartsheet.com links.
        else if (element.hostname.indexOf('smartsheet.com') != -1) {
          return true;
        }
      }
      catch (e) {}
      return false;
    };

    // Return all links in the document that point to a signup page on our site.
    return $('a').filter(isSmartsheet).filter(isSignupLink);
  };

  /**
   * Uses the jQuery BBQ library to merge the TRP code into the existing link.
   */
  Drupal.smartsheetTRP.addTRPcode = function () {
    // Fetch the code from the existing URL.
    var currentQuery = $.deparam.querystring();
    if (currentQuery.trp) {
      $(this).querystring({'trp': currentQuery.trp});
    }

    // Fetch the code from the settings.
    if (Drupal.settings.smartsheetTRP.code) {
      $(this).querystring({'trp': Drupal.settings.smartsheetTRP.code});
    }
  };

})(jQuery, window, Drupal);
;
