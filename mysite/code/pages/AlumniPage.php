<?php

/**
 * Created for hurtwood-cms.
 * User: jakim <pawel@jakimowski.info>
 * Date: 16.03.2016
 *
 * @property HeroSection $HeroSection
 */
class AlumniPage extends Page
{
    private static $allowed_children = [
        'AlumniHallOfFamePage',
        'AlumniSupportPage',
    ];

    private static $has_one = [
        'HeroSection' => 'HeroSection'
    ];

    private static $has_many = [
        'Sections' => 'Section',
    ];

}

class AlumniPage_Controller extends Page_Controller
{
}