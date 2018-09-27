<template>
    <div uk-slideshow="animation: push; autoplay: true;" autoplay-interval="3000">
            <div class="uk-position-relative uk-visible-toggle uk-light">
                <ul class="uk-slideshow-items">
                    <li v-for="(cover,index) in covers" :key="index">
                        <img :src="cover.url" alt="" uk-cover>
                        <div class="uk-overlay uk-padding-small uk-overlay-primary uk-position-bottom uk-text-center">
                        <h3 class="uk-margin-remove">Overlay Bottom</h3>
                        <p class="uk-margin-remove">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </div>
                    </li>
                </ul>

                <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous
                    uk-slideshow-item="previous"></a>
                <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next
                    uk-slideshow-item="next"></a>

            </div>
            <ul class="uk-slideshow-nav uk-dotnav uk-flex-center uk-margin"></ul>

        </div>
</template>
<script>
module.exports = {
    data: function(){
        return{
            covers:[
                {url:'https://via.placeholder.com/600x300'},
                {url:'https://via.placeholder.com/600x300'},
                {url:'https://via.placeholder.com/600x300'},
                {url:'https://via.placeholder.com/600x300'}
            ]
        }
    }
}
</script>
