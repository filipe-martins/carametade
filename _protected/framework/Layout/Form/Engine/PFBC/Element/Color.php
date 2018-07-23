<?php
/**
 * I made changes in this file (by Pierre-Henry SORIA).
 */

namespace PFBC\Element;

class Color extends Textbox
{
    public function render()
    {
        $this->attributes['type'] = 'color';
        $this->validation[] = new \PFBC\Validation\HexColor;
        parent::render();
    }
}
