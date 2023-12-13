<?php

/**
 * Created for hurtwood-cms.
 * User: jakim <pawel@jakimowski.info>
 * Date: 09.04.2016
 */
class HHTextareaField extends TextareaField
{
    public function __construct($name, $title = null, $value = null)
    {
        $this->setFieldHolderTemplate('HHTextareaField_holder');
        
        parent::__construct($name, $title, $value);
    }

}