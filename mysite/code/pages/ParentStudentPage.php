<?php

/**
 * Created for hurtwood-cms.
 * User: jakim <pawel@jakimowski.info>
 * Date: 05.04.2016
 */
class ParentStudentPage extends Page
{
    private static $can_be_root = false;
    
    private static $has_one = [
        'HeroSection' => 'HeroSection',
    ];

    private static $has_many = [
        'HomeBoxes' => 'HomeBox',
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->removeFieldFromTab('Root.Main', 'Content');

        $fields->addFieldToTab('Root.Boxes', GridField::create(
            'HomeBox',
            'Boxes after section "hero"',
            $this->HomeBoxes(),
            $config = GridFieldConfig_RecordEditor::create()
        ));
        $config->getComponentByType('GridFieldDataColumns')
            ->setDisplayFields(array(
                'Photo.CMSThumbnail' => 'Photo',
                'Title' => 'Title',
                'LinkTo.Link' => 'Link to',
            ));

        return $fields;
    }

}

class ParentStudentPage_Controller extends Page_Controller
{

}