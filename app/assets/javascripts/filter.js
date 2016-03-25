    RP = {
        setup: function() {
            $('.ckbox').change(RP.formchange);
            $('#textmin').change( RP.formchange);
            $('#textmax').change( RP.formchange);
            $('#sortid').change( RP.formchange);
        }
        ,
        formchange: function() {

            var brandsArray = $(".ckbox:checked").serializeArray();
            console.log(brandsArray);

            $('form#formid').submit();

            //$('input#subid').click( function() {
            //    $.post( 'site/browse', {brand_ids:brandsArray,cat_id:cat_id});
            //});
            /* $.ajax({type:'GET',
            //var itemIdsArray = [];
            //for (var i = 0, length = a.length; i < length; i++) {
            //    itemIdsArray.push(serializedArray[i]['value']);
            //}
                    url:"site/browse",
                    data:{
                          brand_ids: brandsArray,
                          cat_id: cat_id
                        },
                    dataType: 'html'
                   });
            //return(false);*/
        }


    }

    $(RP.setup);


    $(document).ready(function() {
        var slider=$( "#slider-range" ).slider({
            range: true,
            min: 0,
            max: 500,
            values: [ 75, 250 ],
            slide: function( event, ui ) {
                $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
                console.log(slider.slider("values"));
                $("#data1").val(slider.slider("values"));
            }

        });
        $( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) +
            " - $" + $( "#slider-range" ).slider( "values", 1 ) );

    });