<template>
    <div class="uk-position-relative uk-visible-toggle uk-margin-small" uk-slider>
        <ul class="uk-slider-items uk-width-3-4 uk-child-width-1-2@s uk-child-width-1-4@m">
            <li class="uk-margin-small-right uk-margin-small-bottom" v-for="(offer, index) in offers" :key="index">
                <div class=" uk-card uk-card-default uk-box-shadow-material-small uk-border-rounded">
                    <div class="uk-card-media-top">
                        <a :href="offer.url"><img class="uk-border-rounded" :data-src="offer.image" :alt="offer.title"
                                height="300" width="600" uk-img></a>
                        <span class="uk-flex uk-position-bottom-right uk-label uk-margin-right" style="bottom:15px;">Popular</span>
                    </div>
                    <div class="uk-card-body uk-padding-small">
                        <h5 class="uk-margin-remove-bottom uk-text-bold"><a class="uk-text-muted" :href="offer.url">{{offer.title}}</a></h5>
                        <p class="uk-text-small uk-margin-small-bottom uk-margin-remove-top">From IDR {{offer.price}}K</p>
                        <i v-for="rating in offer.ratings" :key="rating" class="fa fa-star" aria-hidden="true" ></i>
                    </div>
                </div>
            </li>
        </ul>

    </div>
</template>

<script>
    module.exports = {
        data: function () {
            return {
                offers: [{
                        title: 'Mt. Batur Sunrise Hike ',
                        image: 'img/batur.jpg',
                        price: '600',
                        ratings: 3,
                        url: 'showoffer.html'
                    },
                    {
                        title: 'Ubud Cycling Tour',
                        image: 'img/ubud_sepeda.jpg',
                        price: '700',
                        ratings: 1,
                        url: 'showoffer.html'
                    },
                    {
                        title: 'Gili Meno Fun Dive Trip',
                        image: 'img/gili_meno.jpg',
                        price: '800',
                        ratings: 5,
                        url: 'showoffer.html'
                    },
                    {
                        title: 'Dieng Plateau Golden Sunrise',
                        image: 'img/dieng.jpg',
                        price: '350',
                        ratings: 1,
                        url: 'showoffer.html'
                    },
                    {
                        title: 'Lava Tour Yogyakarta',
                        image: 'img/lava_tour.jpg',
                        price: '1000',
                        ratings: 4,
                        url: 'showoffer.html'
                    },

                ]
            }
        }
    };
</script>
<style scoped>
    @import 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css';
</style>
