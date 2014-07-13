var Admin;

Admin = (function() {
  function Admin($scope, someService) {
    $scope.coolMethod = someService.coolMethod();
  }

  return Admin;

})();

angular.module('app').controller('adminController', ['$scope', 'someService', Admin]);
