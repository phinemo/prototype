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
                            <a class="uk-navbar-toggle" uk-search-icon href="#" @click="hidden = !hidden"></a>
                            <div class="uk-drop" uk-drop="mode: click; pos: left-center; offset: 0">
                                <form class="uk-search uk-search-navbar uk-animation-sl ide-right uk-width-1-1">
                                    <input class="uk-search-input " type="search" placeholder="Search..." autofocus>
                                </form>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
            <div id="offcanvas-menu" uk-offcanvas="overlay:true">
                <div class="uk-offcanvas-bar uk-flex uk-flex-column">
                    <button class="uk-offcanvas-close" type="button" uk-close></button>
                    <ul class="uk-nav uk-nav-primary uk-nav-center uk-margin-auto-vertical">
                        <li class="uk-active"><a href="/">HOME</a></li>
                        <li class="uk-active"><a href="#">POPULER</a></li>
                        <li class="uk-active">
                            <a href="#">ARTICLE</a>
                            <ul class="uk-nav-sub">
                                <li><a href="category/news/">NEWS</a></li>
                                <li><a href="category/travel-ideas/">TRAVEL IDEAS</a></li>
                                <li><a href="category/infografik/">INFOGRAPHIC</a></li>
                                <li><a href="category/podcast/">PODCAST</a></li>
                                <li><a href="category/story/">STORY</a></li>
                            </ul>
                        </li>
                        <li class="uk-active">
                            <a href="#">COMMUNITY</a>
                            <ul class="uk-nav-sub">
                                <li><a href="s/user/login/">SIGN IN / SIGN UP</a></li>
                                <li><a href="s/">ALL</a></li>
                                <li><a href="s/user/rank/">TOP USER</a></li>
                            </ul>
                        </li>
                        <li class="uk-nav-divider"></li>
                        <ul class="uk-nav-sub">
                            <li><a href="about/">ABOUT US</a></li>
                            <li><a href="careers/">WORK FOR US</a></li>
                            <li><a href="advertise/">ADVERTISE</a></li>
                            <li><a href="contact/">CONTACT US</a></li>
                            <li><a href="#">HELP</a></li>
                        </ul>
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
            }
        }
    }
</script>
<style scoped>

</style>