<template>
  
          <div class="uk-panel uk-width-1-1">
                <img class="uk-width-1-1 uk-height-max-medium" src="img/raja_ampat.jpg" alt="">
                <div class="uk-position-center uk-text-center">
                    <h2 class="uk-margin-remove-bottom uk-text-bold" :style="s_color" uk-slider-parallax="x: 100,-100">Semarang</h2>
                    <p class="uk-margin-remove-top uk-text-bold" :style="s_color" uk-slider-parallax="x: 200,-200">Kota Seribu Macam Wisata Menarik dan Eksotis</p>
                </div>
          </div>

</template>

<script>
module.exports = {
    data:function(){
        return{
           s_color :{color: '#fff'}, 
        }
    }
};
</script>