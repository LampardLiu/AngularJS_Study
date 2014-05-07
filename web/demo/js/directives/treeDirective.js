var treeApp = angular.module('treeApp',[]);
treeApp.directive("tree", function($compile) {
return {
    restrict: "E",
    scope: {family: '='},
    template: 
        '<p>{{ family }}</p>'+
        '<ul>' + 
            '<li ng-repeat="child in family">{{child}}' + 
                '<tree family="child"></tree>' +
            '</li>' +
        '</ul>',
    compile: function(tElement, tAttr) {
        var contents = tElement.contents().remove();
        var compiledContents;
        return function(scope, iElement, iAttr) {
            if(!compiledContents) {
                compiledContents = $compile(contents);
            }
            compiledContents(scope, function(clone, scope) {
                     iElement.append(clone); 
            });
        };
    }
};
});