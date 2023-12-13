<?php

/**
 * Created for hurtwood-cms.
 * User: jakim <pawel@jakimowski.info>
 * Date: 31.03.2016
 */
class TestimonialsAdmin extends ModelAdmin
{
    private static $awesome_icon = "fa-comments";

    /**
     * The current url segment. {@link LeftAndMain::$url_segment}
     *
     * @config
     * @var string
     */
    private static $url_segment = 'testimonials';

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
        'Testimonial',
    ];

    public function getEditForm($id = null, $fields = null) {
        $form = parent::getEditForm($id, $fields);

        $gridFieldName = $this->sanitiseClassName($this->modelClass);
        $gridField = $form->Fields()->fieldByName($gridFieldName);

        /** @var GridFieldConfig $config */
        $gridField->getConfig()->getComponentByType('GridFieldDataColumns')
            ->setDisplayFields([
                'Content.FirstSentence' => 'Content',
                'Author' => 'Author'
            ]);

        return $form;
    }
}