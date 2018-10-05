<template>
    <div>
        <div v-for="(url, index) in urls" :key="index" class="uk-inline uk-height-small uk-flex uk-flex-center uk-flex-middle uk-background-cover uk-light uk-margin-bottom" :data-src="url.site" uk-img>
            <h1>{{url.name}}</h1>
            <a v-if="url.click == true " class="uk-button uk-button-default uk-text-small uk-text-bold uk-margin-small uk-position-bottom-right" style="border: 0.15em solid #fff;" :href="url.url">{{url.link}}</a>
        </div>
    </div>


</template>
<script>
    module.exports = {
        data: function () {
            return {
                //url for 
                urls: [{
                    'site': 'img/Bintan.jpg',
                    'name':'Bintan',
                    'click':true,
                    'link':'CLICK HERE',
                    'url':'kategori.html'
                },
                {
                    'site': 'img/raja_ampat_banner.jpg',
                    'name':'Raja Ampat',
                    'click':false,
                    'url':'kategori.html'
                },
                {
                    'site': 'img/Derawan.jpg',
                    'name':'Derawan',
                    'click':false,
                    'url':'kategori.html'
                }
            ]
            }
        },
    }
</script>