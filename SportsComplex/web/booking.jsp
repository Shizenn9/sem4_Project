<%-- 
    Document   : booking
    Created on : Jun 28, 2023, 2:39:11 AM
    Author     : Danish
--%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<sql:setDataSource var="myDatasource"
driver="org.apache.derby.jdbc.ClientDriver"
url="jdbc:derby://localhost:1527/sportscomplex" user="app"
password="app"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html lang="en-US">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <link rel="profile" href="https://gmpg.org/xfn/11">
   <script>
      document.documentElement.className = document.documentElement.className + ' yes-js js_active js'
   </script>
   <title>Court Booking &#8211; Megah Holdings Sports Complex</title>
   <meta name='robots' content='max-image-preview:large' />
   <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet"
		href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
   <link rel='dns-prefetch' href='//fonts.googleapis.com' />
   <link rel='preconnect' href='https://fonts.gstatic.com' crossorigin />
   <link rel="alternate" type="application/rss+xml" title="Cribe &raquo; Feed"
      href="https://themes.hibootstrap.com/cribe/feed/" />
   <link rel="alternate" type="application/rss+xml" title="Cribe &raquo; Comments Feed"
      href="https://themes.hibootstrap.com/cribe/comments/feed/" />
   <script type="text/javascript">
      window._wpemojiSettings = {
         "baseUrl": "https:\/\/s.w.org\/images\/core\/emoji\/14.0.0\/72x72\/",
         "ext": ".png",
         "svgUrl": "https:\/\/s.w.org\/images\/core\/emoji\/14.0.0\/svg\/",
         "svgExt": ".svg",
         "source": {
            "concatemoji": "https:\/\/themes.hibootstrap.com\/cribe\/wp-includes\/js\/wp-emoji-release.min.js?ver=6.2.2"
         }
      };
      /*! This file is auto-generated */
      ! function (e, a, t) {
         var n, r, o, i = a.createElement("canvas"),
            p = i.getContext && i.getContext("2d");

         function s(e, t) {
            p.clearRect(0, 0, i.width, i.height), p.fillText(e, 0, 0);
            e = i.toDataURL();
            return p.clearRect(0, 0, i.width, i.height), p.fillText(t, 0, 0), e === i.toDataURL()
         }

         function c(e) {
            var t = a.createElement("script");
            t.src = e, t.defer = t.type = "text/javascript", a.getElementsByTagName("head")[0].appendChild(t)
         }
         for (o = Array("flag", "emoji"), t.supports = {
               everything: !0,
               everythingExceptFlag: !0
            }, r = 0; r < o.length; r++) t.supports[o[r]] = function (e) {
            if (p && p.fillText) switch (p.textBaseline = "top", p.font = "600 32px Arial", e) {
               case "flag":
                  return s("\ud83c\udff3\ufe0f\u200d\u26a7\ufe0f", "\ud83c\udff3\ufe0f\u200b\u26a7\ufe0f") ? !1 :
                     !s("\ud83c\uddfa\ud83c\uddf3", "\ud83c\uddfa\u200b\ud83c\uddf3") && !s(
                        "\ud83c\udff4\udb40\udc67\udb40\udc62\udb40\udc65\udb40\udc6e\udb40\udc67\udb40\udc7f",
                        "\ud83c\udff4\u200b\udb40\udc67\u200b\udb40\udc62\u200b\udb40\udc65\u200b\udb40\udc6e\u200b\udb40\udc67\u200b\udb40\udc7f"
                        );
               case "emoji":
                  return !s("\ud83e\udef1\ud83c\udffb\u200d\ud83e\udef2\ud83c\udfff",
                     "\ud83e\udef1\ud83c\udffb\u200b\ud83e\udef2\ud83c\udfff")
            }
            return !1
         }(o[r]), t.supports.everything = t.supports.everything && t.supports[o[r]], "flag" !== o[r] && (t.supports
            .everythingExceptFlag = t.supports.everythingExceptFlag && t.supports[o[r]]);
         t.supports.everythingExceptFlag = t.supports.everythingExceptFlag && !t.supports.flag, t.DOMReady = !1, t
            .readyCallback = function () {
               t.DOMReady = !0
            }, t.supports.everything || (n = function () {
               t.readyCallback()
            }, a.addEventListener ? (a.addEventListener("DOMContentLoaded", n, !1), e.addEventListener("load", n, !
               1)) : (e.attachEvent("onload", n), a.attachEvent("onreadystatechange", function () {
               "complete" === a.readyState && t.readyCallback()
            })), (e = t.source || {}).concatemoji ? c(e.concatemoji) : e.wpemoji && e.twemoji && (c(e.twemoji), c(e
               .wpemoji)))
      }(window, document, window._wpemojiSettings);
   </script>
   <style type="text/css">
      img.wp-smiley,
      img.emoji {
         display: inline !important;
         border: none !important;
         box-shadow: none !important;
         height: 1em !important;
         width: 1em !important;
         margin: 0 0.07em !important;
         vertical-align: -0.1em !important;
         background: none !important;
         padding: 0 !important;
      }
   </style>
   <link rel='stylesheet' id='wp-block-library-css'
      href='https://themes.hibootstrap.com/cribe/wp-includes/css/dist/block-library/style.min.css?ver=6.2.2'
      type='text/css' media='all' />
   <link rel='stylesheet' id='wc-blocks-vendors-style-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/plugins/woocommerce/packages/woocommerce-blocks/build/wc-blocks-vendors-style.css?ver=10.0.4'
      type='text/css' media='all' />
   <link rel='stylesheet' id='wc-blocks-style-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/plugins/woocommerce/packages/woocommerce-blocks/build/wc-blocks-style.css?ver=10.0.4'
      type='text/css' media='all' />
   <link rel='stylesheet' id='jquery-selectBox-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/plugins/yith-woocommerce-wishlist/assets/css/jquery.selectBox.css?ver=1.2.0'
      type='text/css' media='all' />
   <link rel='stylesheet' id='yith-wcwl-font-awesome-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/plugins/yith-woocommerce-wishlist/assets/css/font-awesome.css?ver=4.7.0'
      type='text/css' media='all' />
   <link rel='stylesheet' id='woocommerce_prettyPhoto_css-css'
      href='//themes.hibootstrap.com/cribe/wp-content/plugins/woocommerce/assets/css/prettyPhoto.css?ver=3.1.6'
      type='text/css' media='all' />
   <link rel='stylesheet' id='yith-wcwl-main-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/plugins/yith-woocommerce-wishlist/assets/css/style.css?ver=3.20.0'
      type='text/css' media='all' />
   <style id='yith-wcwl-main-inline-css' type='text/css'>
      .yith-wcwl-share li a {
         color: #FFFFFF;
      }

      .yith-wcwl-share li a:hover {
         color: #FFFFFF;
      }

      .yith-wcwl-share a.facebook {
         background: #39599E;
         background-color: #39599E;
      }

      .yith-wcwl-share a.facebook:hover {
         background: #39599E;
         background-color: #39599E;
      }

      .yith-wcwl-share a.twitter {
         background: #45AFE2;
         background-color: #45AFE2;
      }

      .yith-wcwl-share a.twitter:hover {
         background: #39599E;
         background-color: #39599E;
      }

      .yith-wcwl-share a.pinterest {
         background: #AB2E31;
         background-color: #AB2E31;
      }

      .yith-wcwl-share a.pinterest:hover {
         background: #39599E;
         background-color: #39599E;
      }

      .yith-wcwl-share a.email {
         background: #FBB102;
         background-color: #FBB102;
      }

      .yith-wcwl-share a.email:hover {
         background: #39599E;
         background-color: #39599E;
      }

      .yith-wcwl-share a.whatsapp {
         background: #00A901;
         background-color: #00A901;
      }

      .yith-wcwl-share a.whatsapp:hover {
         background: #39599E;
         background-color: #39599E;
      }
   </style>
   <link rel='stylesheet' id='classic-theme-styles-css'
      href='https://themes.hibootstrap.com/cribe/wp-includes/css/classic-themes.min.css?ver=6.2.2' type='text/css'
      media='all' />
   <style id='global-styles-inline-css' type='text/css'>
      body {
         --wp--preset--color--black: #000000;
         --wp--preset--color--cyan-bluish-gray: #abb8c3;
         --wp--preset--color--white: #ffffff;
         --wp--preset--color--pale-pink: #f78da7;
         --wp--preset--color--vivid-red: #cf2e2e;
         --wp--preset--color--luminous-vivid-orange: #ff6900;
         --wp--preset--color--luminous-vivid-amber: #fcb900;
         --wp--preset--color--light-green-cyan: #7bdcb5;
         --wp--preset--color--vivid-green-cyan: #00d084;
         --wp--preset--color--pale-cyan-blue: #8ed1fc;
         --wp--preset--color--vivid-cyan-blue: #0693e3;
         --wp--preset--color--vivid-purple: #9b51e0;
         --wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg, rgba(6, 147, 227, 1) 0%, rgb(155, 81, 224) 100%);
         --wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg, rgb(122, 220, 180) 0%, rgb(0, 208, 130) 100%);
         --wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg, rgba(252, 185, 0, 1) 0%, rgba(255, 105, 0, 1) 100%);
         --wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg, rgba(255, 105, 0, 1) 0%, rgb(207, 46, 46) 100%);
         --wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg, rgb(238, 238, 238) 0%, rgb(169, 184, 195) 100%);
         --wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg, rgb(74, 234, 220) 0%, rgb(151, 120, 209) 20%, rgb(207, 42, 186) 40%, rgb(238, 44, 130) 60%, rgb(251, 105, 98) 80%, rgb(254, 248, 76) 100%);
         --wp--preset--gradient--blush-light-purple: linear-gradient(135deg, rgb(255, 206, 236) 0%, rgb(152, 150, 240) 100%);
         --wp--preset--gradient--blush-bordeaux: linear-gradient(135deg, rgb(254, 205, 165) 0%, rgb(254, 45, 45) 50%, rgb(107, 0, 62) 100%);
         --wp--preset--gradient--luminous-dusk: linear-gradient(135deg, rgb(255, 203, 112) 0%, rgb(199, 81, 192) 50%, rgb(65, 88, 208) 100%);
         --wp--preset--gradient--pale-ocean: linear-gradient(135deg, rgb(255, 245, 203) 0%, rgb(182, 227, 212) 50%, rgb(51, 167, 181) 100%);
         --wp--preset--gradient--electric-grass: linear-gradient(135deg, rgb(202, 248, 128) 0%, rgb(113, 206, 126) 100%);
         --wp--preset--gradient--midnight: linear-gradient(135deg, rgb(2, 3, 129) 0%, rgb(40, 116, 252) 100%);
         --wp--preset--duotone--dark-grayscale: url('#wp-duotone-dark-grayscale');
         --wp--preset--duotone--grayscale: url('#wp-duotone-grayscale');
         --wp--preset--duotone--purple-yellow: url('#wp-duotone-purple-yellow');
         --wp--preset--duotone--blue-red: url('#wp-duotone-blue-red');
         --wp--preset--duotone--midnight: url('#wp-duotone-midnight');
         --wp--preset--duotone--magenta-yellow: url('#wp-duotone-magenta-yellow');
         --wp--preset--duotone--purple-green: url('#wp-duotone-purple-green');
         --wp--preset--duotone--blue-orange: url('#wp-duotone-blue-orange');
         --wp--preset--font-size--small: 13px;
         --wp--preset--font-size--medium: 20px;
         --wp--preset--font-size--large: 36px;
         --wp--preset--font-size--x-large: 42px;
         --wp--preset--spacing--20: 0.44rem;
         --wp--preset--spacing--30: 0.67rem;
         --wp--preset--spacing--40: 1rem;
         --wp--preset--spacing--50: 1.5rem;
         --wp--preset--spacing--60: 2.25rem;
         --wp--preset--spacing--70: 3.38rem;
         --wp--preset--spacing--80: 5.06rem;
         --wp--preset--shadow--natural: 6px 6px 9px rgba(0, 0, 0, 0.2);
         --wp--preset--shadow--deep: 12px 12px 50px rgba(0, 0, 0, 0.4);
         --wp--preset--shadow--sharp: 6px 6px 0px rgba(0, 0, 0, 0.2);
         --wp--preset--shadow--outlined: 6px 6px 0px -3px rgba(255, 255, 255, 1), 6px 6px rgba(0, 0, 0, 1);
         --wp--preset--shadow--crisp: 6px 6px 0px rgba(0, 0, 0, 1);
      }

      :where(.is-layout-flex) {
         gap: 0.5em;
      }

      body .is-layout-flow>.alignleft {
         float: left;
         margin-inline-start: 0;
         margin-inline-end: 2em;
      }

      body .is-layout-flow>.alignright {
         float: right;
         margin-inline-start: 2em;
         margin-inline-end: 0;
      }

      body .is-layout-flow>.aligncenter {
         margin-left: auto !important;
         margin-right: auto !important;
      }

      body .is-layout-constrained>.alignleft {
         float: left;
         margin-inline-start: 0;
         margin-inline-end: 2em;
      }

      body .is-layout-constrained>.alignright {
         float: right;
         margin-inline-start: 2em;
         margin-inline-end: 0;
      }

      body .is-layout-constrained>.aligncenter {
         margin-left: auto !important;
         margin-right: auto !important;
      }

      body .is-layout-constrained> :where(:not(.alignleft):not(.alignright):not(.alignfull)) {
         max-width: var(--wp--style--global--content-size);
         margin-left: auto !important;
         margin-right: auto !important;
      }

      body .is-layout-constrained>.alignwide {
         max-width: var(--wp--style--global--wide-size);
      }

      body .is-layout-flex {
         display: flex;
      }

      body .is-layout-flex {
         flex-wrap: wrap;
         align-items: center;
      }

      body .is-layout-flex>* {
         margin: 0;
      }

      :where(.wp-block-columns.is-layout-flex) {
         gap: 2em;
      }

      .has-black-color {
         color: var(--wp--preset--color--black) !important;
      }

      .has-cyan-bluish-gray-color {
         color: var(--wp--preset--color--cyan-bluish-gray) !important;
      }

      .has-white-color {
         color: var(--wp--preset--color--white) !important;
      }

      .has-pale-pink-color {
         color: var(--wp--preset--color--pale-pink) !important;
      }

      .has-vivid-red-color {
         color: var(--wp--preset--color--vivid-red) !important;
      }

      .has-luminous-vivid-orange-color {
         color: var(--wp--preset--color--luminous-vivid-orange) !important;
      }

      .has-luminous-vivid-amber-color {
         color: var(--wp--preset--color--luminous-vivid-amber) !important;
      }

      .has-light-green-cyan-color {
         color: var(--wp--preset--color--light-green-cyan) !important;
      }

      .has-vivid-green-cyan-color {
         color: var(--wp--preset--color--vivid-green-cyan) !important;
      }

      .has-pale-cyan-blue-color {
         color: var(--wp--preset--color--pale-cyan-blue) !important;
      }

      .has-vivid-cyan-blue-color {
         color: var(--wp--preset--color--vivid-cyan-blue) !important;
      }

      .has-vivid-purple-color {
         color: var(--wp--preset--color--vivid-purple) !important;
      }

      .has-black-background-color {
         background-color: var(--wp--preset--color--black) !important;
      }

      .has-cyan-bluish-gray-background-color {
         background-color: var(--wp--preset--color--cyan-bluish-gray) !important;
      }

      .has-white-background-color {
         background-color: var(--wp--preset--color--white) !important;
      }

      .has-pale-pink-background-color {
         background-color: var(--wp--preset--color--pale-pink) !important;
      }

      .has-vivid-red-background-color {
         background-color: var(--wp--preset--color--vivid-red) !important;
      }

      .has-luminous-vivid-orange-background-color {
         background-color: var(--wp--preset--color--luminous-vivid-orange) !important;
      }

      .has-luminous-vivid-amber-background-color {
         background-color: var(--wp--preset--color--luminous-vivid-amber) !important;
      }

      .has-light-green-cyan-background-color {
         background-color: var(--wp--preset--color--light-green-cyan) !important;
      }

      .has-vivid-green-cyan-background-color {
         background-color: var(--wp--preset--color--vivid-green-cyan) !important;
      }

      .has-pale-cyan-blue-background-color {
         background-color: var(--wp--preset--color--pale-cyan-blue) !important;
      }

      .has-vivid-cyan-blue-background-color {
         background-color: var(--wp--preset--color--vivid-cyan-blue) !important;
      }

      .has-vivid-purple-background-color {
         background-color: var(--wp--preset--color--vivid-purple) !important;
      }

      .has-black-border-color {
         border-color: var(--wp--preset--color--black) !important;
      }

      .has-cyan-bluish-gray-border-color {
         border-color: var(--wp--preset--color--cyan-bluish-gray) !important;
      }

      .has-white-border-color {
         border-color: var(--wp--preset--color--white) !important;
      }

      .has-pale-pink-border-color {
         border-color: var(--wp--preset--color--pale-pink) !important;
      }

      .has-vivid-red-border-color {
         border-color: var(--wp--preset--color--vivid-red) !important;
      }

      .has-luminous-vivid-orange-border-color {
         border-color: var(--wp--preset--color--luminous-vivid-orange) !important;
      }

      .has-luminous-vivid-amber-border-color {
         border-color: var(--wp--preset--color--luminous-vivid-amber) !important;
      }

      .has-light-green-cyan-border-color {
         border-color: var(--wp--preset--color--light-green-cyan) !important;
      }

      .has-vivid-green-cyan-border-color {
         border-color: var(--wp--preset--color--vivid-green-cyan) !important;
      }

      .has-pale-cyan-blue-border-color {
         border-color: var(--wp--preset--color--pale-cyan-blue) !important;
      }

      .has-vivid-cyan-blue-border-color {
         border-color: var(--wp--preset--color--vivid-cyan-blue) !important;
      }

      .has-vivid-purple-border-color {
         border-color: var(--wp--preset--color--vivid-purple) !important;
      }

      .has-vivid-cyan-blue-to-vivid-purple-gradient-background {
         background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;
      }

      .has-light-green-cyan-to-vivid-green-cyan-gradient-background {
         background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;
      }

      .has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background {
         background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;
      }

      .has-luminous-vivid-orange-to-vivid-red-gradient-background {
         background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;
      }

      .has-very-light-gray-to-cyan-bluish-gray-gradient-background {
         background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;
      }

      .has-cool-to-warm-spectrum-gradient-background {
         background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;
      }

      .has-blush-light-purple-gradient-background {
         background: var(--wp--preset--gradient--blush-light-purple) !important;
      }

      .has-blush-bordeaux-gradient-background {
         background: var(--wp--preset--gradient--blush-bordeaux) !important;
      }

      .has-luminous-dusk-gradient-background {
         background: var(--wp--preset--gradient--luminous-dusk) !important;
      }

      .has-pale-ocean-gradient-background {
         background: var(--wp--preset--gradient--pale-ocean) !important;
      }

      .has-electric-grass-gradient-background {
         background: var(--wp--preset--gradient--electric-grass) !important;
      }

      .has-midnight-gradient-background {
         background: var(--wp--preset--gradient--midnight) !important;
      }

      .has-small-font-size {
         font-size: var(--wp--preset--font-size--small) !important;
      }

      .has-medium-font-size {
         font-size: var(--wp--preset--font-size--medium) !important;
      }

      .has-large-font-size {
         font-size: var(--wp--preset--font-size--large) !important;
      }

      .has-x-large-font-size {
         font-size: var(--wp--preset--font-size--x-large) !important;
      }

      .wp-block-navigation a:where(:not(.wp-element-button)) {
         color: inherit;
      }

      :where(.wp-block-columns.is-layout-flex) {
         gap: 2em;
      }

      .wp-block-pullquote {
         font-size: 1.5em;
         line-height: 1.6;
      }
   </style>
   <link rel='stylesheet' id='contact-form-7-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=5.7.6'
      type='text/css' media='all' />
   <link rel='stylesheet' id='cribe-toolkit-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/plugins/cribe-toolkit/assets/css/cribe-toolkit.css?ver=6.2.2'
      type='text/css' media='all' />
   <link rel='stylesheet' id='woocommerce-layout-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/plugins/woocommerce/assets/css/woocommerce-layout.css?ver=7.7.0'
      type='text/css' media='all' />
   <link rel='stylesheet' id='woocommerce-smallscreen-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/plugins/woocommerce/assets/css/woocommerce-smallscreen.css?ver=7.7.0'
      type='text/css' media='only screen and (max-width: 768px)' />
   <link rel='stylesheet' id='woocommerce-general-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/plugins/woocommerce/assets/css/woocommerce.css?ver=7.7.0'
      type='text/css' media='all' />
   <style id='woocommerce-inline-inline-css' type='text/css'>
      .woocommerce form .form-row .required {
         visibility: visible;
      }
   </style>
   <link rel='stylesheet' id='cribe-style-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/style.css?ver=6.2.2' type='text/css'
      media='all' />
   <link rel='stylesheet' id='bootstrap-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/css/bootstrap.min.css?ver=1687531403'
      type='text/css' media='all' />
   <link rel='stylesheet' id='fontawesome-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/css/fontawesome.min.css?ver=1687531403'
      type='text/css' media='all' />
   <link rel='stylesheet' id='flaticon-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/css/flaticon.css?ver=1687531403'
      type='text/css' media='all' />
   <link rel='stylesheet' id='owl-carousel-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/css/owl.carousel.css?ver=1687531403'
      type='text/css' media='all' />
   <link rel='stylesheet' id='magnific-popup-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/css/magnific-popup.css?ver=1687531403'
      type='text/css' media='all' />
   <link rel='stylesheet' id='swiper-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/plugins/elementor/assets/lib/swiper/css/swiper.min.css?ver=5.3.6'
      type='text/css' media='all' />
   <link rel='stylesheet' id='nice-select-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/css/nice-select.css?ver=1687531403'
      type='text/css' media='all' />
   <link rel='stylesheet' id='line-awesome-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/css/line-awesome.min.css?ver=1687531403'
      type='text/css' media='all' />
   <link rel='stylesheet' id='animate-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/css/animate.min.css?ver=1687531403'
      type='text/css' media='all' />
   <link rel='stylesheet' id='odometer-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/css/odometer.min.css?ver=1687531403'
      type='text/css' media='all' />
   <link rel='stylesheet' id='meanmenu-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/css/meanmenu.min.css?ver=1687531403'
      type='text/css' media='all' />
   <link rel='stylesheet' id='dark-theme-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/css/dark-theme.css?ver=1687531403'
      type='text/css' media='all' />
   <link rel='stylesheet' id='cribe-woocommerce-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/css/woocommerce.css?ver=6.2.2'
      type='text/css' media='all' />
   <link rel='stylesheet' id='cribe-header-style-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/css/header.css?ver=1687531403'
      type='text/css' media='all' />
   <link rel='stylesheet' id='cribe-main-style-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/css/style.css?ver=1687531403'
      type='text/css' media='all' />
   <style id='cribe-main-style-inline-css' type='text/css'>
      .wp-block-button .wp-block-button__link,
      .has-cyan-bluish-gray-background-color.has-cyan-bluish-gray-background-color,
      .page-links .current,
      .page-links .post-page-numbers:hover,
      .post-password-form input[type="submit"],
      .comment-navigation .nav-links .nav-previous a:hover,
      .comment-navigation .nav-links .nav-next a:hover,
      #comments .comment-list .comment-body .reply a:hover,
      .comment-respond .form-submit input,
      .pages-links .post-page-numbers.current,
      .pages-links .post-page-numbers:hover,
      .pages-links .post-page-numbers:focus,
      .single-footer-widget h3::before,
      .blog-sidebar .widget_search form button,
      .comments-title::before,
      .comment-respond .comment-reply-title::before,
      .search-form .search-submit,
      .widget-area .widget_categories ul li a::before,
      .blog-sidebar .widget ul li::before {
         background-color: #e31c25;
      }

      .wp-block-file .wp-block-file__button,
      .wp-block-tag-cloud a:hover,
      .wp-block-tag-cloud a:focus,
      .wp-block-search button {
         background-color: #e31c25 !important;
      }

      .sticky .post-content .title::before,
      .blog-details .blog-details-content code,
      .blog-details .blog-details-content ul a,
      .blog-details .blog-details-content .category li a:hover,
      .entry-meta li a:hover,
      .blog-details .blog-details-content ul.entry-meta li a:hover,
      #comments .comment-list .comment-body a,
      .wp-block-image figcaption a,
      .blog-details .blog-details-content p a,
      .blog-details .blog-details-content ol a,
      .wp-block-file a,
      table th a,
      .blog-details .blog-details-content kbd,
      .wp-caption .wp-caption-text a,
      .comments-area .comment-content code,
      .comments-area .comment-content kbd,
      table td a,
      table td a:hover,
      .blog-sidebar .widget ul li a:hover,
      .page-main-content .entry-content a,
      .page-main-content kbd,
      .page-main-content code,
      .learn-more-btn i,
      .learn-more-btn:hover,
      .single-blog-post .post-content .entry-meta li a:hover,
      .entry-meta li a:hover,
      .entry-meta li i,
      .wpcf7-list-item-label a,
      .sticky .learn-more-btn,
      a:hover,
      .widget_cribe_posts_thumbs .item .info .title a:hover,
      .widget-area .widget_tag_cloud .tagcloud a:hover,
      .blog-sidebar .tagcloud a:hover,
      .blog-sidebar .tagcloud a:focus,
      .single-blog-post .content .meta li a:hover,
      .single-footer-widget ul li a:hover,
      .sticky .post-content-two h3 a:hover,
      .copyright-area a:hover,
      .comment-respond .comment-reply-title #cancel-comment-reply-link,
      .single-resources-box .content .category a,
      .resources-box .content .category a,
      .blog-sidebar .wp-block-latest-comments .wp-block-latest-comments__comment-author:hover,
      .blog-sidebar .wp-block-latest-comments .wp-block-latest-comments__comment-link:hover,
      .footer-wrap.v1 .copyright-text a {
         color: #e31c25;
      }

      .sticky .post-content .entry-meta li a:hover,
      .is-style-outline .wp-block-button__link,
      .blog-details .blog-meta ul li a:hover,
      .blog-details .blog-meta ul li a:hover,
      table th a:hover {
         color: #e31c25 !important;
      }

      .widget-area .widget_tag_cloud .tagcloud a:hover,
      .blog-sidebar .tagcloud a:hover,
      .blog-sidebar .tagcloud a:focus {
         border-color: #e31c25;
      }

      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item a,
      .navbar-brand h2,
      .cyard-nav .navbar .navbar-nav .nav-item a,
      .cyard-nav .navbar .navbar-nav .nav-item .dropdown-toggle::before,
      .cyard-nav .navbar .others-option .option-item .social-links li a {
         color: #ffffff;
      }

      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item a:hover,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item a:focus,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item a.active,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item:hover a,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item:focus a,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item.active a,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li a:hover,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li a:focus,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li a.active,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item.dropdown-menu li .dropdown-menu li a:hover,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li a:focus,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li a.active,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li .dropdown-menu li a:hover,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li .dropdown-menu li a:focus,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li .dropdown-menu li a.active,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li a:hover,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li a:focus,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li a.active,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li a:hover,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li a:focus,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li a.active,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li a:hover,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li a:focus,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li a.active,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li a:hover,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li a:focus,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li a.active,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li.active a,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li.active a,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li .dropdown-menu li .dropdown-menu li.active a,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li .dropdown-menu li.active a,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li.active a,
      .nav-area .navbar-area .cyard-nav nav .navbar-nav .nav-item .dropdown-menu li.active a,
      .cyard-nav .navbar .navbar-nav .nav-item .dropdown-menu li.active a,
      .cyard-nav .navbar .navbar-nav .nav-item .dropdown-menu li a:hover,
      .cyard-nav .navbar .navbar-nav .nav-item:hover a::after,
      .cyard-nav .navbar .navbar-nav .nav-item:hover a::before,
      .cyard-nav .navbar .navbar-nav .nav-item.active a::after,
      .cyard-nav .navbar .others-option .option-item .social-links li a:hover,
      .cyard-responsive-nav .cyard-responsive-menu.mean-container .mean-nav ul li.active a,
      .cyard-nav .navbar .navbar-nav .nav-item .dropdown-menu li .dropdown-menu li a:hover {
         color: #E31C25;
      }

      .navbar-area.is-sticky {
         background-color: #01060F !important;
      }

      .single-footer-widget h3,
      .single-footer-widget .logo h2,
      .single-footer-widget .footer-contact-info li span,
      .copyright-area a {
         color: #ffffff;
      }

      .single-footer-widget .social-links li a {
         background-color: #ffffff;
      }

      .single-footer-widget p,
      .single-footer-widget ul li a,
      .single-footer-widget .footer-contact-info li,
      .single-footer-widget .footer-contact-info li a,
      .copyright-area,
      .footer-wrap.v2 .footer-top .single-footer-widget h3,
      .footer-wrap.v2 .footer-top .footer-widget-title h5,
      .footer-wrap.v2 .footer-top p,
      .footer-wrap.v2 .footer-top a,
      .footer-wrap.v2 .footer-top p,
      .footer-wrap.v2 .footer-top a,
      .footer-wrap.v2 .footer-top .newsletter-wrap .form-group button,
      .footer-wrap.v2 .footer-top .comp-location h6,
      .footer-wrap.v2 .footer-top .comp-location span,
      .footer-wrap.v2 .footer-top .comp-location p,
      .footer-wrap.v2 .footer-top .comp-location a,
      .footer-wrap.v2 .footer-bottom p,
      .footer-wrap.v2 .footer-bottom a,
      .footer-wrap.v2 .footer-top .social-profile ul li a i,
      .footer-wrap.v2 .footer-top .comp-location .loc-icon i {
         color: #ffffff;
      }

      .footer-wrap.v2 .footer-top {
         background-color: #01060f;
      }
   </style>
   <link rel='stylesheet' id='cribe-fonts-css'
      href='//fonts.googleapis.com/css?family=Ubuntu%3Aital%2Cwght%400%2C400%3B0%2C500%3B0%2C600%3B0%2C700%3B0%2C800%3B1%2C400%3B1%2C500%3B%7CTeko%3Aital%2Cwght%400%2C400%3B0%2C500%3B0%2C600%3B0%2C700%3B0%2C800&#038;display=swap&#038;ver=1.0.0'
      type='text/css' media='screen' />
   <link rel='stylesheet' id='elementor-icons-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/plugins/elementor/assets/lib/eicons/css/elementor-icons.min.css?ver=5.20.0'
      type='text/css' media='all' />
   <link rel='stylesheet' id='elementor-frontend-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/plugins/elementor/assets/css/frontend-lite.min.css?ver=3.13.2'
      type='text/css' media='all' />
   <link rel='stylesheet' id='elementor-post-25-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/uploads/elementor/css/post-25.css?ver=1684219028'
      type='text/css' media='all' />
   <link rel='stylesheet' id='font-awesome-5-all-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/plugins/elementor/assets/lib/font-awesome/css/all.min.css?ver=3.13.2'
      type='text/css' media='all' />
   <link rel='stylesheet' id='font-awesome-4-shim-css'
      href='https://themes.hibootstrap.com/cribe/wp-content/plugins/elementor/assets/lib/font-awesome/css/v4-shims.min.css?ver=3.13.2'
      type='text/css' media='all' />
   <link rel="preload" as="style"
      href="https://fonts.googleapis.com/css?family=Ubuntu%7CTeko&#038;display=swap&#038;ver=1683189145" />
   <link rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Ubuntu%7CTeko&#038;display=swap&#038;ver=1683189145" media="print"
      onload="this.media='all'">
   <noscript>
      <link rel="stylesheet"
         href="https://fonts.googleapis.com/css?family=Ubuntu%7CTeko&#038;display=swap&#038;ver=1683189145" />
   </noscript>
   <link rel='stylesheet' id='google-fonts-1-css'
      href='https://fonts.googleapis.com/css?family=Roboto%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CRoboto+Slab%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic&#038;display=auto&#038;ver=6.2.2'
      type='text/css' media='all' />
   <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
   <script src='https://themes.hibootstrap.com/cribe/wp-includes/js/jquery/jquery.min.js?ver=3.6.4' id='jquery-core-js'>
   </script>
   <script src='https://themes.hibootstrap.com/cribe/wp-includes/js/jquery/jquery-migrate.min.js?ver=3.4.0'
      id='jquery-migrate-js'></script>
   <script src='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/js/bootstrap.min.js?ver=1687531403'
      id='bootstrap-js'></script>
   <script
      src='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/js/jquery-magnific-popup.js?ver=1687531403'
      id='jquery-magnific-popup-js'></script>
   <script src='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/js/owl.carousel.js?ver=1687531403'
      id='owl-carousel-js'></script>
   <script src='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/js/swiper-min.js?ver=1687531403'
      id='swiper-js'></script>
   <script src='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/js/ajaxchimp.min.js?ver=1687531403'
      id='ajaxchimp-js'></script>
   <script
      src='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/js/jquery-nice-select.js?ver=1687531403'
      id='jquery-nice-select-js'></script>
   <script src='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/js/meanmenu.min.js?ver=1687531403'
      id='meanmenu-js'></script>
   <script src='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/js/odometer.min.js?ver=1687531403'
      id='odometer-js'></script>
   <script src='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/js/jquery.appear.js?ver=1687531403'
      id='jquery-appear-js'></script>
   <script src='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/js/mixitup.min.js?ver=1687531403'
      id='mixitup-js'></script>
   <script src='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/js/tweenmax.min.js?ver=1687531403'
      id='tweenmax-js'></script>
   <script src='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/js/main.js?ver=1687531403'
      id='cribe-main-js'></script>
   <script
      src='https://themes.hibootstrap.com/cribe/wp-content/themes/cribe/assets/js/comparison-slider.js?ver=1687531403'
      id='comparison-slider-js'></script>
   <script
      src='https://themes.hibootstrap.com/cribe/wp-content/plugins/elementor/assets/lib/font-awesome/js/v4-shims.min.js?ver=3.13.2'
      id='font-awesome-4-shim-js'></script>
   <link rel="https://api.w.org/" href="https://themes.hibootstrap.com/cribe/wp-json/" />
   <link rel="EditURI" type="application/rsd+xml" title="RSD"
      href="https://themes.hibootstrap.com/cribe/xmlrpc.php?rsd" />
   <link rel="wlwmanifest" type="application/wlwmanifest+xml"
      href="https://themes.hibootstrap.com/cribe/wp-includes/wlwmanifest.xml" />
   <meta name="generator" content="WordPress 6.2.2" />
   <meta name="generator" content="WooCommerce 7.7.0" />
   <link rel="canonical" href="https://themes.hibootstrap.com/cribe/our-classes/yoga-class/" />
   <link rel='shortlink' href='https://themes.hibootstrap.com/cribe/?p=113' />
   <link rel="alternate" type="application/json+oembed"
      href="https://themes.hibootstrap.com/cribe/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fthemes.hibootstrap.com%2Fcribe%2Four-classes%2Fyoga-class%2F" />
   <link rel="alternate" type="text/xml+oembed"
      href="https://themes.hibootstrap.com/cribe/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fthemes.hibootstrap.com%2Fcribe%2Four-classes%2Fyoga-class%2F&#038;format=xml" />
   <meta name="generator" content="Redux 4.3.20" />
   <noscript>
      <style>
         .woocommerce-product-gallery {
            opacity: 1 !important;
         }
      </style>
   </noscript>
   <meta name="generator"
      content="Elementor 3.13.2; features: e_dom_optimization, e_optimized_assets_loading, e_optimized_css_loading, a11y_improvements, additional_custom_breakpoints; settings: css_print_method-external, google_font-enabled, font_display-auto">
   <link rel="icon" href="Images/megah_holdings.png" sizes="32x32" />
   <link rel="icon" href="Images/megah_holdings.png"
      sizes="192x192" />
   <link rel="apple-touch-icon" href="Images/megah_holdings.png" />
   <meta name="msapplication-TileImage"
      content="Images/megah_holdings.png" />
   <style id="cribe_opt-dynamic-css" title="dynamic-css" class="redux-options-output">
      :root {
         --mainColor: #e31c25;
      }

      .section-title.style2 span:after,
      .section-title.style3 span:after,
      .section-title.style4 span:after,
      .content-title.style2 span:after,
      .content-title.style3 span:after,
      .content-title.style4 span:after,
      .pricing-card .pricing-header h5:after,
      .section-title.style5 span:after,
      .content-title.style5 span:after,
      .section-title.style6 span:after,
      .content-title.style6 span:after,
      .testimonial-wrap.style3 .client-info span:before,
      .hero-wrap.style4 .hero-content .hero-subhead:after,
      .counter-card-wrap .counter-card .counter-text .counter-num:before,
      .hero-wrap.style5 .hero-content .hero-subhead:after {
         background: #E02E2E;
      }

      :root {
         --yellowColor: #E5E53B;
      }

      body {
         font-family: Ubuntu;
         font-display: swap;
      }

      .h1,
      .h2,
      .h3,
      .h4,
      .h5,
      .h6,
      h1,
      h2,
      h3,
      h4,
      h5,
      h6 {
         font-family: Teko;
         font-display: swap;
      }
   </style>
