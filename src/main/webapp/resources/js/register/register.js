/**
 * Created by Usuario on 10/02/2016.
 */
(function($){
    var app={
        init: function (){
        }
    };

    return{
        init:app.init()
    };

})(jQuery);

publicatumoto.factory('MotoService', function ($http) {
    var ubication = {
        getData: function () {
            var req = {
                method: 'GET',
                url: urlbase+"/resources/js/colombia/colombia.json"
            };
            var info = $http(req).then(function (response) {
                return response.data;
            });
            return info;
        }
    }
    return ubication;
});
publicatumoto.controller('registroCtrlr',['$scope','MotoService', function ($scope,ms) {
    ms.getData().then(function (departamentos) {
        $scope.departamentos = departamentos;
    });
    $scope.stlchangeDepartamento= function ( id) {
        $scope.ciudades = [];
        $scope.ciudades = $scope.departamentos[id].ciudades;
    };

}]);
