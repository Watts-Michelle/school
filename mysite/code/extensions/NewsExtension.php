<?php

/**
 * Created for hurtwood-cms.
 * User: jakim <pawel@jakimowski.info>
 * Date: 05.04.2016
 */
class NewsExtension extends DataExtension
{
    private static $many_many = [
        'NewsTags' => 'Tag'
    ];

    public function News($limit = 5)
    {

        $news = NewsPage::get()
            ->filter(['Tags.ID' => $this->owner->NewsTags()->column()])
            ->limit((int)$limit);
        return $news;
    }

    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldToTab('Root.NewsTags', ListboxField::create(
            'NewsTags',
            'News Tags',
            Tag::get()->map()->toArray(),
            $this->owner->NewsTags(),
            null, true
        ));
    }


}