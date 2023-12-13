<?php

/**
 * Created for hurtwood-cms.
 * User: jakim <pawel@jakimowski.info>
 * Date: 12.04.2016
 */
class CareersPage extends Page
{
    protected $color = 'sea-blue';

    private static $allowed_children = [
        'JobPage'
    ];

    private static $has_one = [
        'HeroSection' => 'HeroSection',
    ];

    private static $has_many = [
        'Departments' => 'Department'
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Departments', new GridField(
            'Departments',
            'Departments',
            $this->Departments(),
            GridFieldConfig_RecordEditor::create()
        ));

        return $fields;
    }

}

class CareersPage_Controller extends Page_Controller
{
    public function getJobs()
    {
        return $this->AllChildren();
    }

    public function getDepartmentsSelect()
    {
        return DropdownField::create('Departments', 'All departments', $this->Departments()->map())
            ->setEmptyString('All departments');
    }
}