/**
 * Created by Usuario on 10/02/2016.
 */
(function($){
    var app={
        init: function (){
            register.init();
        }
    };

    var register={
        init: function () {

            $.getJSON(urlbase+"/resources/js/colombia/colombia.json")
                .done(function (data) {
                    $.each(data, function (i, elm) {
                        console.log(elm.departamento);
                    });
                    //console.log();
                })
                .fail(function () {

            });


            //this.elements();
        },
        elements: function () {
        },
        actions: function () {

        }
    }

    return{
        init:app.init()
    };

})(jQuery);
