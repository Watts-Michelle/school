<?php

/**
 * Created for hurtwood-cms.
 * User: jakim <pawel@jakimowski.info>
 * Date: 11.04.2016
 */
class SummerSchoolPage extends Page
{
    private static $db = [
        'SummerSchool' => 'Varchar',
        'SummerSchoolFacebook' => 'Varchar(255)'
    ];

    private static $has_one = [
        'HeroSection' => 'HeroSection'
    ];

    private static $has_many = [
        'Sections' => 'Section'
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->addFieldsToTab('Root.Main', [
            TextField::create('SummerSchool', 'Summer School Website'),
            TextField::create('SummerSchoolFacebook', 'Summer School Facebook')
        ]);
        return $fields;
    }
}

class SummerSchoolPage_Controller extends Page_Controller
{

}