var myApp = angular.module("myApp",[]);
myApp.controller("myController", function($scope){
//console.log('..okk')
    $scope.newUser = {};
    $scope.clickedUser = {};
    $scope.users = [
        {userid:'1001', title:'title 1', body:'demo body1'},
        {userid:'1002', title:'title 2', body:'demo body2'},
        {userid:'1003', title:'title 3', body:'demo body3'},
        {userid:'1004', title:'title 4', body:'demo body4'},
        {userid:'1005', title:'title 5', body:'demo body5'},
        {userid:'1006', title:'title 6', body:'demo body6'},
        {userid:'1007', title:'title 7', body:'demo body7'},
        {userid:'1008', title:'title 8', body:'demo body8'},
        {userid:'1009', title:'title 9', body:'demo body9'},
        {userid:'1010', title:'title 10', body:'demo body10'},
    ];
    $scope.saveUser = function(){
        $scope.users.push($scope.newUser);
        $scope.newUser = {};
    };

    $scope.selectUser = function(user){
        //console.log(user)
        $scope.clickedUser = user;
    };

    $scope.updateUser = function(){

    };

    $scope.deleteUser = function(){
        $scope.users.splice($scope.users.indexOf($scope.clickedUser), 1);
    };
});