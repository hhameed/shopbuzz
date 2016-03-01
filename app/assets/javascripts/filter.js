    RP = {
        setup: function() {
            $('.ckbox').change(RP.func);
        },
        func: function() {

            var brandsArray = $(".ckbox:checked").serializeArray();
            console.log(brandsArray);
            console.log(brandsArray[0].value);
            var cat_id=RP.getUrlParameter('category_id');
            console.log(cat_id);

            //var itemIdsArray = [];

            //for (var i = 0, length = a.length; i < length; i++) {
            //    itemIdsArray.push(serializedArray[i]['value']);
            //}
            $.ajax({type:'GET',
                    url:"site/browse",
                    data:{
                          brand_ids: brandsArray,
                          cat_id: cat_id
                        },
                    dataType: "script"
                   });
            //return(false);
        },
        getUrlParameter: function (sParam) {
            var sPageURL = decodeURIComponent(window.location.search.substring(1)),
                sURLVariables = sPageURL.split('&'),
                sParameterName,
                i;

            for (i = 0; i < sURLVariables.length; i++) {
                sParameterName = sURLVariables[i].split('=');

                if (sParameterName[0] === sParam) {
                    return sParameterName[1] === undefined ? true : sParameterName[1];
                }
            }
        }
    }

    $(RP.setup);
    
