<?php

/**
 * Created for hurtwood-cms.
 * User: jakim <pawel@jakimowski.info>
 * Date: 13.03.2016
 */
class AcademicPage extends Page
{
    protected $color = 'green';
    
    private static $allowed_children = [
        'AcademicExamPage',
        'AcademicGscePage',
        'AcademicBusinessPage',
        'AcademicCreativePage',
        'AcademicHumanitiesPage',
        'AcademicSciencePage',
    ];

    private static $db = [
        'SectionTitle' => 'Varchar(255)',
        'Paragraph1' => 'HTMLText',
        'Paragraph2' => 'HTMLText',
        'Paragraph3' => 'HTMLText',
        'Paragraph4' => 'HTMLText',
        'Paragraph5' => 'HTMLText',
    ];

    private static $has_one = [
        'HeroSection' => 'HeroSection',
        'Photo1' => 'Image',
        'Photo2' => 'Image',
        'Photo3' => 'Image',
        'Photo4' => 'Image',
        'Photo5' => 'Image',
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
            UploadField::create('Photo5'),
        ]);

        $fields->addFieldToTab('Root.Pages',
            $grid = new GridField('Pages', 'All pages', SiteTree::get())
        );

        $config = $grid->getConfig();
        $config->addComponent(new GridFieldDataColumns(), 'GridFieldViewButton');

        $dataColumns = $config->getComponentByType('GridFieldDataColumns');

        $dataColumns->setDisplayFields(array(
            'Title' => 'Title',
            'Link' => 'URL',
            'LastEdited' => 'Changed'
        ));

        return $fields;
    }

    public function isActive()
    {
        return $this->isCurrent();
    }
}

class AcademicPage_Controller extends Page_Controller
{

}