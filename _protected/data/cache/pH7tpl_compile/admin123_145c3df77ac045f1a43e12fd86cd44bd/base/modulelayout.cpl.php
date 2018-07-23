<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2018-07-16 20:54:36
Compiled file from: /srv/disk3/2743784/www/carametade.tk/templates/themes/base/tpl/layout.tpl
Template Engine: PH7Tpl version 1.3.0 by Pierre-Henry Soria
*/
/***************************************************************************
 *     pH7CMS Social Dating CMS | Pierre-Henry Soria
 *               --------------------
 * @since      Mon Mar 21 2011
 * @author     SORIA Pierre-Henry
 * @email      hello@ph7cms.com
 * @link       http://ph7cms.com
 * @copyright  (c) 2011-2018, Pierre-Henry Soria. All Rights Reserved.
 * @license    Creative Commons Attribution 3.0 License - http://creativecommons.org/licenses/by/3.0/
 ***************************************************************************/
?><?php $design->htmlHeader() ;?><html lang="<?php echo $config->values['language']['lang'] ;?>"> <head> <meta charset="<?php echo $config->values['language']['charset'] ;?>" /> <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1" /> <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /> <title><?php if($page_title) { ?><?php echo $this->str->escape($this->str->upperFirst($page_title), true) ;?> - <?php echo $site_name; ?><?php } else { ?><?php echo $site_name; ?> - <?php echo $slogan; ?><?php } ?></title> <meta name="description" content="<?php echo $this->str->escape($this->str->upperFirst($meta_description), true) ;?>" /> <meta name="keywords" content="<?php echo $this->str->escape($meta_keywords, true) ;?>" /> <meta name="robots" content="<?php echo $meta_robots; ?>" /> <link rel="icon" href="<?php echo $this->registry->url_relative?>favicon.ico" /> <link rel="canonical" href="<?php echo $this->httpRequest->currentUrl()?>" /> <link rel="author" href="<?php echo $this->registry->site_url?>humans.txt" /> <?php if(!$is_user_auth) { ?><?php $design->regionalUrls() ;?><?php } ?> <meta name="author" content="<?php echo $meta_author; ?>" /> <meta name="copyright" content="<?php echo $meta_copyright; ?>" /> <meta name="category" content="<?php echo $meta_category; ?>" /> <meta name="rating" content="<?php echo $meta_rating; ?>" /> <meta name="distribution" content="<?php echo $meta_distribution; ?>" /> <?php if($header) { ?><?php echo $header; ?><?php } ?> <meta name="creator" content="pH7CMS, Pierre-Henry Soria - <?php echo self::SOFTWARE_WEBSITE?>" /> <meta name="designer" content="pH7CMS, Pierre-Henry Soria - <?php echo self::SOFTWARE_WEBSITE?>" /> <meta name="generator" content="<?php echo self::SOFTWARE_NAME?> <?php echo self::SOFTWARE_VERSION?>" /> <?php $design->externalCssFile(PH7_URL_STATIC. PH7_CSS . 'js/jquery/smoothness/jquery-ui.css') ;?> <?php $design->externalCssFile(PH7_URL_STATIC. PH7_CSS . 'font-awesome.css') ;?> <?php $design->staticFiles('css', PH7_STATIC . PH7_CSS . 'js/jquery/box/', 'box.css') ;?> <?php $design->staticFiles('css', PH7_STATIC . PH7_CSS, 'bootstrap.css,bootstrap_customize.css,animate.css') ;?> <?php $design->staticFiles('css', PH7_LAYOUT . PH7_TPL . PH7_TPL_NAME . PH7_SH . PH7_CSS, 'common.css,style.css,layout.css,menu.css,like.css,color.css,form.css,js/jquery/rating.css,js/jquery/apprise.css,js/jquery/tipTip.css') ;?> <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans" /> <?php $design->externalCssFile(PH7_RELATIVE.'asset/css/color.css') ;?> <?php $design->externalCssFile(PH7_RELATIVE.'asset/css/style.css') ;?> <?php if($is_user_auth AND $is_im_enabled) { ?> <?php $design->staticFiles('css', PH7_LAYOUT . PH7_SYS . PH7_MOD . 'im/' . PH7_TPL . PH7_DEFAULT_THEME . PH7_SH . PH7_CSS, 'messenger.css') ;?> <?php } ?> <?php $design->css() ;?> <?php $this->designModel->files('css') ;?> <script>var pH7Url={base:'<?php echo $this->registry->site_url?>',relative:'<?php echo $this->registry->url_relative?>',tpl:'<?php echo PH7_URL_TPL . PH7_TPL_NAME . PH7_SH?>',stic:'<?php echo PH7_URL_STATIC?>',tplImg:'<?php echo PH7_URL_TPL . PH7_TPL_NAME . PH7_SH . PH7_IMG?>',tplJs:'<?php echo PH7_URL_TPL . PH7_TPL_NAME . PH7_SH . PH7_JS?>',tplMod:'<?php echo $this->registry->url_themes_module . PH7_TPL_MOD_NAME . PH7_SH?>',data:'<?php echo PH7_URL_DATA?>'};</script> <?php if($is_admin_auth) { ?><script>pH7Url.admin_mod = '<?php echo PH7_ADMIN_MOD . PH7_SH?>';</script><?php } ?> <?php $design->externalJsFile(PH7_URL_STATIC . PH7_JS . 'jquery/jquery.js') ;?> <?php if($this->browser->isFullAjaxSite()) { ?> <?php $design->staticFiles('css', PH7_LAYOUT . PH7_TPL . PH7_TPL_NAME . PH7_SH . PH7_CSS, 'js/ajph.css') ;?> <?php $design->staticFiles('js', PH7_STATIC . PH7_JS, 'ajph.js') ;?> <?php } ?> <?php XmlDesignCore::sitemapHeaderLink() ;?> <?php XmlDesignCore::rssHeaderLinks() ;?> <?php $this->designModel->analyticsApi() ;?> </head> <body> <header> <?php if(!$is_guest_homepage) { ?> <?php $this->display('top_menu.inc.tpl', PH7_PATH_TPL . PH7_TPL_NAME . PH7_DS); ?> <?php } ?> <noscript> <div class="noscript err_msg"> <?php echo t('JavaScript is disabled on your Web browser!<br /> Please enable JavaScript via the options of your Web browser in order to use this website.'); ?> </div> </noscript> <?php if($is_guest_homepage) { ?> <div class="row"> <div role="banner" id="logo" class="col-md-8"> <h1> <a href="<?php $design->homePageUrl() ;?>" title="<?php echo $slogan; ?>"><?php echo $site_name; ?></a> </h1> </div> </div> <?php } ?> <div class="center" id="headings"> <?php if(!empty($h1_title )) { ?> <h1><?php echo $h1_title; ?></h1> <?php } ?> <?php if(!empty($h2_title )) { ?> <h2><?php echo $h2_title; ?></h2> <?php } ?> <?php if(!empty($h3_title )) { ?> <h3><?php echo $h3_title; ?></h3> <?php } ?> <?php if(!empty($h4_title )) { ?> <h4><?php echo $h4_title; ?></h4> <?php } ?> </div> <?php if(!$is_guest_homepage) { ?> <div role="banner" class="center ad_468_60"> <?php $this->designModel->ad(468, 60) ;?> </div> <?php } ?> <div class="clear"></div> </header> <div id="box"> <p></p> </div> <div role="main" class="container" id="content"> <?php $design->flashMsg() ;?> <div class="msg"></div> <?php $lang_file = Framework\Translate\Lang::getJsFile(PH7_PATH_STATIC . PH7_JS . PH7_LANG) ;?> <?php $design->staticFiles('js', PH7_STATIC . PH7_JS, PH7_LANG . $lang_file) ;?> <div id="ajph"> <div id="sub_ajph"> <?php if(!empty($manual_include)) { ?> <?php $this->display($this->getCurrentController() . PH7_DS . $manual_include, $this->registry->path_module_views . PH7_TPL_MOD_NAME . PH7_DS); ?> <?php } elseif(!empty($pOH_not_found)) { ?> <?php $this->display('error.inc.tpl', PH7_PATH_TPL . PH7_TPL_NAME . PH7_DS); ?> <?php } else { ?> <?php $this->display($this->getCurrentController() . PH7_DS . $this->registry->action . '.tpl', $this->registry->path_module_views . PH7_TPL_MOD_NAME . PH7_DS); ?> <?php } ?> </div> </div> </div> <div role="banner" class="center ad_468_60"> <?php $this->designModel->ad(468, 60) ;?> </div> <footer> <div role="banner" class="center ad_728_90"> <?php $this->designModel->ad(728, 90) ;?> </div> <?php if($is_user_auth AND $this->httpRequest->currentUrl() != $this->registry->site_url) { ?> <div class="warning_block center"> <p> <strong><?php echo t('Attention!'); ?></strong> <?php echo t('Some of the women (or men) profiles you see on dating sites might be scams to collect money.'); ?><br /> <?php echo t('People who are really interested in you will never ask for money.'); ?><br /> <?php echo t("Be careful, don't send the money to anybody!"); ?> </p> </div> <?php } ?> <div role="contentinfo"> <div class="ft_copy"> <p> &copy; <?php echo date('Y')?> <strong><?php echo $site_name; ?></strong> <?php $design->link() ;?> </p> <?php $design->littleLikeApi() ;?> </div> <?php $design->langList() ;?> <?php $this->display('bottom_menu.inc.tpl', PH7_PATH_TPL . PH7_TPL_NAME . PH7_DS); ?> </div> <?php if(isDebug()) { ?> <div class="ft"> <p><small><?php $design->stat() ;?></small></p> </div> <p class="small darkred"> <?php echo t('WARNING: Your site is in development mode! You can change the mode'); ?> <a href="<?php $design->url(PH7_ADMIN_MOD,'tool','envmode') ;?>" title="<?php echo t('Change the Environment Mode'); ?>" class="darkred"><?php echo t('here'); ?></a> </p> <?php } ?> </footer> <div class="clear"></div> <div class="right vs_marg"> <small class="small">This product includes GeoLite2 data created by MaxMind, available from <a href="http://www.maxmind.com" rel="nofollow" class="gray">http://www.maxmind.com</a></small> </div> <?php $design->staticFiles('js', PH7_STATIC . PH7_JS, 'jquery/box.js,jquery/tipTip.js,bootstrap.js,common.js,str.js,holder.js') ;?> <?php $design->staticFiles('js', PH7_LAYOUT . PH7_TPL . PH7_TPL_NAME . PH7_SH . PH7_JS, 'global.js') ;?> <?php $design->externalJsFile(PH7_URL_STATIC . PH7_JS . 'jquery/jquery-ui.js') ;?> <?php if($is_user_auth) { ?> <?php $design->staticFiles('js', PH7_STATIC . PH7_JS, 'setUserActivity.js,jquery/sound.js') ;?> <?php if($is_im_enabled) { ?> <?php $lang_file = Framework\Translate\Lang::getJsFile(PH7_PATH_TPL_SYS_MOD . 'im/' . PH7_TPL . PH7_DEFAULT_THEME . PH7_DS . PH7_JS . PH7_LANG) ;?> <?php $design->staticFiles('js', PH7_LAYOUT . PH7_SYS . PH7_MOD . 'im/' . PH7_TPL . PH7_DEFAULT_THEME . PH7_SH . PH7_JS, PH7_LANG . $lang_file . ',jquery.cookie.js,Messenger.js') ;?> <?php } ?> <?php } ?> <?php if($is_cookie_consent_bar) { ?> <?php $design->staticFiles('js', PH7_STATIC . PH7_JS, 'cookie_consent/eu-states.js') ;?> <?php } ?> <?php $design->externalJsFile(PH7_RELATIVE.'asset/js/script.js') ;?> <?php $design->js() ;?> <?php $this->designModel->files('js') ;?> <?php if($is_user_auth) { ?> <?php $this->display('favicon_alert.inc.tpl', PH7_PATH_TPL . PH7_TPL_NAME . PH7_DS); ?> <?php } ?> <?php $design->message() ;?> <?php $design->error() ;?> <?php if($is_disclaimer AND !$is_admin_auth) { ?> <?php $this->display('disclaimer.inc.tpl', PH7_PATH_TPL . PH7_TPL_NAME . PH7_DS); ?> <?php } ?> <?php $design->htmlFooter() ;?>