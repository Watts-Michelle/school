<?php

/**
 * Created for hurtwood-cms.
 * User: jakim <pawel@jakimowski.info>
 * Date: 08.04.2016
 */
class InformationSiteConfig extends DataExtension
{
    private static $db = [
        'Email' => 'Varchar(255)',
        'Phone' => 'Varchar(255)',
        'Facebook' => 'Varchar(255)',
        'Twitter' => 'Varchar(255)',
        'Youtube' => 'Varchar(255)',
        'Address' => 'HTMLText',
        'Account' => 'Varchar(255)',
        'Sortcode' => 'Varchar(255)',
    ];

    private static $has_one = [
        'ApplyNow' => 'SiteTree',
        'BookAVisit' => 'SiteTree',
        'RequestAProspectus' => 'SiteTree',
    ];

    private static $has_many = [
        'Links' => 'PageLink',
    ];

    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldsToTab("Root.Contact", [
            TextField::create('Email'),
            TextField::create('Phone'),
            HtmlEditorField::create('Address'),
        ]);

        $fields->addFieldsToTab("Root.SocialPages", [
            TextField::create('Facebook'),
            TextField::create('Twitter'),
            TextField::create('Youtube')
        ]);

        $fields->addFieldsToTab("Root.Payments", [
            TextField::create('Account'),
            TextField::create('Sortcode'),
        ]);


        $fields->addFieldsToTab('Root.Links', [
            LabelField::create('HeaderLinks', 'Header links'),
            TreeDropdownField::create('ApplyNowID', 'Apply now', 'SiteTree'),
            TreeDropdownField::create('BookAVisitID', 'Book a visit', 'SiteTree'),
            TreeDropdownField::create('RequestAProspectusID', 'Request a prospectus', 'SiteTree'),
            GridField::create(
                'Links',
                'Footer "Let’s talk" links',
                $this->owner->Links(),
                $config = GridFieldConfig_RecordEditor::create()
            ),
        ]);
        
        $config->getComponentByType('GridFieldDataColumns')
            ->setDisplayFields([
                'Title' => 'Title',
                'LinkTo.Link' => 'LinkTo'
            ]);
    }

}