<template>
    <!-- Navbar Start -->
    <div uk-grid>
        <div class="uk-width-1-1">
            <div uk-sticky="sel-target: .uk-navbar-container; cls-active: uk-navbar-sticky; bottom: #transparent-sticky-navbar">
                <nav class="uk-navbar-container" uk-navbar style="position: relative; z-index: 980;">
                    <div class="uk-navbar-left">
                        <ul class="uk-navbar-nav">
                            <li class="uk-active"><a href="" uk-toggle="target: #offcanvas-menu"><span uk-icon="menu"></span></a></li>
                        </ul>
                    </div>
                    <a class="uk-navbar-center" href="index.html">
                        <div v-bind:class="{ 'uk-hidden': hidden}">
                            <img src="https://www.phinemo.com/wp-content/themes/projectav2/images/114x30xlogo-phinemo.png.pagespeed.ic.qkIeB28U-q.webp"
                                alt="Logo Phinemo" height="" width="">
                        </div>
                    </a>
                    <div class="uk-navbar-right">
                        <div>
                            <a class="uk-navbar-toggle" uk-search-icon href="#modal-full" uk-toggle></a>

                        </div>
                    </div>
                </nav>
            </div>
            <!-- Modal -->
            <div id="modal-full" class="uk-modal-full uk-animation-toggle" uk-modal>
                <div class="uk-modal-dialog">
                    <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
                    <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-middle" uk-grid>
                        <div class="uk-padding uk-margin-top">
                            <form action="">
                                <div class="uk-grid-small">
                                    <div class="uk-form-controls uk-margin uk-width-1-2@s">
                                        <select name="country" id="countryid" class="uk-select">
                                            <option v-for="(country,index) in countries" :key="index" :value="country.value">{{country.name}}</option>
                                        </select>
                                    </div>
                                    <div class="uk-form-controls uk-margin uk-width-1-2@s">
                                        <select name="category" id="categorytryid" class="uk-select">
                                            <option v-for="(category,index) in categories" :key="index" :value="category.value">{{category.name}}</option>
                                        </select>
                                    </div>
                                </div>
                            </form>
                            <form class="uk-search uk-search-navbar uk-animation-sl ide-right uk-width-1-1">
                                <div class="uk-grid-small">
                                    <div class="uk-inline uk-width-1-1">
                                        <a href="" class="uk-search-icon-flip" uk-search-icon></a>
                                        <input class="uk-search-input" type="search" placeholder="Search..." autofocus>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="uk-padding-large">

                        </div>
                    </div>
                </div>
            </div>
            <!-- End Modal -->
            <div id="offcanvas-menu" uk-offcanvas="overlay:true">
                <div class="uk-offcanvas-bar uk-flex uk-flex-column">
                    <button class="uk-offcanvas-close" type="button" uk-close></button>
                    <ul class="uk-nav uk-nav-primary uk-nav-center">
                        <li v-for="(navitem,index) in navitems" :key="index" class="uk-active uk-text-uppercase"><a :href="navitem.ref">{{navitem.name}}</a>
                        <ul class="uk-nav-sub">
                            <li v-for="(subnav,index) in navitem.subnav" :key="index"><a :href="subnav.subref">{{subnav.subname}}</a></li>
                        </ul>
                        </li>
                        <!-- <li class="uk-nav-divider"></li>
                        <ul class="uk-nav-sub">
                            <li><a href="about/">ABOUT US</a></li>
                            <li><a href="careers/">WORK FOR US</a></li>
                            <li><a href="advertise/">ADVERTISE</a></li>
                            <li><a href="contact/">CONTACT US</a></li>
                            <li><a href="#">HELP</a></li>
                        </ul> -->
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- Navbar End -->
</template>
<script>
    module.exports = {
        data: function () {
            return {
                show: false,
                showsearch: false,
                hidden: false,
                countries: [{
                        name: 'Indonesia',
                        value: 'indonesia'
                    },
                    {
                        name: 'Myanmar',
                        value: 'myanmar'
                    },
                    {
                        name: 'Japan',
                        value: 'japan'
                    },
                    {
                        name: 'Korea',
                        value: 'korea'
                    },
                ],
                categories: [{
                        name: 'Most Popular'
                    },
                    {
                        name: 'Newest'
                    },
                    {
                        name: 'Best Seller'
                    },
                    {
                        name: 'Low Price'
                    },
                ],
                navitems:[
                    {name:'Home',ref:'#'},
                    {name:'Hot Offer',ref:'#'},
                    {name:'Popular Trips',ref:'#'},
                    {name:'Phinemo.com',ref:'#',subnav:[
                        {subname:'articles',subref:'/article.html'},
                        {subname:'community',subref:'#'},
                        ]},
                    {name:'About Phinemo Merchant',ref:'#'}
                ]
            }
        }
    }
</script>
<style scoped>

</style>