<?php

/**
 * Created for hurtwood-cms.
 * User: jakim <pawel@jakimowski.info>
 * Date: 22.03.2016
 */
class NewsHolder extends Page
{
    private static $allowed_children = [
        'NewsPage',
    ];

    private static $has_one = [
        'HeroSection' => 'HeroSection',
    ];

    private static $has_many = [
        'Articles' => 'NewsPage',
    ];


    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->removeByName('Content');
        return $fields;
    }

}

class NewsHolder_Controller extends Page_Controller
{
    private static $allowed_actions = [
        'tag'
    ];

    public function tag()
    {
        $ID = $this->request->param('ID');
        $tag = Tag::get_one('Tag', ['Slug' => $ID]);
        if ($tag === false) {
            $this->redirect('/news', 404);
        }
        return $this->customise([
            'Tag' => $tag,

        ]);
    }

    public function getRandomArticles($limit = 3)
    {
        return $this->Articles()
            ->sort('RAND()')
            ->limit($limit);
    }

    /**
     * @return NewsPage
     */
    public function getFeaturedArticle()
    {
        if ($this->isTagAction()) {
            return null;
        }
        return $this->Articles()->sort('PublicationDate', 'DESC')->first();
    }

    public function getPaginatedArticles()
    {
        /** @var ManyManyList $articles */
        $articles = $this->Articles()
            ->sort('PublicationDate', 'DESC');
        if (($featured = $this->getFeaturedArticle())) {
            $articles = $articles->filter(['ID:not' => $featured->ID]);
        }
        if ($this->isTagAction()) {
            $articles = $articles->filter(['NewsPage.Tags.Slug' => $this->request->param('ID')]);
        }

        $list = new PaginatedList($articles, $this->getRequest());
        /**
         * @see custom.js Site::newsInfinitieScroll() currPageIncrement
         */
//        $list->setPageLength(2);
        return $list;
    }

    public function pageSpecificScripts()
    {
        Requirements::javascript($this->ThemeDir() . '/js/jquery.infinitescroll.js');
    }

    /**
     * @return bool
     */
    protected function isTagAction()
    {
        return $this->request->param('Action') == 'tag';
    }
}