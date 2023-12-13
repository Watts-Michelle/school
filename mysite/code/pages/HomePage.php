<?php

/**
 * Created for hurtwood.
 * User: jakim <pawel@jakimowski.info>
 * Date: 04.03.2016
 */
class HomePage extends Page
{
    private static $db = array(
        'Percent' => 'Varchar',
        'Grades' => 'Varchar',
        'ResultsLinkText' => 'HTMLText'
    );

    private static $has_one = [
        'Photo' => 'Image',
        'HeroSection' => 'HeroSection',
        'ResultsLink' => 'SiteTree'
    ];

    private static $has_many = [
        'HomeBoxes' => 'HomeBox',
        'Sections' => 'Section',
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

        $fields->addFieldToTab('Root.Results', TextField::create('Percent', 'Grades percentage'));
        $fields->addFieldToTab('Root.Results', TextField::create('Grades', 'Grades'));
        $fields->addFieldToTab('Root.Results', $EditorContent = HtmlEditorField::create('ResultsLinkText', 'Results Link Text'));
        $EditorContent->setRows(3);
        $fields->addFieldToTab('Root.Results', TreeDropdownField::create('ResultsLinkID', 'Results Link', 'SiteTree'));

        return $fields;
    }

}

class HomePage_Controller extends Page_Controller
{
    public function getBoxes($limit = 4)
    {
        return $this->HomeBoxes()->limit((int)$limit);
    }
}