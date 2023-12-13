<?php

/**
 * Created for hurtwood-cms.
 * User: jakim <pawel@jakimowski.info>
 * Date: 07.04.2016
 */
class TestimonialExtension extends DataExtension
{
    private $TestimonialsCache = [];

    private static $many_many = [
        'TestimonialsTags' => 'Tag'
    ];

    public function Testimonials($limit = 5)
    {
        return $this->getRandomTestimonials($limit);
    }

    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldToTab('Root.TestimonialsTags', ListboxField::create(
            'TestimonialsTags',
            'Tags',
            Tag::get()->map()->toArray(),
            $this->owner->TestimonialsTags(),
            null, true
        ));
    }

    private function getRandomTestimonials($limit)
    {
        if ($limit > count($this->TestimonialsCache)) {
            $this->initTestimonials($limit);
            $total = count($this->TestimonialsCache);
            if ($limit > $total) {
                $limit = $total;
            }
        }
        $list = new ArrayList();
        for ($i = 0; $i < $limit; $i++) {
            $list->add(array_shift($this->TestimonialsCache));
        }
        return $list;
    }

    private function initTestimonials($limit)
    {
        $this->TestimonialsCache = Testimonial::get()
            ->filter(['Tags.ID' => $this->owner->TestimonialsTags()->column()])
            ->sort('rand()')
            ->limit((int)$limit < 15 ? 15 : $limit)
            ->toArray();

    }

}