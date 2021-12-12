angular.module('app', []).controller('indexController', function ($scope, $http) {
    const contextPath = 'http://localhost:8181/studentDB';

    $scope.loadStudentsTable = function () {
        $http.get(contextPath + '/student')
            .then(function (response) {
                $scope.Students = response.data;
            });
    };

    $scope.createNewStudent = function () {
        $http({
            url: contextPath + '/student',
            method: 'POST',
            params: {
                name: $scope.Students.name,
                age: $scope.Students.age,
            }
        }).then(function successCallback() {
            alert('Новый студент добавлен.');
            $scope.loadStudentsTable();
        }, function errorCallback(response) {
            alert(response.data.messages);
        });
    };

    $scope.findStudentById = function () {
        $http({
            url: `${contextPath}/student/` + $scope.Students.id,
            method: 'GET',
            headers: {
                'content-type': 'application/json'
            }
        }).then(function successCallback(response) {
            alert('Студент найден в БД.');
            return response.data;
        }, function errorCallback(response) {
            alert(response.data.messages);
        });
    };

    $scope.deleteStudentById = function () {
        $http({
            url: `${contextPath}/student/` + $scope.Students.id,
            method: 'DELETE',
            headers: {
                'content-type': 'application/json'
            }
        }).then(function successCallback() {
            alert('Студент с id: ' + id + 'удален из БД.');
            $scope.loadStudentsTable();
        }, function errorCallback(response) {
            alert(response.data.messages);
        });
    };
    $scope.loadStudentsTable();
});