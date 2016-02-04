/**
 * Created by Usuario on 27/01/2016.
 */

(function($){
    app={
        init: function (){
            sliderBikesSP.init();
            marcasServicios.init();
        }
    };
    
    marcasServicios = {
        init: function () {
            this.elementos();
            this.eventos();
        },
        elementos: function () {
            //Botones
            this.$btnRepuestos = $("#btnRepuestos");
            this.$btnDistribuidores = $("#btnDistribuidores");
            this.$btnCentrosServices = $("#btnCentrosServices");
            //Contenedores
            this.$ctndRepuestos = $("#content-repuestos");
            this.$ctndDistribuidores = $("#content-distribuidores");
            this.$ctndCentrosServices = $("#content-centrosServicios");
            //Destacados
            this.$ctndRepuestosDest = $("#content-repuestosDest");
            this.$ctndDistribuidoresDest = $("#content-distribuidoresDest");
            this.$ctndCentrosServicesDest = $("#content-centrosServicesDest");
        },
        eventos: function () {
            var ms = this;
            ms.$btnRepuestos.on("click", function () {
                ms.$ctndRepuestos.show();
                ms.$ctndDistribuidores.hide();
                ms.$ctndCentrosServices.hide();

                ms.$ctndRepuestosDest.show();
                ms.$ctndDistribuidoresDest.hide();
                ms.$ctndCentrosServicesDest.hide();
            });
            ms.$btnDistribuidores.on("click", function () {
                marcasServicios.$ctndRepuestos.hide();
                ms.$ctndDistribuidores.show();
                ms.$ctndCentrosServices.hide();

                ms.$ctndRepuestosDest.hide();
                ms.$ctndDistribuidoresDest.show();
                ms.$ctndCentrosServicesDest.hide();
            });
            ms.$btnCentrosServices.on("click", function () {
                ms.$ctndRepuestos.hide();
                ms.$ctndDistribuidores.hide();
                ms.$ctndCentrosServices.show();

                ms.$ctndRepuestosDest.hide();
                ms.$ctndDistribuidoresDest.hide();
                ms.$ctndCentrosServicesDest.show();
            });
        }
    };
    
    sliderBikesSP={
        init: function(){
            this.elements();
            this.sliderAction();
        },
        elements: function () {
            this.$sliders=$(".sliderBSD");
        },
        sliderAction: function () {
            var $sliders = this.$sliders;
            var i = 0;
            $($sliders[i]).show();
            i++;
            setInterval(function(){
                switch (i){
                    case 0:
                        $($sliders[i]).show();
                        $($sliders[3]).hide();
                        i++
                        break;
                    case 1:
                        $($sliders[i]).show();
                        $($sliders[0]).hide();
                        i++
                        break;
                    case 2:
                        $($sliders[i]).show();
                        $($sliders[1]).hide();
                        i++
                        break;
                    case 3:
                        $($sliders[i]).show();
                        $($sliders[2]).hide();
                        i=0;
                        break;
                }
            },6000);

        }
    };

    return{
        init:app.init()
    };

})(jQuery);