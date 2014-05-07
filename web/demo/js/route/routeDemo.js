var demoRouteApp = angular.module('demoRouteApp',['demoApp','ngRoute'])

//路由配置demo
demoRouteApp.config(['$routeProvider',function($route) {
  debugger;
  $route.when('/demoHtml',{templateUrl: '../partials/dataShow.html',controller:demoApp.dataRead}).
  otherwise({redirectTo: '/demoHtml'});
}]);
