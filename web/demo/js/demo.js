//创建一个modules
var demoApp = angular.module('demoApp',[]);

//创建一个Controller
demoApp.controller('demoList',['$scope',function($scope) {
  $scope.demoTitle = 'Demo of AngularJS';
  $scope.demoList = [{dis:'双向绑定',url:'../demo/demoHtml/dataBind.html'},
                     {dis:'表单demo',url:'../demo/demoHtml/formDemo.html'},
                     {dis:'Http数据读取demo',url:'../demo/demoHtml/httpDemo.html'},
                     {dis:'拼图demo',url:'../demo/demoHtml/spellImage.html'}];
}]).
//表单demo
controller('formDemo',['$scope',function($scope) {
  $scope.demoTitle = 'FormDemo';
  $scope.user = {};
  $scope.updated = false;
  $scope.count = -1;
  
  $scope.save = function(user) {
    if (typeof user !== 'undefined') {
      $scope.user = user;
      $scope.updated = true;
    }
  };

  //检测user.prototype，如果最后一个参数为flase则只检测该对象
  $scope.$watch('user',function() {
    $scope.count ++;
  },true);
}]).
//拼图demo
controller('spileImage',['$scope',function($scope) {
  $scope.demoTitle = 'SpileImage';
  $scope.loadImage = function(elementID) {
    var board = angular.element(document.getElementById(elementID))[0];
    board.setAttribute('style','background:url(\'../img/spellImage_1.png\');width:396px;height:371px;');
  }
}]).
controller('dataRead',['$scope','$http',function($scope,$http) {
  $http.get('../data/data.txt').success(function(data) {
    $scope.dataList = data;  
  }).error(function(data) {
    $scope.dataList = '[{"name":"NODATA"}]';
  });
}]);