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