<template>
    <div>
        <div v-for="(url, index) in urls" :key="index" class="uk-inline uk-height-small uk-flex uk-flex-center uk-flex-middle uk-background-cover uk-light uk-margin-bottom" :data-src="url.site" uk-img>
            <h1>{{url.name}}</h1>
            <a class="uk-button uk-button-default uk-text-small uk-margin-small uk-position-bottom-right" href="">CLICK HERE</a>
        </div>
    </div>


</template>
<script>
    module.exports = {
        data: function () {
            return {
                //url for 
                urls: [{
                    'site': 'https://via.placeholder.com/600x300',
                    'name':'Tokyo'
                },
                {
                    'site': 'https://via.placeholder.com/600x200',
                    'name':'Singapore'
                },
                {
                    'site': 'https://via.placeholder.com/600x100',
                    'name':'Sydney'
                }
            ]
            }
        },
    }
</script>