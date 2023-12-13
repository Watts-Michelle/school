<?php

/**
 * Created for hurtwood-cms.
 * User: jakim <pawel@jakimowski.info>
 * Date: 09.04.2016
 */
class HHCountryDropdownField extends CountryDropdownField
{
    public function __construct($name, $title = null, $source = null, $value = "", $form=null) {

        $this->setFieldHolderTemplate('HHDropdownField_holder');
        
        parent::__construct($name, $title, $source, $value, $form);
    }
}