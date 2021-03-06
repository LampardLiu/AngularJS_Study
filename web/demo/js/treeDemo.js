angular.module("myApp", []).
controller("TreeController", ['$scope', function($scope) {
  $scope.templetHtml = 'treeNodes.html';  

  $scope.delete = function(data) {
      data.nodes = [];
  };

  $scope.add = function(data) {
      var post = data.nodes.length + 1;
      var newName = data.name + '-' + post;
      data.nodes.push({name: newName,nodes: []});
  };

  $scope.tree = [{name: "Root", nodes: [{name:"Node-1",nodes:[]},{name:"Node-2",nodes:[]}]}];
}]);