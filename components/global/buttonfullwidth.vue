<template>
    <a class="uk-button uk-width-1-1 uk-margin-small-bottom" style="color: orange; border: 2px solid orange; background-color: white;" :href="title">{{title}}</a>
</template>
<script>
module.exports = {
    data:() => {
            return{
            
        }
    },
    props:{
        title: String,
    }

}
</script>

