<?php
/**
 * @title            Pagination Class
 *
 * @author           Pierre-Henry Soria <ph7software@gmail.com>
 * @copyright        (c) 2012-2018, Pierre-Henry Soria. All Rights Reserved.
 * @license          GNU General Public License; See PH7.LICENSE.txt and PH7.COPYRIGHT.txt in the root directory.
 * @package          PH7 / Framework / Page
 * @version          1.0
 */

namespace PH7\Framework\Navigation;

defined('PH7') or exit('Restricted access');

class Pagination
{
    const MAX_PAGES = 4;

    /** @var string */
    private $sPageName;

    /** @var int */
    private $iTotalPages;

    /** @var int */
    private $iCurrentPage;

    /** @var int */
    private $iShowItems;

    /** @var string */
    private $sHtmlOutput;

    /** @var array */
    private static $aOptions = [
        'range' => self::MAX_PAGES - 1, // Number of pages to display on the pagination
        'text_first_page' => '&laquo;', // Button text "First Page"
        'text_last_page' => '&raquo;', // Button text "Last Page"
        'text_next_page' => '&rsaquo;', //  Button text "Next"
        'text_previous_page' => '&lsaquo;' // Button text "Previous"
    ];

    /**
     * @param int $iTotalPages
     * @param int $iCurrentPage
     * @param string $sPageName Default 'p'
     * @param array $aOptions Optional options.
     */
    public function __construct($iTotalPages, $iCurrentPage, $sPageName = 'p', array $aOptions = array())
    {
        // Set the total number of page
        $this->iTotalPages = $iTotalPages;

        // Retrieve the number of the current page
        $this->iCurrentPage = $iCurrentPage;

        // Put options update
        self::$aOptions += $aOptions;

        // It retrieves the address of the page
        $this->sPageName = Page::cleanDynamicUrl($sPageName);


        // Management pages to see
        $this->iShowItems = (self::$aOptions['range'] * 2) + 1;

        // It generates the paging
        $this->generate();
    }

    /**
     * Display the pagination if there is more than one page
     *
     * @return string Html code.
     */
    public function getHtmlCode()
    {
        return $this->sHtmlOutput;
    }

    /**
     * Generate the HTML pagination code.
     *
     * @return void
     */
    private function generate()
    {
        // If you have more than one page, it displays the navigation
        if ($this->iTotalPages > 1) {
            $this->sHtmlOutput = '<div class="clear"></div><nav class="center" role="navigation"><ul class="pagination">';

            // Management link to go to the first page
            if (self::$aOptions['text_first_page']) {
                if ($this->iCurrentPage > 2 && $this->iCurrentPage > self::$aOptions['range'] + 1 && $this->iShowItems < $this->iTotalPages) {
                    $this->sHtmlOutput .= '<li><a href="' . $this->sPageName . '1"><span aria-hidden="true">' . self::$aOptions['text_first_page'] . '</span></a></li>';
                }
            }

            // Management the Previous link
            if (self::$aOptions['text_previous_page']) {
                if ($this->iCurrentPage > 2 && $this->iShowItems < $this->iTotalPages) {
                    $this->sHtmlOutput .= '<li class="previous"><a href="' . $this->sPageName . ($this->iCurrentPage - 1) . '" aria-label="Previous"><span aria-hidden="true">' . self::$aOptions['text_previous_page'] . '</span></a></li>';
                }
            }
            // Management of other paging buttons...
            for ($i = 1; $i <= $this->iTotalPages; $i++) {
                if (($i >= $this->iCurrentPage - self::$aOptions['range'] && $i <= $this->iCurrentPage + self::$aOptions['range']) || $this->iTotalPages <= $this->iShowItems) {
                    $this->sHtmlOutput .= '<li' . ($this->iCurrentPage == $i ? ' class="active"' : '') . '><a href="' . $this->sPageName . $i . '">' . $i . '</a></li>';
                }
            }

            //  Management the "Next" link
            if (self::$aOptions['text_next_page']) {
                if ($this->iCurrentPage < $this->iTotalPages - 1 && $this->iShowItems < $this->iTotalPages) {
                    $this->sHtmlOutput .= '<li class="next"><a href="' . $this->sPageName . ($this->iCurrentPage + 1) . '" aria-label="Next"><span aria-hidden="true">' . self::$aOptions['text_next_page'] . '</span></a></li>';
                }
            }

            // Management link to go to the last page
            if (self::$aOptions['text_last_page']) {
                if ($this->iCurrentPage < $this->iTotalPages - 1 && $this->iCurrentPage + self::$aOptions['range'] < $this->iTotalPages && $this->iShowItems < $this->iTotalPages) {
                    $this->sHtmlOutput .= '<li><a href="' . $this->sPageName . $this->iTotalPages . '"><span aria-hidden="true">' . self::$aOptions['text_last_page'] . '</span></a></li>';
                }
            }

            $this->sHtmlOutput .= '</ul></nav>';
        }
    }
}
