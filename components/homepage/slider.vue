<template>
     <div class="uk-position-relative uk-visible-toggle uk-light" uk-slider>
            <ul class="uk-slider-items uk-width-3-4 uk-child-width-1-2@s uk-child-width-1-4@m">
                <li v-for="(slider, index) in sliders" :key="index" style="padding-right: 10px;">
                    <div class="uk-margin-small"><a :href="slider.url"><img class="uk-box-shadow-small uk-box-shadow-material-small uk-border-rounded" :data-src="slider.image" :alt="slider.title" height="300" width="600" uk-img></a></div>
                    <div class="uk-position-center uk-panel">
                        <h1>{{slider.title}}</h1>
                    </div>
                </li>
                
            </ul>

            <!-- <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous
                uk-slider-item="previous"></a>
            <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next
                uk-slider-item="next"></a> -->

        </div>
</template>
<script>
module.exports = {
    data:function(){
        return{
            sliders:[
                {title:'Magelang',image:'img/rafting_magelang.jpg',url:'kategori.html'},
                {title:'Tanjung Puting',image:'img/tanjung.jpg',url:'kategori.html'},
                {title:'Labuan Bajo',image:'img/tanjung_benoa.jpg',url:'kategori.html'},
                {title:'Bali',image:'img/tari_kecak.jpg',url:'kategori.html'},
            ]
        }
    }
}
</script>

