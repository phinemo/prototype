<template>
  
    <div class=" uk-child-width-1-2@s uk-cover-container" uk-grid>
                <div>
                    <div class="uk-position-bottom-center uk-position-fixed">
                        <div class="" style="z-index: 980;" uk-sticky="offset: 100; bottom: #top;">
                             <div class="uk-button-group">
                                <button class="uk-button uk-button-primary" ><span uk-icon="receiver"></span> Telpon</button>
                                <button class="uk-button uk-button-secondary"><span uk-icon="mail"></span> Pesan</button>
                                <button class="uk-button uk-button-danger"><span uk-icon="world"></span> Website</button>
                            </div>
                        </div>
                    </div>
                </div>
    </div>

</template>

<script>
module.exports = {
    data:function(){
        return{
            
        }
    }
};
</script>