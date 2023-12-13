<?php

/**
 * Created for hurtwood-cms.
 * User: jakim <pawel@jakimowski.info>
 * Date: 09.04.2016
 */
class HHFieldGroup extends FieldGroup
{
    public function __construct($arg1 = null, $arg2 = null) {

        $this->setFieldHolderTemplate('HHFieldGroup_holder');
        
        parent::__construct(func_get_args());
    }
}