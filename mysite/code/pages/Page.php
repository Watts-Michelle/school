<?php

class Page extends SiteTree
{

    private static $db = [];

    private static $has_one = [];

    private static $allowed_children = [
        'InfoPage',
    ];

    protected $color;

    public function Color()
    {
        return $this->color;
    }

    public function duplicate($doWrite = true)
    {
        $page = parent::duplicate($doWrite);
        $className = $this->HeroSection()->class;
        /** @var DataObject $clone */
        $clone = new $className($this->HeroSection()->toMap(), false, $this->HeroSection()->model);
        $clone->ID = 0;
        $clone->write();
        $page->HeroSectionID = $clone->ID;
        if ($doWrite) {
            $page->write();
        }
        return $page;
    }

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $this->addHeroToTabs($fields);
        $this->addSectionsToTabs($fields);
        return $fields;
    }

    /**
     * @param int $pos
     * @return Section|null
     */
    public function SectionByPos($pos = 1)
    {
        if ($this->hasSections()) {
            return $this->Sections()->limit($pos, $pos > 1 ? --$pos : 0)->first();
        }
    }

    public function onBeforeWrite()
    {
        parent::onBeforeWrite();
        if ($this->hasHero()) {
            /** @var HeroSection $hero */
            $hero = $this->getComponent('HeroSection');
            $hero->writeTo($this);
        }
    }

    public function onBeforeDelete()
    {
        parent::onBeforeDelete();
        if ($this->hasHero()) {
            if ($this->HeroSection()->exists()) {
                $this->HeroSection()->delete();
            }
        }
    }

    protected function addTestimonialsTagsToTabs(FieldList &$fields, $tab = 'Root.TestimonialsTags')
    {
        if ($this->hasTestimonials()) {
            $fields->addFieldToTab($tab, ListboxField::create(
                'TestimonialsTags',
                'Tags',
                Tag::get()->map()->toArray(),
                $this->TestimonialsTags(),
                null, true
            ));
        }
    }

    protected function addSectionsToTabs(FieldList &$fields, $tab = 'Root.Sections')
    {
        if ($this->hasSections()) {
            $fields->addFieldToTab($tab, GridField::create(
                'Sections',
                'Sections',
                $this->Sections(),
                $sConfig = GridFieldConfig_RecordEditor::create()
            ));
            $sConfig->getComponentByType('GridFieldDataColumns')
                ->setDisplayFields(array(
                    'Title' => 'Title',
                    'LinkTo.Link' => 'Link to',
                ));
        }
    }

    /**
     * Add HeroSection if relation one-to-one exists.
     *
     * @param FieldList $fields
     * @param string $tab
     * @throws Exception
     */
    protected function addHeroToTabs(FieldList &$fields, $tab = 'Root.Hero')
    {
        if ($this->hasHero()) {
            /** @var HeroSection $hero */
            $hero = $this->getComponent('HeroSection');
            $hero->addIntoFields($fields, $tab);
        }
    }

    /**
     * @return bool
     */
    protected function hasTestimonials()
    {
        $arr = $this->manyManyComponent('TestimonialsTags');

        return !empty($arr) && $arr['1'] && $arr['1'] == 'Tag';
    }

    /**
     * @return bool
     */
    protected function hasSections()
    {
        return $this->hasMany('Sections') == 'Section';
    }

    /**
     * @return bool
     */
    protected function hasHero()
    {
        return $this->hasOne('HeroSection') == 'HeroSection';
    }
}

class Page_Controller extends ContentController
{

    /**
     * An array of actions that can be accessed via a request. Each array element should be an action name, and the
     * permissions or conditions required to allow the user to access it.
     *
     * <code>
     * array (
     *     'action', // anyone can access this action
     *     'action' => true, // same as above
     *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
     *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
     * );
     * </code>
     *
     * @var array
     */
    private static $allowed_actions = array();

    public function init()
    {
        parent::init();

        $this->mainScripts();

        $this->pageSpecificScripts();

        $this->customScripts();
    }

    protected function pageSpecificScripts()
    {

    }

    protected function customScripts()
    {
        Requirements::javascript($this->ThemeDir() . '/js/custom.js');
    }


    protected function mainScripts()
    {
        Requirements::css($this->ThemeDir() . '/css/normalize.css');
        Requirements::css($this->ThemeDir() . '/css/bootstrap.min.css');
        Requirements::css($this->ThemeDir() . '/css/magnific.min.css');
        Requirements::css($this->ThemeDir() . '/css/animate.css');
        Requirements::css($this->ThemeDir() . '/css/icomoon.css');
        Requirements::css($this->ThemeDir() . '/css/main.css');

        Requirements::javascript('//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js');
        Requirements::javascript($this->ThemeDir() . '/js/imagesloaded.min.js');
        Requirements::javascript($this->ThemeDir() . '/js/bootstrap.min.js');
        Requirements::javascript($this->ThemeDir() . '/js/jquery.touchSwipe.min.js');
        Requirements::javascript($this->ThemeDir() . '/js/magnific.min.js');
        Requirements::javascript($this->ThemeDir() . '/js/slick.min.js');
        Requirements::javascript($this->ThemeDir() . '/js/wow.min.js');
        Requirements::javascript($this->ThemeDir() . '/js/smooth-scroll.min.js');
    }


}
