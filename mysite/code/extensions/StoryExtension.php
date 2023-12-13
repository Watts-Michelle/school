<?php

/**
 * Created for hurtwood-cms.
 * User: jakim <pawel@jakimowski.info>
 * Date: 05.04.2016
 */
class StoryExtension extends DataExtension
{

    public function Stories($limit = 2)
    {

        $stories = Story::get()
            ->sort('RAND()')
            ->limit((int)$limit)
            ->filter('LinkToID', (int)$this->owner->ID);
        if ($stories->count() <= 0) {
            $stories = Story::get()
                ->sort('RAND()')
                ->limit((int)$limit);
        }
        return $stories;
    }
}