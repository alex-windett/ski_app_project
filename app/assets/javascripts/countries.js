(function(){

  var app = angular.module("skiApp", []);

  app.controller("SkiController", ["$scope", "$http", function($scope, $http){

    countries = []
    $scope.countries = countries

    $http.get("/countries.json").success(function(data){
      $scope.countries = data
    })

    $scope.addCountry = function(){
      $http.post("/countries.json", {country: $scope.newCountry}).success(function(data){
        $scope.countries.push($scope.newCountry)
        $scope.newCountry = false
        $scope.countryForm.$setPristine
      });
    }

    $scope.addResort = function(){
      $http.post("/resorts.json", {resort: $scope.newResort}).success(function(data){
        $scope.resorts.push($scope.newResort)
        $scope.newResort = false
        $scope.resortForm.$setPristine
      })
    }

    $scope.selectCountry = function(country){
      $scope.selectedCountry = country;
      $http.get("/resorts.json").success(function(data){
        $scope.resorts = data
      })
      $resorts = []
      $scope.resorts = resorts
    }

    $scope.hideCountry = function(country){
      scope.selectedCountry = []
    }

  }]);

resorts = [
  {
    name: "hello"
  },
  {
    name: "goodbye"
  }
]

})();