<?php

class HHTextField extends TextField
{
    public function __construct($name, $title = null, $value = '', $maxLength = null, $form = null)
    {
        $this->setFieldHolderTemplate('HHTextField_holder');

        parent::__construct($name, $title, $value, $maxLength, $form);
    }

}