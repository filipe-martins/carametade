<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2018-07-22 18:16:55
Compiled file from: /srv/disk3/2743784/www/carametade.tk/_protected/app/system/modules/ph7cms-helper/views/base/tpl/main/stargithubbox.tpl
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
?><div class="col-md-12"> <div id="box_block" class="center"> <h1><?php echo t('Star pH7CMS on <a href="%0%">Github</a>!', $config->values['module.setting']['github.repository_link']); ?></h1> <p>&nbsp;</p> <iframe src="https://ghbtns.com/github-btn.html?user=<?php echo $config->values['module.setting']['github.username'] ;?>&amp;repo=<?php echo $config->values['module.setting']['github.repo_name'] ;?>&amp;type=star&amp;count=true&amp;size=large" frameborder="0" scrolling="0" width="160px" height="30px" > </iframe> </div></div>