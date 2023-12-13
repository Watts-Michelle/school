<?php

/**
 * Created for hurtwood-cms.
 * User: jakim <pawel@jakimowski.info>
 * Date: 06.04.2016
 */
class StudentPage extends ParentStudentPage
{
    protected $color = 'aquamarine';

    private static $can_be_root = true;

    private static $has_many = [
        'Sections' => 'Section',
    ];

    private static $allowed_children = [
        'StudentCalendarPage',
        'RedirectorPage',
        '*InfoPage',
        'StudentReadingPage',
        'StudentFacultyPage',
    ];

    public function Calendar()
    {
        $calendar = parent::Children()->filter('ClassName', 'StudentCalendarPage')->first();
        return $calendar;
    }

    public function CourseSpecs()
    {
        return $this->Children()->filter('ClassName', 'StudentCourseSpecPage')->first();
    }

    public function ReadingLists()
    {
        return $this->Children()->filter('ClassName', 'StudentReadingPage')->first();
    }
}

class StudentPage_Controller extends Page_Controller
{

}