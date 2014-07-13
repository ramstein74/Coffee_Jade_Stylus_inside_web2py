class Admin extends Controller
  constructor: ($scope, someService) ->
    $scope.coolMethod = someService.coolMethod()