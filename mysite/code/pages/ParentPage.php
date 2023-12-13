<?php

/**
 * Created for hurtwood-cms.
 * User: jakim <pawel@jakimowski.info>
 * Date: 06.04.2016
 */
class ParentPage extends ParentStudentPage
{
    private static $can_be_root = true;

    protected $color = 'pastelred';

    private static $allowed_children = [
        'ParentCalendarPage',
        'RedirectorPage',
        'InfoPage',
        'ParentPoliciesPage',
    ];
}

class ParentPage_Controller extends Page_Controller
{

}