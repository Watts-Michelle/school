<?php

/**
 * Created for hurtwood-cms.
 * User: jakim <pawel@jakimowski.info>
 * Date: 05.04.2016
 */
class StoriesAdmin extends ModelAdmin
{
    private static $awesome_icon = "fa-star";
    
    /**
     * The current url segment. {@link LeftAndMain::$url_segment}
     *
     * @config
     * @var string
     */
    private static $url_segment = 'stories';

    /**
     * The current menu title. {@link LeftAndMain::$menu_title}
     *
     * @config
     * @var string
     */
    private static $menu_title = '';

    /**
     * List of all managed {@link DataObject}s in this interface. {@link ModelAdmin::$managed_models}
     *
     * @config
     * @var array|string
     */
    private static $managed_models = [
        'Story',
    ];

    public function getEditForm($id = null, $fields = null)
    {
        $form = parent::getEditForm($id, $fields);

        $gridFieldName = $this->sanitiseClassName($this->modelClass);
        $gridField = $form->Fields()->fieldByName($gridFieldName);

        /** @var GridFieldConfig $config */
        $gridField->getConfig()->getComponentByType('GridFieldDataColumns')
            ->setDisplayFields([
                'Title' => 'Title',
                'Subtitle' => 'Subtitle',
                'Tagline' => 'Tagline',
                'Content.FirstSentence' => 'Content',
            ]);

        return $form;
    }
}