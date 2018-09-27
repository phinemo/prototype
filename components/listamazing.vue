<template>
    <div uk-slider="center: true">
        <div class="uk-position-relative uk-visible-toggle uk-light">

            <ul class="uk-slider-items uk-width-3-4 uk-child-width-1-2@s uk-grid">
                <li v-for="(offer, index) in offers" :key="index" style="padding-left: 10px;">
                    <div class="uk-card uk-card-default">
                        <div class="uk-card-media-top">
                            <img :data-src="offer.image" :alt="offer.title" uk-img>
                        </div>
                        <div class="uk-card-body">
                            <h6 class="uk-card-title">{{offer.title}}</h6>
                            <p style="margin-bottom: 0px;">Mulai Dari Harga {{offer.price}}</p>
                            <span v-for="rating in offer.ratings" :key="rating"  uk-icon="icon: star; ratio: 0.8"></span>
                        </div>
                    </div>
                </li>
            </ul>

            <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous
                uk-slider-item="previous"></a>
            <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next
                uk-slider-item="next"></a>

        </div>
        <hr style="margin-top: 30px; margin-bottom: 10px;">
    </div>
</template>

<script>
    module.exports = {
        data: function () {
            return {
                offers:[
                    {title:'Jalan-jalan ke ancol 20% OFF',
                    image:'https://via.placeholder.com/500x100',
                    price:'IDR:300K',
                    ratings : 3},
                    {title:'Jalan-jalan ke Dufan 30% OFF',
                    image:'https://via.placeholder.com/200x100',
                    price:'IDR:500K',
                    ratings : 1},
                    {title:'Jalan-jalan ke Malioboro 10% OFF',
                    image:'https://via.placeholder.com/500x100',
                    price:'IDR:500K',
                    ratings : 5},
                    {title:'Paket Perjalanan singapur 20% OFF',
                    image:'https://via.placeholder.com/500x100',
                    price:'IDR:700K',
                    ratings : 1},
                    {title:'Umroh, sekalian jalan-jalan 20% OFF',
                    image:'https://via.placeholder.com/500x100',
                    price:'IDR:1000K',
                    ratings : 4},

                ]
            }
        }
    };
</script>