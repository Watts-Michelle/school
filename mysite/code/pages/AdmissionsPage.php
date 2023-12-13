<?php

/**
 * Created for hurtwood-cms.
 * User: jakim <pawel@jakimowski.info>
 * Date: 01.04.2016
 */
class AdmissionsPage extends Page
{
    private static $allowed_children = [
        'AdmissionsProcessPage',
        'AdmissionsContentPage',
        'AdmissionsProspectusPage',
        'AdmissionsVisitPage',
        'RedirectorPage',
        'AdmissionsScholarshipsPage',
    ];
    private static $has_one = [
        'HeroSection' => 'HeroSection',
    ];

    private static $has_many = [
        'Sections' => 'Section',
    ];

    private static $many_many = [
        'TestimonialsTags' => 'Tag'
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->removeByName('Content');
        return $fields;
    }

}

class AdmissionsPage_Controller extends Page_Controller
{
    public function pageSpecificScripts()
    {
        Requirements::javascript($this->ThemeDir() . '/js/slick.min.js');
    }
}