</head>

<body
   class="class-template-default single single-class postid-113 theme-cribe woocommerce-no-js no-sidebar elementor-default elementor-kit-25 elementor-page elementor-page-113">
   <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none"
      style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
      <defs>
         <filter id="wp-duotone-dark-grayscale">
            <feColorMatrix color-interpolation-filters="sRGB" type="matrix"
               values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
            <feComponentTransfer color-interpolation-filters="sRGB">
               <feFuncR type="table" tableValues="0 0.49803921568627" />
               <feFuncG type="table" tableValues="0 0.49803921568627" />
               <feFuncB type="table" tableValues="0 0.49803921568627" />
               <feFuncA type="table" tableValues="1 1" />
            </feComponentTransfer>
            <feComposite in2="SourceGraphic" operator="in" />
         </filter>
      </defs>
   </svg>
   <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none"
      style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
      <defs>
         <filter id="wp-duotone-grayscale">
            <feColorMatrix color-interpolation-filters="sRGB" type="matrix"
               values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
            <feComponentTransfer color-interpolation-filters="sRGB">
               <feFuncR type="table" tableValues="0 1" />
               <feFuncG type="table" tableValues="0 1" />
               <feFuncB type="table" tableValues="0 1" />
               <feFuncA type="table" tableValues="1 1" />
            </feComponentTransfer>
            <feComposite in2="SourceGraphic" operator="in" />
         </filter>
      </defs>
   </svg>
   <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none"
      style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
      <defs>
         <filter id="wp-duotone-purple-yellow">
            <feColorMatrix color-interpolation-filters="sRGB" type="matrix"
               values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
            <feComponentTransfer color-interpolation-filters="sRGB">
               <feFuncR type="table" tableValues="0.54901960784314 0.98823529411765" />
               <feFuncG type="table" tableValues="0 1" />
               <feFuncB type="table" tableValues="0.71764705882353 0.25490196078431" />
               <feFuncA type="table" tableValues="1 1" />
            </feComponentTransfer>
            <feComposite in2="SourceGraphic" operator="in" />
         </filter>
      </defs>
   </svg>
   <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none"
      style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
      <defs>
         <filter id="wp-duotone-blue-red">
            <feColorMatrix color-interpolation-filters="sRGB" type="matrix"
               values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
            <feComponentTransfer color-interpolation-filters="sRGB">
               <feFuncR type="table" tableValues="0 1" />
               <feFuncG type="table" tableValues="0 0.27843137254902" />
               <feFuncB type="table" tableValues="0.5921568627451 0.27843137254902" />
               <feFuncA type="table" tableValues="1 1" />
            </feComponentTransfer>
            <feComposite in2="SourceGraphic" operator="in" />
         </filter>
      </defs>
   </svg>
   <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none"
      style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
      <defs>
         <filter id="wp-duotone-midnight">
            <feColorMatrix color-interpolation-filters="sRGB" type="matrix"
               values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
            <feComponentTransfer color-interpolation-filters="sRGB">
               <feFuncR type="table" tableValues="0 0" />
               <feFuncG type="table" tableValues="0 0.64705882352941" />
               <feFuncB type="table" tableValues="0 1" />
               <feFuncA type="table" tableValues="1 1" />
            </feComponentTransfer>
            <feComposite in2="SourceGraphic" operator="in" />
         </filter>
      </defs>
   </svg>
   <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none"
      style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
      <defs>
         <filter id="wp-duotone-magenta-yellow">
            <feColorMatrix color-interpolation-filters="sRGB" type="matrix"
               values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
            <feComponentTransfer color-interpolation-filters="sRGB">
               <feFuncR type="table" tableValues="0.78039215686275 1" />
               <feFuncG type="table" tableValues="0 0.94901960784314" />
               <feFuncB type="table" tableValues="0.35294117647059 0.47058823529412" />
               <feFuncA type="table" tableValues="1 1" />
            </feComponentTransfer>
            <feComposite in2="SourceGraphic" operator="in" />
         </filter>
      </defs>
   </svg>
   <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none"
      style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
      <defs>
         <filter id="wp-duotone-purple-green">
            <feColorMatrix color-interpolation-filters="sRGB" type="matrix"
               values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
            <feComponentTransfer color-interpolation-filters="sRGB">
               <feFuncR type="table" tableValues="0.65098039215686 0.40392156862745" />
               <feFuncG type="table" tableValues="0 1" />
               <feFuncB type="table" tableValues="0.44705882352941 0.4" />
               <feFuncA type="table" tableValues="1 1" />
            </feComponentTransfer>
            <feComposite in2="SourceGraphic" operator="in" />
         </filter>
      </defs>
   </svg>
   <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none"
      style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
      <defs>
         <filter id="wp-duotone-blue-orange">
            <feColorMatrix color-interpolation-filters="sRGB" type="matrix"
               values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
            <feComponentTransfer color-interpolation-filters="sRGB">
               <feFuncR type="table" tableValues="0.098039215686275 1" />
               <feFuncG type="table" tableValues="0 0.66274509803922" />
               <feFuncB type="table" tableValues="0.84705882352941 0.41960784313725" />
               <feFuncA type="table" tableValues="1 1" />
            </feComponentTransfer>
            <feComposite in2="SourceGraphic" operator="in" />
         </filter>
      </defs>
   </svg>

   <!--HEADER-->
   	<!--HEADER-->
	<header class="header-area v1 ">
		<div class="container pad-wrap">
			<div class="row align-items-center d-lock">
				<div class="col-lg-1 col-md-0 col-5 mpx-0 col-block">
					<div class="logo v1">
						<img src="Images/megah_holdings.png" class="navbar-brand">
						</a>
					</div>
				</div>
				<div class="col-lg-11 col-md-12 col-7 col-pad">
					<div class="top-header-area">
						<div class="container">
							<div class="row align-items-center">
								<div class="col-lg-6 col-md-12">
									<ul class="top-header-contact-info">
										<li>We offer you the best amenities for your Sports</li>
									</ul>
								</div>
								<div class="col-lg-6 col-md-12">
									<ul class="top-header-right-side">

										<li> <i class="las la-map-marker-alt"></i> Address: Jalan Awan Biru Taman Yarl, Old Road, 58200, Klang.</li>
										<li> <a href="tel:2132008224"><i class="las la-phone"></i> 03-20008224</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>

					<div class="navbar-area  ">
						<div class="cyard-responsive-nav  ">
							<div class="container">
								<div class="cyard-responsive-menu">\
									<div class="logo">
									</div>
								</div>
							</div>
						</div>
						<div class="cyard-nav  ">
							<div class="container">
								<nav class="navbar navbar-expand-md navbar-light">
									<a class="navbar-brand">
										<h2>Sports Complex</h2>
									</a>

									<div class="collapse navbar-collapse mean-menu">

										<!--HOME-->
										<ul id="menu-primary-menu" class="navbar-nav ml-auto">
											<li id="menu-item-1671"
												class="menu-item menu-item-type-custom menu-item-object-custom current-menu-ancestor current-menu-parent menu-item-has-children dropdown  menu-item-1671 nav-item">
												<a title="Home" class="nav-link" href="home.jsp" >Home</a>
											</li>

											<!--SPORTS-->
											<li id="menu-item-44"
												class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children dropdown menu-item-44 nav-item">
												<a title="Courts" class="nav-link" href="courts.html" >Courts</a>
											</li>

											<!--BOOKING-->
											<li id="menu-item-43"
												class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children dropdown menu-item-43 nav-item active">
												<a title="Booking" class="nav-link" href="booking.jsp" >Booking</a>
											</li>

											<!--CONTACT US-->
											<li id="menu-item-39"
												class="menu-item menu-item-type-post_type menu-item-object-page menu-item-39 nav-item">
												<a title="Contact Us" class="nav-link" target="_blank" href="https://wa.link/0vf8ad" >Contact Us</a>
											</li>
										</ul>

										<!--SIGN IN BUTTON-->
										<div class="others-option">
											<div class="option-item">
												<a class="btn v1"
													href="LogoutServlet">
													<span>Sign out</span>
												</a> </div>
										</div>
									</div>
								</nav>
							</div>
						</div>
						<div class="others-option-for-responsive  ">
							<div class="container">
								<div class="dot-menu">
									<div class="inner">
										<div class="circle circle-one"></div>
										<div class="circle circle-two"></div>
										<div class="circle circle-three"></div>
									</div>
								</div>
								<div class="container">
									<div class="option-inner">
										<div class="others-option">
											<div class="option-item">
												<a class="btn v1" style="color : #e31c25" target="_blank"
													href="signIn.html">
													<span>Sign In</span>
												</a> </div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</header>


   <div class="breadcrumb-wrap bg-f br-bg-2"
      style="background-image:url(https://themes.hibootstrap.com/cribe/wp-content/uploads/2021/09/breadcrumb-2.jpg);">
      <div class="container">
         <div class="section_subtext v3 trans_text">
            <span>Booking Form</span>
         </div>
         <div class="overlay bg-charcole op-8"></div>
         <div class="breadcrumb-title">
            <h2>Book <span>Now</span></h2>
         </div>
      </div>
   </div>
   <div class="class-details-area ">
      <div data-elementor-type="wp-post" data-elementor-id="113" class="elementor elementor-113">
         <!--<div class="elementor-section elementor-top-section elementor-element elementor-element-1b24453 elementor-section-full_width elementor-section-height-default elementor-section-height-default" data-id="1b24453" data-element_type="section">
               <div class="elementor-container elementor-column-gap-no">
                  <div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-8350cc8" data-id="8350cc8" data-element_type="column">
                     <div class="elementor-widget-wrap elementor-element-populated">
                        <div class="elementor-element elementor-element-f6d854d elementor-widget elementor-widget-Feature Wrap" data-id="f6d854d" data-element_type="widget" data-widget_type="Feature Wrap.default">
                           <div class="elementor-widget-container">
                              <section class="feature-wrap v3 section-padding">
                                  MASUK CODE KOSONG DEKAT SINI 
                              </section>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>-->
         <div
            class="elementor-section elementor-top-section elementor-element elementor-element-77e0f7b elementor-section-full_width elementor-section-height-default elementor-section-height-default p-5"
            data-id="77e0f7b" data-element_type="section">
            <div class="elementor-container elementor-column-gap-no">
               <div
                  class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-fa26170"
                  data-id="fa26170" data-element_type="column">
                  <div class="elementor-widget-wrap elementor-element-populated">
                     <div
                        class="elementor-element elementor-element-dd757ea elementor-widget elementor-widget-Cribe_Class_Info"
                        data-id="dd757ea" data-element_type="widget" data-widget_type="Cribe_Class_Info.default">
                        <div class="elementor-widget-container">
                           <div class="class-info-wrap">
                              <div class="container">
                                 <div class="row">
                                    <div class="col-lg-12">
                                       <div class="class-details-table">
                                          <table class="table">
                                             <thead>
                                                <tr>
                                                   <th scope="col">Sports Court</th>
                                                   <th scope="col">Hall</th>
                                                   <!--<th scope="col">Difficulty</th>
                                                      <th scope="col">Beneficiary</th>
                                                      <th scope="col">Purpose</th>-->
                                                </tr>
                                             </thead>
                                             <tbody>
                                                <tr>
                                                   <td>Badminton</td>
                                                   <!--Basketball,Volleyball hall (Block A,B,C,D) -->
                                                   <td>A,B,C</td>
                                                   <!--<td>Medium</td>
                                                      <td>All</td>
                                                      <td>
                                                         Lorem ipsum dolor sit amet.
                                                      </td> -->
                                                </tr>
                                                <tr>
                                                   <td>Futsal</td>
                                                   <!--Basketball,Volleyball hall (Block A,B,C,D) -->
                                                   <td>D,E,F</td>
                                                   <!--<td>Medium</td>
                                                      <td>All</td>
                                                      <td>
                                                         Lorem ipsum dolor sit amet.
                                                      </td> -->
                                                </tr>
                                                <tr>
                                                   <td>Basketball</td>
                                                   <td>G,H,I</td>
                                                   <!--<td>Highest</td>
                                                      <td>All</td>
                                                      <td>
                                                         Lorem ipsum dolor sit amet.
                                                      </td>-->
                                                </tr>
                                                <tr>
                                                   <td>Volleyball</td>
                                                   <td>J,K,L</td>
                                                   <!--<td>Premium</td>
                                                      <td>All</td>
                                                      <td>
                                                         Lorem ipsum dolor sit amet.
                                                      </td>
                                                   </tr>
                                                   <tr>
                                                      <td>20 Minutes</td>
                                                      <td>Zumba, Spin, Cardio Sculpt, Abs.</td>
                                                      <td>Primary</td>
                                                      <td>All</td>
                                                      <td>
                                                         Lorem ipsum dolor sit amet.
                                                      </td>
                                                   </tr>-->
                                             </tbody>
                                          </table>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!--<div class="elementor-section elementor-top-section elementor-element elementor-element-d0b0231 elementor-section-full_width elementor-section-height-default elementor-section-height-default" data-id="d0b0231" data-element_type="section">
               <div class="elementor-container elementor-column-gap-no">
                  <div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-3de9ea7" data-id="3de9ea7" data-element_type="column">
                     <div class="elementor-widget-wrap elementor-element-populated">
                        <div class="elementor-element elementor-element-b30c1cb elementor-widget elementor-widget-Join_Wrap" data-id="b30c1cb" data-element_type="widget" data-widget_type="Join_Wrap.default">
                           <div class="elementor-widget-container">
                              <section class="join-class-wrap bmi-wrap v1 section-padding">
                                  MASUK CODE KOSONG DEKAT SINI 
                              </section>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>-->
         
        <sql:query var="resultHall" dataSource="${myDatasource}">
            SELECT * FROM APP.HALL
        </sql:query>
            
        <sql:query var="resultGame" dataSource="${myDatasource}">
            SELECT * FROM APP.GAME
        </sql:query>
            
        <sql:query var="resultCourt" dataSource="${myDatasource}">
            SELECT * FROM APP.COURT
        </sql:query>    
            
         <div
            class="elementor-section elementor-top-section elementor-element elementor-element-404cb4a elementor-section-full_width elementor-section-height-default elementor-section-height-default"
            data-id="404cb4a" data-element_type="section">
            <div class="elementor-container elementor-column-gap-no">
               <div
                  class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-2ad51d9"
                  data-id="2ad51d9" data-element_type="column">
                  <div class="elementor-widget-wrap elementor-element-populated">
                     <div
                        class="elementor-element elementor-element-6a8b1a0 elementor-widget elementor-widget-TimeTable-widget"
                        data-id="6a8b1a0" data-element_type="widget" data-widget_type="TimeTable-widget.default">
                        <div class="elementor-widget-container">
                           <!--<section class="time-table-banner bg-f tb-bg-1" style="background-image:url(https://themes.hibootstrap.com/cribe/wp-content/uploads/2021/09/banner-2.jpg);">-->
                           <section class="contact-wrap">
                              <div class="container">
                                 <div class="section-title-contact">
                                    <h2 class="title">Booking Form</h2>
                                    <!--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit, libero harum cum numquam repellendus autem recusandae voluptatem</p>-->
                                 </div> 
                                 <div class="contact-form">
                                    <div class="wpcf7 no-js" id="wpcf7-f392-p23-o1" lang="en-US" dir="ltr">
                                        
                                        <% String message = (String)request.getAttribute("errMessage");%>  
                                       <form action="BookingServlet" method="post" class="init"
                                          aria-label="Contact form"
                                          data-status="init">
                                          <div style="display: none;">
                                             <input type="hidden" name="_wpcf7" value="392" />
                                             <input type="hidden" name="_wpcf7_version" value="5.7.6" />
                                             <input type="hidden" name="_wpcf7_locale" value="en_US" />
                                             <input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f392-p23-o1" />
                                             <input type="hidden" name="_wpcf7_container_post" value="23" />
                                             <input type="hidden" name="_wpcf7_posted_data_hash" value="" />
                                          </div>
                                          <div class="row">
                                             <div class="col-lg-6 col-md-6">
                                                <div class="form-group">
                                                   <label>Team Name*</label>
                                                   <span data-name="your-name"><input
                                                         size="40"
                                                         class="form-control"
                                                         aria-required="true" aria-invalid="false" value="" type="text"
                                                         name="formTeamName" placeholder="Enter Team Name" required></span>
                                                </div>
                                             </div>
                                              <div class="col-lg-6 col-md-6">
                                                <div class="form-group">
                                                   <label>Phone Number (+60)*</label>
                                                   <span data-name="your-subject"><input
                                                         size="40"
                                                         class="form-control"
                                                         aria-required="true" aria-invalid="false" type="text"
                                                         name="formPhoneNo" placeholder="Enter Phone Number" required></span>
                                                </div>
                                             </div> 
                                             
                                             <div class="col-lg-6 col-md-6">
                                                <div class="form-group">
                                                   <label>Booking Date*</label>
                                                   <span data-name="your-number"><input
                                                         class="form-control"
                                                         type="date"
                                                         name="formBookingDate" required></span>
                                                </div>
                                             </div>
                                             <div class="col-lg-6 col-md-6">
                                                <div class="form-group">
                                                   <label>Booking Time*</label>
                                                   <span data-name="your-subject"><input
                                                         size="40"
                                                         class="form-control"
                                                         aria-required="true" aria-invalid="false" type="time"
                                                         name="formBookingTime" required></span>
                                                </div>
                                             </div>        
                                              <div class="col-lg-6 col-md-6">
                                                <div class="form-group">
                                                   <label for="gameType">Game Type*</label>
                                                   <select id="gameType" name="formGameType" style="padding-top:20px; padding-bottom: 20px;" class="form" required>
                                                      <c:forEach var="row" items="${resultGame.rowsByIndex}">
                                                         <option value="${row[1]}">${row[1]}</option>
                                                      </c:forEach>
                                                   </select>
                                                </div>
                                             </div>
                                            <div class="col-lg-6 col-md-6">
                                               <div class="form-group">
                                                  <label for="HallName">Hall*</label>
                                                  <select id="HallName" name="formHallName" class="form" required>
                                                    <c:forEach var="row" items="${resultHall.rowsByIndex}">
                                                        <option value="${row[1]}">${row[1]}</option>
                                                    </c:forEach>
                                                  </select>
                                               </div>
                                            </div>
                                             <div class="col-lg-6 col-md-6">
                                               <div class="form-group">
                                                  <label for="courtName">Court*</label>
                                                  <select id="courtName" name="formCourtName" class="form" required>
                                                    <c:forEach var="row" items="${resultCourt.rowsByIndex}">
                                                        <option value="${row[1]}">${row[1]}</option>
                                                    </c:forEach>
                                                  </select>
                                               </div>
                                            </div>
                                              <br>
                                             <div class="col-lg-7 col-md-6">
                                                <input type="submit" class="default-btn btn v7"
                                                                value="Submit">
                                             </div>
                                          </div>
                                       </form>
                                    </div>
                                 </div>
                              </div>
                           </section>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div
            class="elementor-section elementor-top-section elementor-element elementor-element-03b1efb elementor-section-full_width elementor-section-height-default elementor-section-height-default"
            data-id="03b1efb" data-element_type="section">
            <div class="elementor-container elementor-column-gap-no">
               <div
                  class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-e0c284a"
                  data-id="e0c284a" data-element_type="column">
                  <div class="elementor-widget-wrap elementor-element-populated">
                     <div
                        class="elementor-element elementor-element-4ff2c55 elementor-widget elementor-widget-Classes Area"
                        data-id="4ff2c55" data-element_type="widget" data-widget_type="Classes Area.default">
                        <div class="elementor-widget-container">
                           <section class="related-class-wrap section-padding_v4">
                              <!-- MASUK CODE SINI-->
                           </section>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
    <script type="text/javascript">
        var msg = "<%=message%>";
            if (msg !== "null") {                
                alert(msg);
        }
    </script>
   <!--FOOTER-->
   <footer class="footer-wrap v1 ">
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="single-footer-widget colfooter-s4-column widget_cribe_footer4_about_info">
						<h3 class="widget_title">Megah Holdings</h3>
						<div class="contact-info-wrap2">
							<div class="contact-info-item">
								<span class="contact-icon">
									<i class="las la-phone"></i>
								</span>
								<div class="contact-info">
									<h3>If You Have Any Questions, Feel Free To Contact Us <a
											target="_blank" href="https://wa.link/0vf8ad">03-20008224</a></h3>
								</div>
							</div>
							<div class="contact-info-item">
								<span class="contact-icon">
									<i class="las la-comment-dots"></i>
								</span>
								<div class="contact-info">
									<h3> Stay In Touch </h3>
									<a href="#"><span
											class="__cf_email__"
											data-cfemail="b5d6dadbc1d4d6c1dcdbd3daf5d6c7dcd7d09bd6dad8">[email&#160;protected]</span></a>
								</div>
							</div>
						</div>
					</div>
					<div class="single-footer-widget colfooter-s4-column widget_nav_menu">
						<h3 class="widget_title">Quick Links</h3>
						<div class="menu-quick-links-container">
							<ul id="menu-quick-links" class="menu">
								<li id="menu-item-1606"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1606"><a
										href="booking.jsp">Booking</a></li>
							</ul>
						</div>
					</div>
					<div class="single-footer-widget colfooter-s4-column widget_nav_menu">
						<h3 class="widget_title">Useful Links</h3>
						<div class="menu-useful-links-container">
							<ul id="menu-useful-links" class="menu">
								<li id="menu-item-940"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-940"><a
										href="courts.html">Courts</a></li>
								<li id="menu-item-944"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-944"><a
										href="schedule.html"></a></li>
							</ul>
						</div>
					</div>
					<div class="single-footer-widget colfooter-s4-column widget_cribe_footer4_follow_info">
						<h3 class="widget_title">Follow Us</h3>
						<p class="comp-desc">Below are our social medias</p>
						<ul class="social-profile style2">
							<li><a href="#" target="_blank"><i class='lab la-facebook-f'></i></a></li>
							<li><a href="#" target="_blank"><i class='lab la-twitter'></i></a></li>
							<li><a href="#" target="_blank"><i class='lab la-instagram'></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="copyright-text">
							<p>
								&copy; 2023 | MEGAH HOLDINGS SPORTS COMPLEX </p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<a id="back-to-top"></a>
	<a href="#" class="back-to-top"><i class="las la-arrow-up"></i></a>
   <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
   <script>
      ;
      (function ($) {
         "use strict";
         $(document).ready(function () {
            // MAILCHIMP
            if ($(".mailchimp").length > 0) {
               $(".mailchimp").ajaxChimp({
                  callback: mailchimpCallback,
                  url: "https://envytheme.us20.list-manage.com/subscribe/post?u=60e1ffe2e8a68ce1204cd39a5&amp;id=42d6d188d9  "
               });
            }
            $(".memail").on("focus", function () {
               $(".mchimp-errmessage").fadeOut();
               $(".mchimp-sucmessage").fadeOut();
            });
            $(".memail").on("keydown", function () {
               $(".mchimp-errmessage").fadeOut();
               $(".mchimp-sucmessage").fadeOut();
            });
            $(".memail").on("click", function () {
               $(".memail").val("");
            });

            function mailchimpCallback(resp) {
               if (resp.result === "success") {
                  $(".mchimp-sucmessage").html(resp.msg).fadeIn(1000);
                  $(".mchimp-sucmessage").fadeOut(500);
               } else if (resp.result === "error") {
                  $(".mchimp-errmessage").html(resp.msg).fadeIn(1000);
               }
            }
         });
      })(jQuery)
   </script>
   <script type="text/javascript">
      (function () {
         var c = document.body.className;
         c = c.replace(/woocommerce-no-js/, 'woocommerce-js');
         document.body.className = c;
      })();
   </script>
   <script
      src='https://themes.hibootstrap.com/cribe/wp-content/plugins/yith-woocommerce-wishlist/assets/js/jquery.selectBox.min.js?ver=1.2.0'
      id='jquery-selectBox-js'></script>
   <script
      src='//themes.hibootstrap.com/cribe/wp-content/plugins/woocommerce/assets/js/prettyPhoto/jquery.prettyPhoto.min.js?ver=3.1.6'
      id='prettyPhoto-js'></script>
   <script type='text/javascript' id='jquery-yith-wcwl-js-extra'>
      /* <![CDATA[ */
      var yith_wcwl_l10n = {
         "ajax_url": "\/cribe\/wp-admin\/admin-ajax.php",
         "redirect_to_cart": "no",
         "yith_wcwl_button_position": "after_add_to_cart",
         "multi_wishlist": "",
         "hide_add_button": "1",
         "enable_ajax_loading": "",
         "ajax_loader_url": "https:\/\/themes.hibootstrap.com\/cribe\/wp-content\/plugins\/yith-woocommerce-wishlist\/assets\/images\/ajax-loader-alt.svg",
         "remove_from_wishlist_after_add_to_cart": "1",
         "is_wishlist_responsive": "1",
         "time_to_close_prettyphoto": "3000",
         "fragments_index_glue": ".",
         "reload_on_found_variation": "1",
         "mobile_media_query": "768",
         "labels": {
            "cookie_disabled": "We are sorry, but this feature is available only if cookies on your browser are enabled.",
            "added_to_cart_message": "<div class=\"woocommerce-notices-wrapper\"><div class=\"woocommerce-message\" role=\"alert\">Product added to cart successfully<\/div><\/div>"
         },
         "actions": {
            "add_to_wishlist_action": "add_to_wishlist",
            "remove_from_wishlist_action": "remove_from_wishlist",
            "reload_wishlist_and_adding_elem_action": "reload_wishlist_and_adding_elem",
            "load_mobile_action": "load_mobile",
            "delete_item_action": "delete_item",
            "save_title_action": "save_title",
            "save_privacy_action": "save_privacy",
            "load_fragments": "load_fragments"
         },
         "nonce": {
            "add_to_wishlist_nonce": "b56e538a86",
            "remove_from_wishlist_nonce": "88f5d7e071",
            "reload_wishlist_and_adding_elem_nonce": "5f9a4e412a",
            "load_mobile_nonce": "7906ae2977",
            "delete_item_nonce": "89b4b94bec",
            "save_title_nonce": "8731d1e5fa",
            "save_privacy_nonce": "c7ee2a5e0c",
            "load_fragments_nonce": "bf3228e8c5"
         },
         "redirect_after_ask_estimate": "",
         "ask_estimate_redirect_url": "https:\/\/themes.hibootstrap.com\/cribe"
      };
      /* ]]> */
   </script>
   <script
      src='https://themes.hibootstrap.com/cribe/wp-content/plugins/yith-woocommerce-wishlist/assets/js/jquery.yith-wcwl.min.js?ver=3.20.0'
      id='jquery-yith-wcwl-js'></script>
   <script
      src='https://themes.hibootstrap.com/cribe/wp-content/plugins/contact-form-7/includes/swv/js/index.js?ver=5.7.6'
      id='swv-js'></script>
   <script type='text/javascript' id='contact-form-7-js-extra'>
      /* <![CDATA[ */
      var wpcf7 = {
         "api": {
            "root": "https:\/\/themes.hibootstrap.com\/cribe\/wp-json\/",
            "namespace": "contact-form-7\/v1"
         }
      };
      /* ]]> */
   </script>
   <script src='https://themes.hibootstrap.com/cribe/wp-content/plugins/contact-form-7/includes/js/index.js?ver=5.7.6'
      id='contact-form-7-js'></script>
   <script
      src='https://themes.hibootstrap.com/cribe/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min.js?ver=2.7.0-wc.7.7.0'
      id='jquery-blockui-js'></script>
   <script type='text/javascript' id='wc-add-to-cart-js-extra'>
      /* <![CDATA[ */
      var wc_add_to_cart_params = {
         "ajax_url": "\/cribe\/wp-admin\/admin-ajax.php",
         "wc_ajax_url": "\/cribe\/?wc-ajax=%%endpoint%%",
         "i18n_view_cart": "View cart",
         "cart_url": "https:\/\/themes.hibootstrap.com\/cribe\/cart\/",
         "is_cart": "",
         "cart_redirect_after_add": "no"
      };
      /* ]]> */
   </script>
   <script
      src='https://themes.hibootstrap.com/cribe/wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart.min.js?ver=7.7.0'
      id='wc-add-to-cart-js'></script>
   <script
      src='https://themes.hibootstrap.com/cribe/wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min.js?ver=2.1.4-wc.7.7.0'
      id='js-cookie-js'></script>
   <script type='text/javascript' id='woocommerce-js-extra'>
      /* <![CDATA[ */
      var woocommerce_params = {
         "ajax_url": "\/cribe\/wp-admin\/admin-ajax.php",
         "wc_ajax_url": "\/cribe\/?wc-ajax=%%endpoint%%"
      };
      /* ]]> */
   </script>
   <script
      src='https://themes.hibootstrap.com/cribe/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min.js?ver=7.7.0'
      id='woocommerce-js'></script>
   <script type='text/javascript' id='wc-cart-fragments-js-extra'>
      /* <![CDATA[ */
      var wc_cart_fragments_params = {
         "ajax_url": "\/cribe\/wp-admin\/admin-ajax.php",
         "wc_ajax_url": "\/cribe\/?wc-ajax=%%endpoint%%",
         "cart_hash_key": "wc_cart_hash_09ad37cc3ba223e064b2c42778e6d5e3",
         "fragment_name": "wc_fragments_09ad37cc3ba223e064b2c42778e6d5e3",
         "request_timeout": "5000"
      };
      /* ]]> */
   </script>
   <script
      src='https://themes.hibootstrap.com/cribe/wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.min.js?ver=7.7.0'
      id='wc-cart-fragments-js'></script>
   <script src='https://themes.hibootstrap.com/cribe/wp-includes/js/imagesloaded.min.js?ver=4.1.4' id='imagesloaded-js'>
   </script>
   <script src='https://themes.hibootstrap.com/cribe/wp-includes/js/masonry.min.js?ver=4.2.2' id='masonry-js'></script>
   <script
      src='https://themes.hibootstrap.com/cribe/wp-content/plugins/elementor/assets/js/webpack.runtime.min.js?ver=3.13.2'
      id='elementor-webpack-runtime-js'></script>
   <script
      src='https://themes.hibootstrap.com/cribe/wp-content/plugins/elementor/assets/js/frontend-modules.min.js?ver=3.13.2'
      id='elementor-frontend-modules-js'></script>
   <script
      src='https://themes.hibootstrap.com/cribe/wp-content/plugins/elementor/assets/lib/waypoints/waypoints.min.js?ver=4.0.2'
      id='elementor-waypoints-js'></script>
   <script src='https://themes.hibootstrap.com/cribe/wp-includes/js/jquery/ui/core.min.js?ver=1.13.2'
      id='jquery-ui-core-js'></script>
   <script id='elementor-frontend-js-before'>
      var elementorFrontendConfig = {
         "environmentMode": {
            "edit": false,
            "wpPreview": false,
            "isScriptDebug": false
         },
         "i18n": {
            "shareOnFacebook": "Share on Facebook",
            "shareOnTwitter": "Share on Twitter",
            "pinIt": "Pin it",
            "download": "Download",
            "downloadImage": "Download image",
            "fullscreen": "Fullscreen",
            "zoom": "Zoom",
            "share": "Share",
            "playVideo": "Play Video",
            "previous": "Previous",
            "next": "Next",
            "close": "Close"
         },
         "is_rtl": false,
         "breakpoints": {
            "xs": 0,
            "sm": 480,
            "md": 768,
            "lg": 1025,
            "xl": 1440,
            "xxl": 1600
         },
         "responsive": {
            "breakpoints": {
               "mobile": {
                  "label": "Mobile Portrait",
                  "value": 767,
                  "default_value": 767,
                  "direction": "max",
                  "is_enabled": true
               },
               "mobile_extra": {
                  "label": "Mobile Landscape",
                  "value": 880,
                  "default_value": 880,
                  "direction": "max",
                  "is_enabled": false
               },
               "tablet": {
                  "label": "Tablet Portrait",
                  "value": 1024,
                  "default_value": 1024,
                  "direction": "max",
                  "is_enabled": true
               },
               "tablet_extra": {
                  "label": "Tablet Landscape",
                  "value": 1200,
                  "default_value": 1200,
                  "direction": "max",
                  "is_enabled": false
               },
               "laptop": {
                  "label": "Laptop",
                  "value": 1366,
                  "default_value": 1366,
                  "direction": "max",
                  "is_enabled": false
               },
               "widescreen": {
                  "label": "Widescreen",
                  "value": 2400,
                  "default_value": 2400,
                  "direction": "min",
                  "is_enabled": false
               }
            }
         },
         "version": "3.13.2",
         "is_static": false,
         "experimentalFeatures": {
            "e_dom_optimization": true,
            "e_optimized_assets_loading": true,
            "e_optimized_css_loading": true,
            "a11y_improvements": true,
            "additional_custom_breakpoints": true,
            "landing-pages": true
         },
         "urls": {
            "assets": "https:\/\/themes.hibootstrap.com\/cribe\/wp-content\/plugins\/elementor\/assets\/"
         },
         "swiperClass": "swiper-container",
         "settings": {
            "page": [],
            "editorPreferences": []
         },
         "kit": {
            "active_breakpoints": ["viewport_mobile", "viewport_tablet"],
            "global_image_lightbox": "yes",
            "lightbox_enable_counter": "yes",
            "lightbox_enable_fullscreen": "yes",
            "lightbox_enable_zoom": "yes",
            "lightbox_enable_share": "yes",
            "lightbox_title_src": "title",
            "lightbox_description_src": "description"
         },
         "post": {
            "id": 113,
            "title": "Yoga%20Class%20%E2%80%93%20Cribe",
            "excerpt": "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor Invidunt.",
            "featuredImage": "https:\/\/themes.hibootstrap.com\/cribe\/wp-content\/uploads\/2022\/04\/class-22.jpg"
         }
      };
   </script>
   <script src='https://themes.hibootstrap.com/cribe/wp-content/plugins/elementor/assets/js/frontend.min.js?ver=3.13.2'
      id='elementor-frontend-js'></script>
      
</body>

</html>
