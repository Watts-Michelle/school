<?php

class InfoPage extends SubjectPage
{
    protected $color = 'aquamarine';

    private static $can_be_root = true;

    protected static $allowed_blocks = [
        'ContentBlock',
        'CTABlock',
    ];

    private static $has_one = [
        'HeroSection' => 'HeroSection'
    ];
}

class InfoPage_Controller extends Page_Controller
{

}