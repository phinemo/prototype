<template>
    <div class="uk-position-relative uk-visible-toggle uk-light" uk-slider>
        <ul class="uk-slider-items uk-width-3-4 uk-child-width-1-2@s uk-child-width-1-4@m">
            <li class="uk-box-shadow-small " v-for="(offer, index) in offers" :key="index" style="padding-left: 10px;">
                <div class=" uk-card uk-card-default uk-box-shadow-material-small uk-border-rounded">
                    <img class="uk-border-rounded" :data-src="offer.image" :alt="offer.title" uk-img>
                    <div class="uk-card-body uk-padding-small">
                        <h6 class="uk-card-title uk-text-small uk-margin-small-bottom">{{offer.title}}</h6>
                        <p class="uk-text-small uk-margin-small-bottom uk-margin-remove-top">Mulai Dari Harga {{offer.price}}</p>
                        <span v-for="rating in offer.ratings" :key="rating" uk-icon="icon: star; ratio: 0.8"></span>
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
                offers: [{
                        title: 'Jalan-jalan ke ancol 20% OFF',
                        image: 'https://via.placeholder.com/500x200',
                        price: 'IDR:300K',
                        ratings: 3
                    },
                    {
                        title: 'Jalan-jalan ke Dufan 30% OFF',
                        image: 'https://via.placeholder.com/500x200',
                        price: 'IDR:500K',
                        ratings: 1
                    },
                    {
                        title: 'Jalan-jalan ke Malioboro 10% OFF',
                        image: 'https://via.placeholder.com/500x200',
                        price: 'IDR:500K',
                        ratings: 5
                    },
                    {
                        title: 'Paket Perjalanan singapur 20% OFF',
                        image: 'https://via.placeholder.com/500x200',
                        price: 'IDR:700K',
                        ratings: 1
                    },
                    {
                        title: 'Umroh, sekalian jalan-jalan 20% OFF',
                        image: 'https://via.placeholder.com/500x200',
                        price: 'IDR:1000K',
                        ratings: 4
                    },

                ]
            }
        }
    };
</script>