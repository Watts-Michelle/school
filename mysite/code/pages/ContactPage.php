<?php

/**
 * Created for hurtwood-cms.
 * User: jakim <pawel@jakimowski.info>
 * Date: 08.04.2016
 */
class ContactPage extends Page
{
    private static $db = [
        'SubmissionText' => 'Varchar',
        'SubjectHeading' => 'Varchar'
    ];

    private static $has_one = [
        'HeroSection' => 'HeroSection',
        'Photo' => 'Image',
        'Directions' => 'SiteTree'
    ];


    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->addFieldsToTab('Root.Main', [
            UploadField::create('Photo'),
            TreeDropdownField::create('DirectionsID', 'Get directions here', 'SiteTree'),
        ], 'Content');
        $fields->addFieldsToTab('Root.Email', [
            TextField::create('SubmissionText', 'Form Submission Text'),
            TextField::create('SubjectHeading', 'Email Subject Heading')
        ]);
        return $fields;
    }
}

class ContactPage_Controller extends Page_Controller
{
    private static $allowed_actions = ['ContactForm'];

    public function submit($data, $form)
    {
        $email = new Email($data['Email'], SiteConfig::current_site_config()->Email, $this->SubjectHeading);
        $email->setTemplate('ContactEmail');
        $email->populateTemplate($data);
        $email->send();

        return array(
            'Content' => '<p>Thank you for your feedback.</p>',
            'ContactForm' => ''
        );
    }

    public function ContactForm()
    {
        $part = new HHFieldGroup(
            (new HHFieldGroup(
                new HHTextField('Name', 'YOUR NAME'),
                new HHEmailField('Email', 'YOUR EMAIL'),
                new HHPhoneNumberField('Phone', 'PHONE NUMBER'),
                new HHCountryDropdownField('country', 'COUNTRY'),
                new HHTextareaField('Message', 'MESSAGE')
            ))->addExtraClass('part__left')
        );
        $part->addExtraClass('part');
        $fields = new FieldList($part);

        $actions = new FieldList(
            (new FormAction('submit', 'Send message'))
                ->addExtraClass('btn btn-wide btn-ghost pastelred')
        );

        $validator = new RequiredFields('Name', 'Email', 'Message');

        $form = (new Form($this, 'ContactForm', $fields, $actions, $validator))
            ->setTemplate('HHForm')
            ->addExtraClass('application-form wow fadeIn animated');

        return $form;

    }
}