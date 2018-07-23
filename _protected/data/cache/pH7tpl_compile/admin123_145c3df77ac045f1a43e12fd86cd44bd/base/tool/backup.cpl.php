<?php 
namespace PH7;
defined('PH7') or exit('Restricted access');
/*
Created on 2018-07-16 20:55:10
Compiled file from: /srv/disk3/2743784/www/carametade.tk/_protected/app/system/modules/admin123/views/base/tpl/tool/backup.tpl
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
?><form method="post" action="<?php echo $this->httpRequest->currentUrl()?>" enctype="multipart/form-data"> <?php $designSecurity->inputToken('backup') ;?> <table class="center"> <?php if(!empty($msg_success)) { ?> <tr> <td class="green1 bold"><?php echo $msg_success; ?></td> </tr> <?php } ?> <tr> <td class="bold"><?php echo t('Database Backup'); ?></td> </tr> <tr> <td class="border vs_padd"> <label for="server"><?php echo t('Save SQL file to your server'); ?> <input type="radio" name="backup_type" value="server" id="server" /> </label> </td> </tr> <tr> <td class="border vs_padd"> <label for="server_archive"> <?php echo t('Save Gzip Archive (.gz) to your server'); ?> <input type="radio" name="backup_type" value="server_archive" id="server_archive" /> </label> </td> </tr> <tr> <td class="border vs_padd"> <label for="client"> <?php echo t('Download SQL file to your desktop'); ?> <input type="radio" name="backup_type" value="client" id="client" /> </label> </td> </tr> <tr> <td class="border vs_padd"> <label for="client_archive"> <?php echo t('Download Gzip Archive (.gz) to your desktop'); ?> <input type="radio" name="backup_type" value="client_archive" id="client_archive" /> </label> </td> </tr> <tr> <td class="border vs_padd"> <label for="show"> <?php echo t('Show on the screen'); ?> <input type="radio" name="backup_type" value="show" id="show" /> </label> <input type="submit" name="backup" value="<?php echo t('Backup'); ?>" /> </td> </tr> <?php if(!empty($sql_content)) { ?> <tr> <td class="bold"><?php echo t('View Database'); ?></td> </tr> <tr> <td class="border vs_padd"> <textarea id="backup"><?php echo $sql_content; ?></textarea> </td> </tr> <?php } ?> <tr> <td class="bold"><?php echo t('Database Restore from server'); ?></td> </tr> <tr> <td class="border vs_padd"> <label for="dump_file"><?php echo t('Please select a dump file'); ?> <select name="dump_file" id="dump_file"> <?php foreach($aDumpList as $dumpFile) { ?> <option value="<?php echo $dumpFile; ?>"><?php echo $dumpFile; ?></option> <?php } ?> </select> </label> <input type="submit" name="restore_dump" value="<?php echo t('Restore data from dump'); ?>" /> &nbsp; &bull; &nbsp; <input type="submit" name="remove_dump" value="<?php echo t('Delete dump'); ?>" /> </td> </tr> <tr> <td class="bold"><?php echo t('Database Restore from PC'); ?></td> </tr> <tr> <td class="border vs_padd"> <label for="sql_file"> <?php echo t('Please select a SQL file (extension ".sql" or compressed archive ".gz")'); ?> </label> <input type="file" name="sql_file" id="sql_file" accept=".sql,.gz" class="center"/> <input type="submit" name="restore_sql_file" value="<?php echo t('Restore'); ?>" /> </td> </tr> </table></form>