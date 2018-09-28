<template>
    <div>
        <!-- Button Offer -->
        <div id="mybutton" class="uk-inline">
            <a class="uk-button uk-button-primary uk-border-rounded" href="#modal-full" uk-toggle><span uk-icon="tag"></span>
                Offers</a>
        </div>
        <!-- End Button Offer -->
        <div id="modal-full" class="uk-modal-full" uk-modal>
            <div class="uk-modal-dialog">
                <div class="uk-navbar-container" uk-navbar>
                    <div class="uk-navbar-left">
                        <ul class="uk-navbar-nav">
                            <li><a href=""></a></li>
                        </ul>
                    </div>
                    <div class="uk-navbar-center">
                        <ul class="uk-navbar-nav">
                            <li class="uk-text-lead">Special Offer</li>
                        </ul>
                    </div>
                    <div class="uk-navbar-right">
                        <ul class="uk-navbar-nav">
                            <li><button class="uk-modal-close-full uk-close-large" type="button" uk-close></button></li>
                        </ul>
                    </div>
                </div>
                <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-middle" uk-grid>
                    <!-- Offer List -->
                    <div class=" uk-grid-small uk-animation-fade uk-flex-middle uk-child-width-1-9 uk-child-width-1-2@m uk-child-width-1-3@l uk-padding-small"
                        uk-scrollspy="cls: uk-animation-fade; target: > div > .uk-card; delay: 400; repeat: true"
                        uk-grid>
                        <!-- Card Offer -->
                        <!-- <div class="uk-panel uk-panel-box"> -->
                        <!-- Make zero margin, sticky between "offer", there's no space -->
                        <div v-for="(card,index) in cards" :key="index">
                            <div class="uk-card uk-card-default uk-card-hover">
                                <div class="uk-card-header">
                                    <div class="uk-grid-small uk-flex-middle" uk-grid>
                                        <div class="uk-width-auto">
                                            <img width="70" height="70" src="https://www.ccsmedia.com/media/ccs-logo.svg">
                                        </div>
                                        <div class="uk-width-expand">
                                            <!-- Title -->
                                            <a href="showoffer.html">
                                                <h4 class=" uk-margin-remove-bottom">{{card.title}}</h4>
                                            </a>
                                            <!-- Highlight -->
                                            <div class="uk-grid-small uk-flex-middle" uk-grid>
                                                <div class="uk-width-auto">
                                                    <a href="showoffer.html" class="uk-button uk-button-primary uk-border-rounded">IDR {{card.price}}K</a><br>
                                                    <span v-for="rating in card.rating" :key="rating" class="uk-text-center uk-margin-remove"
                                                        uk-icon="icon:star;ratio:1;"></span>
                                                </div>
                                                <div class="uk-width-expand">
                                                    <ul class="uk-list uk-list-striped">
                                                        <li v-for="(highlight,index) in card.highlights" :key="index"
                                                            class="uk-padding-remove uk-text-small">{{highlight.subtitle}}</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End of UK panel -->
                        <!-- </div> -->
                    </div>
                    <!-- End Offer List -->
                </div>
            </div>
        </div>
    </div>
</template>
<script>
    module.exports = {
        data: function () {
            return {
                cards: [{
                            title: 'Ayung River Rafting Adventure',
                            price: '500',
                            imgurl: '',
                            rating: 5,
                            highlights: [{
                                    subtitle: 'Free pickup'
                                },
                                {
                                    subtitle: 'Free Wi-Fi'
                                },
                                {
                                    subtitle: 'Include Meals'
                                }
                            ]
                        },
                        {
                            title: 'Ubud Rice Terraces, Temples, & Volcano',
                            price: '700',
                            imgurl: '',
                            rating: 3,
                            highlights: [{
                                    subtitle: 'Free Pickup'
                                },
                                {
                                    subtitle: 'Free Wi-Fi'
                                },
                                {
                                    subtitle: 'Include Meals'
                                }
                            ]
                        },
                        {
                            title: 'Snorkeling Day Trip to Nusa Lembongan',
                            price: '1000',
                            imgurl: '',
                            rating: 4,
                            highlights: [{
                                    subtitle: 'Free Pickup'
                                },
                                {
                                    subtitle: 'Free Wi-Fi'
                                },
                                {
                                    subtitle: 'Include Meals'
                                }
                            ]
                        },
                        {
                            title: 'Ubud Waterfalls Tour',
                            price: '700',
                            imgurl: '',
                            rating: 2,
                            highlights: [{
                                    subtitle: 'Free Pickup'
                                },
                                {
                                    subtitle: 'Free Wi-Fi'
                                },
                                {
                                    subtitle: 'Include Meals'
                                }
                            ]
                        },
                        {
                            title: 'North Bali Sunrise Tour',
                            price: '800',
                            imgurl: '',
                            rating: 1,
                            highlights: [{
                                    subtitle: 'Free Pickup'
                                },
                                {
                                    subtitle: 'Free Wi-Fi'
                                },
                                {
                                    subtitle: 'Include Meals'
                                }
                            ]
                        },
                    ],
                data: {
                    
                }
            }
        }
    }
</script>