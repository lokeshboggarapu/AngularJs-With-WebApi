<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AngularJSGet.aspx.cs" Inherits="WebApplication3.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1289px;
        }
    </style>
    </head>
<body ng-app="lokeshget" ng-controller="lokeshctrlget" style="height: 327px">
    
    <div>
    <label>
        CustomerID
    </label>
        <input type="text" ng-model="customerID">
        </input>
        <input type="submit" ng-click="lokgetfunction()" />   
       
    </div>
    <ul >
      
        <li>{{customer.CustomerID}}</li>
        <li>{{customer.Fax}}</li>
    </ul>    
    </body>

    <script>
      
        var app = angular.module("lokeshget", [])
        debugger
        app.controller("lokeshctrlget", function ($scope, $http) {
            $scope.lokgetfunction = function () {
                var ID = $scope.customerID;                
                $http({
                    method:'GET',
                    url: 'http://localhost:53499/api/Customer/' + ID,
                    dataType: "json",
                    xhrFields: true
                }).success(function (data, status, error, config) { $scope.customer = data, window.alert("get successfull" +JSON.stringify(data)); }).error(function (myerror) { console.log(myError), window.alert(myError) });
            };
        });


    </script>
</html>
