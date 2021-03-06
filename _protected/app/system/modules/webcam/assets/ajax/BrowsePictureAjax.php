<?php
/**
 * @title            Browse Picture Ajax Class
 *
 * @author           Pierre-Henry Soria <ph7software@gmail.com>
 * @copyright        (c) 2012-2018, Pierre-Henry Soria. All Rights Reserved.
 * @license          GNU General Public License; See PH7.LICENSE.txt and PH7.COPYRIGHT.txt in the root directory.
 * @package          PH7 / App / System / Module / Webcam / Asset / Ajax
 * @version          1.7
 */

/*
 * This code was inspired by Martin Angelov's tutorial: http://tutorialzine.com/2011/04/jquery-webcam-photobooth/
 */

namespace PH7;

defined('PH7') or exit('Restricted access');

use PH7\Framework\File\File;
use PH7\Framework\Mvc\Request\Http;
use PH7\Framework\Mvc\Router\Uri;
use PH7\Framework\Url\Header;

class BrowsePictureAjax
{
    /** @var Http */
    private $oHttpRequest;

    /** @var array */
    private $aPath;

    /** @var string */
    private $sMsg;

    /** @var array */
    private $aNames = array();

    /** @var array */
    private $aModified = array();

    /** @var int|bool */
    private $mStart = 0;

    /** @var int */
    private $iNextStart;

    /** @var int */
    private $iPerPage = 24;

    public function __construct()
    {
        $this->oHttpRequest = new Http;
        $this->init();
    }

    public function display()
    {
        /*
         * @desc In this file we are scanning the image folders and
         * return a JSON object with file names. It is used by
         * jQuery to display the images on the front page:
         */
        return json_encode([
            'files' => $this->aNames,
            'nextStart' => $this->iNextStart
        ]);
    }

    private function init()
    {
        if ($this->oHttpRequest->get('deletePicture')) {
            $this->adminDeletePicture();
        } else {
            $this->gets();
        }
    }

    private function gets()
    {
        // Scanning the thumbnail folder for JPG images:
        $aG = glob(PH7_PATH_PUBLIC_DATA_SYS_MOD . 'webcam/picture/img/thumb/*.jpg');

        if (!$aG) {
            $aG = array();
        }

        // We loop though the file names returned by glob,
        // and we populate a second file with modifed timestamps.

        for ($i = 0, $iCount = count($aG); $i < $iCount; $i++) {
            $this->aPath = explode('/', $aG[$i]);
            $this->aNames[$i] = array_pop($this->aPath);

            $this->aModified[$i] = filemtime($aG[$i]);
        }

        // Multisort will sort the array with the filenames
        // according to their timestamps, given in $modified:

        array_multisort($this->aModified, SORT_DESC, $this->aNames);

        // browse.php can also paginate results with an optional
        // GET parameter with the filename of the image to start from:

        if ($this->oHttpRequest->getExists('start') && strlen($this->oHttpRequest->get('start') > 1)) {
            $this->mStart = array_search($this->oHttpRequest->get('start'), $this->aNames);

            if ($this->isPictureExists()) {
                $this->mStart = 0;
            }
        }


        if (@$this->aNames[$this->mStart + $this->iPerPage]) {
            $this->iNextStart = $this->aNames[$this->mStart + $this->iPerPage];
        }

        $this->aNames = array_slice($this->aNames, $this->mStart, $this->iPerPage);
    }

    private function adminDeletePicture()
    {
        if (AdminCore::auth()) {
            if ($this->httpRequest->getExists('file')) {
                $sFile = $this->httpRequest->get('file');
                (new File)->deleteFile($sFile);

                $this->sMsg = t('The photo has been deleted!');
            } else {
                $this->sMsg = t("Sorry, we haven't found any photo!");
            }

            Header::redirect(
                Uri::get('webcam', 'webcam', 'picture'),
                $this->sMsg
            );
        }
    }

    /**
     * @return bool
     */
    private function isPictureExists()
    {
        return $this->mStart === false;
    }
}

echo (new BrowsePictureAjax)->display();
