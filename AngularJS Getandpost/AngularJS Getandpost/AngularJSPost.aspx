<%@ Page Language="C#" AutoEventWireup="true" Inherits="WebApplication3.WebForm1" %>
<!DOCTYPE html>

<html>
   
     <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<body ng-app="lokeshapp" ng-controller="lokeshctrl">
    <form ng-submit="lokfunction()" >
        <div>
      <label> CustomerID</label>      
     <input type="text"  ng-model="inputdata.CustomerID" style="width: 142px"/></br>
            
            <label> CompanyName</label>
            <input type="text"  ng-model="inputdata.CompanyName"/></br>
            <label> ContactName</label>
            <input type="text"  ng-model="inputdata.ContactName"/></br>
            <label> ContactTitle</label>
            <input type="text"  ng-model="inputdata.ContactTitle"/></br>
            <label> Address</label>
            <input type="text"  ng-model="inputdata.Address"/></br>
            <label> City</label>
            <input type="text"  ng-model="inputdata.City"/></br>
            <label> Region</label>
            <input type="text"  ng-model="inputdata.Region"/></br>
            <label> PostalCode</label>
            <input type="text"  ng-model="inputdata.PostalCode"/></br>
            <label> Country</label>
            <input type="text"  ng-model="inputdata.Country"/></br>
            <label> Phone</label>
            <input type="text"  ng-model="inputdata.Phone"/></br>
            <label> Fax</label>
            <input type="text"  ng-model="inputdata.Fax"/></br>
            <input type="submit" />
        </div>
   </form>
</body>
<script>
    debugger;
    var app = angular.module("lokeshapp", [])

    //app.config(function ($httpProvider) {
    //    $httpProvider.defaults.headers.common = {};
    //    $httpProvider.defaults.headers.post = {};
    //    $httpProvider.defaults.headers.put = {};
    //    $httpProvider.defaults.headers.patch = {};
    //});
   // var rawdata=$
   // var rawdata = { CustomerID: 'CustomerID', CompanyName: '$scope.CompanyName', ContactName: $scope.ContactName, ContactTitle: $scope.ContactTitle, Address: $scope.Address, City: $scope.City, Region: $scope.Region, PostalCode: $scope.PostalCode, Country: $scope.Country, Phon: $scope.Phone, Fax: $scope.Fax }
    app.controller("lokeshctrl", function ($scope, $http) {        
        $scope.lokfunction = function () {
            var customer = $scope.inputdata;
            $http({
                method: 'POST',
                url: 'http://localhost:53499/api/Customer',
                data: JSON.stringify(customer),
                dataType: "json",
                xhrFields: true
          
            }).success(function (myresponse) { window.alert('Saved Successfully'); }).error(function (myError) {
                console.log(myError), window.alert(myError)
            });
        };
    });
</script>
</html>