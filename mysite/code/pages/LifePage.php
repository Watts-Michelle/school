<?php

class LifePage extends Page
{
    private static $allowed_children = [
        'LifeSupportivePage',
        'LifeBoardingPage',
        'LifeSportPage',
        'LifeEnigmaPage',
        'LifeStudentsPage',
    ];
    private static $db = [
        'SectionTitle' => 'Varchar(255)',
        'Paragraph1' => 'HTMLText',
        'Paragraph2' => 'HTMLText',
        'Paragraph3' => 'HTMLText',
        'Paragraph4' => 'HTMLText',
        'Paragraph5' => 'HTMLText',

        'TeamTitle' => 'Varchar(255)',
        'TeamSubtitle' => 'Varchar(255)',
        'TeamDescription' => 'HTMLText',
    ];
    private static $has_one = [
        'HeroSection' => 'HeroSection',
        'Photo1' => 'Image',
        'Photo2' => 'Image',
        'Photo3' => 'Image',
        'Photo4' => 'Image',
    ];

    private static $has_many = [
        'TeamMembers' => 'TeamMember',
        'Categories' => 'MemberCategory',
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->removeByName('Content');

        $fields->addFieldsToTab('Root.Section', [
            TextField::create('SectionTitle'),
            HtmlEditorField::create('Paragraph1'),
            HtmlEditorField::create('Paragraph2'),
            HtmlEditorField::create('Paragraph3'),
            HtmlEditorField::create('Paragraph4'),
            HtmlEditorField::create('Paragraph5'),
        ]);

        $fields->addFieldsToTab('Root.SectionPhotos', [
            UploadField::create('Photo1'),
            UploadField::create('Photo2'),
            UploadField::create('Photo3'),
            UploadField::create('Photo4'),
        ]);

        $fields->addFieldsToTab('Root.Team', [
            TextField::create('TeamTitle', 'Title'),
            TextField::create('TeamSubtitle', 'Subtitle'),
            HtmlEditorField::create('TeamDescription', 'Description'),
        ]);

        $fields->addFieldToTab('Root.TeamMembers', GridField::create(
            'TeamMember',
            'Team Members',
            $this->TeamMembers(),
            $config = GridFieldConfig_RecordEditor::create()
        ));

        /** @var GridFieldConfig $config */
        $config->getComponentByType('GridFieldDataColumns')
            ->setDisplayFields([
                'FullName' => 'Name',
                'Title' => 'Title'
            ]);

        $fields->addFieldToTab('Root.TeamCategories', GridField::create(
            'Categories',
            'Categories',
            $this->Categories(),
            GridFieldConfig_RecordEditor::create()
        ));

        return $fields;
    }

}

class LifePage_Controller extends Page_Controller
{

    protected function pageSpecificScripts()
    {
        Requirements::javascript($this->ThemeDir() . '/js/isotope.pkgd.min.js');
    }
}