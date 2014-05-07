if(typeof timeLine === 'undefined') {
  timeLine = angular.module('timeLine',[function($locationProvider) {
    $locationProvider.html5Mode(true).hashPrefix('!');
  }]);
}

timeLine.controller('getData',['$scope','$http',function($scope,$http) {
  $http.get('json.txt').success(function(data) {
    $scope.dataInfo = data;
    $scope.timeLineWidth = data.length * 80;
    $scope.timeLineHeight = data.length * 46;
  });
}]).controller('getTemplate',['$scope','$http',function($scope,$http) {
  $scope.minTimeLineTemplate = function() {
    return '<div ng-controller="getData"><ol><li class="nav-year" ng-repeat="data in dataInfo"><div pop>{{data.year}}</div><div class="pin"></div></li></ol><div class="line-h line" style="width:' + $scope.dataInfo.length * 80 +'px"></div></div>';   
  };
}]);

timeLine.directive('pop',function($document,$window) {
  return function(scope,element,attr) {
    var json;

    element.on('mouseenter',function() {
      for(var j in scope.dataInfo) {
        if(scope.dataInfo[j].year === element.text()) {
          json = scope.dataInfo[j];
          break;
        }
      }
      $('h2').text(json.title);
      $('#discribe').text(json.discribe);
    });

    element.on('mouseover',function(event) {
      $('.pop-info').css({"top":event.clientY + document.body.scrollTop + document.documentElement.scrollTop + 10,"left":event.clientX + document.body.scrollLeft + document.documentElement.scrollLeft + 10,"display":"block"});
    });

    element.on('mouseout',function(event) {
      $('.pop-info').css({"display":"none"});
    })
  }
});

//这里这样命名是为了避免AngularJS的驼峰分割
//横向的minTimeLine
timeLine.directive('mintimelinenavH',['$document','$window',function($document,$window) {
  return {
    restrict: 'EA',
    template: '<div ng-controller="getData">'
              + '<ol>' 
              + '<li class="nav-year" ng-repeat="data in dataInfo">'
              + '<div pop>{{data.year}}</div>'
              + '<div class="pin"></div>'
              + '</li>'
              + '</ol>'
              + '<div class="line-h" style="width: {{timeLineWidth}}px"></div>'
              + '</div>'
  };
}]);

//竖的minTimeLine
timeLine.directive('mintimelinenavV',['$document','$window',function($document,$window) {
  return {
    restrict: 'EA',
    template: '<div ng-controller="getData">'
              + '<ol style="float:left">'
              + '<li class="nav-year-v" ng-repeat="data in dataInfo">'
              + '<div class="year-v" pop>{{data.year}}</div>'
              + '<div class="pin-v"></div>'
              + '</li>'
              + '</ol>'
              + '<div class="line-v" style="height: {{timeLineHeight}}px"></div>'
              + '</div>'
  };
}]);