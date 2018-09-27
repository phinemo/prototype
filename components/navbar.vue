<template>
    <nav class="uk-navbar" uk-navbar>
        <div class="uk-navbar-left">
            <ul class="uk-navbar-nav">
                <li class="uk-navbar uk-hidden@s"><a @click="show = !show" uk-toggle="target: #offcanvas-menu">
                        <vk-icon icon="menu"></vk-icon>
                    </a>
                </li>
                <li class="uk-navbar-active uk-visible@s"><a href="#">Home</a></li>
                <li class="uk-navbar-parent uk-visible@s"><a href="#">Item Dropdown</a>
                    <div class="uk-navbar-dropdown">
                        <ul class="uk-nav uk-navbar-dropdown-nav">
                            <li class="uk-active"><a href="#">Item1</a></li>
                            <li><a href="#">Item2</a></li>
                            <li><a href="#">Item3</a></li>
                            <li><a href="#">Item4</a></li>
                        </ul>
                    </div>
                </li>
                <li class="uk-navbar-parent uk-visible@s"><a href="#">Contact</a></li>
                <li></li>
            </ul>
            <a class="uk-position-center" href="#">
                <div v-bind:class="{ 'uk-hidden': hidden}">
                    <img src="https://www.phinemo.com/wp-content/themes/projectav2/images/114x30xlogo-phinemo.png.pagespeed.ic.qkIeB28U-q.webp"
                    alt="Logo Phinemo" height="" width="">
                </div>
            </a>
            <div class="uk-position-right">
                <div>
                    <a class="uk-navbar-toggle" uk-search-icon href="#" @click="hidden = !hidden"></a>
                    <div class="uk-drop" uk-drop="mode: click; pos: left-center; offset: 0">
                        <form class="uk-search uk-search-navbar uk-animation-sl ide-right uk-width-1-1">
                            <input class="uk-search-input " type="search" placeholder="Search..." autofocus>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <vk-offcanvas-content>
            <vk-offcanvas :show.sync="show">
                <vk-offcanvas-close @click="show = false"></vk-offcanvas-close>
                <h3>Title</h3>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                    et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                    aliquip ex ea commodo consequat.
                </p>
            </vk-offcanvas>
        </vk-offcanvas-content>
    </nav>

</template>
<script>
    module.exports = {
        data: function () {
            return {
                show: false,
                showsearch: false,
                hidden:false,
            }
        }
    }
</script>
<style scoped>
    
</style>