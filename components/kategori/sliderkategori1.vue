<template>
    <div class="uk-position-relative uk-visible-toggle" uk-slider>
        <ul class="uk-slider-items uk-width-3-4 uk-child-width-1-2@s uk-child-width-1-4@m">
            <li class="uk-margin-small-right" v-for="(slider1, index) in slider1s" :key="index">
                <div class=" uk-card uk-card-default uk-box-shadow-material-small uk-border-rounded">
                    <div class="uk-card-media-top">
                        <a :href="slider1.url"><img class="uk-border-rounded" :data-src="slider1.image" :alt="slider1.title" height="300" width="600"  uk-img></a>
                    </div>
                    <div class="uk-card-body uk-padding-small">
                        <h6 class="uk-card-title uk-text-small uk-text-muted uk-margin-small-bottom"><a :href="slider1.url">{{slider1.title}}</a></h6>
                        <p class="uk-text-small uk-margin-small-bottom uk-margin-remove-top">From IDR {{slider1.price}}K</p>
                        <span v-for="rating in slider1.ratings" :key="rating" uk-icon="icon: star; ratio: 0.8"></span>
                    </div>
                </div>
            </li>
        </ul>
        <hr style="margin-top: 30px; margin-bottom: 10px;">
    </div>
</template>

<script>
    module.exports = {
        data: function () {
            return {
                slider1s: [{
                        title: 'JMt. Batur Sunrise Hike ',
                        image: 'img/batur.jpg',
                        price: '600',
                        ratings: 3,
                        url:'showoffer.html'
                    },
                    {
                        title: 'Ubud Cycling Tour',
                        image: 'img/ubud_sepeda.jpg',
                        price: '700',
                        ratings: 1,
                        url:'showoffer.html'
                    },
                    {
                        title: 'Gili Meno Fun Dive Trip',
                        image: 'img/gili_meno.jpg',
                        price: '800',
                        ratings: 5,
                        url:'showoffer.html'
                    },
                    {
                        title: 'Dieng Plateau Golden Sunrise',
                        image: 'img/dieng.jpg',
                        price: '350',
                        ratings: 1,
                        url:'showoffer.html'
                    },
                    {
                        title: 'Lava Tour Yogyakarta',
                        image: 'img/lava_tour.jpg',
                        price: '1000',
                        ratings: 4,
                        url:'showoffer.html'
                    },

                ]
            }
        }
    };
</script>