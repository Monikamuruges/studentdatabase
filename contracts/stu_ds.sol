// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentManagementSystem {
    struct Student {
        string name;
        uint rollNumber;
        uint age;
        string Dept;
    }

    mapping(uint => Student) public students;

    function addStudent(string memory _name, uint _rollNumber, uint _age,string memory _Dept) public{
        students[_rollNumber] = Student(_name, _rollNumber, _age,_Dept);
    }

    function getStudentDetails(uint _rollNumber) public view returns (string memory, uint, 
    uint,string memory) {
        return (students[_rollNumber].name, students[_rollNumber].rollNumber, 
        students[_rollNumber].age,students[_rollNumber].Dept);
        
    }
}
        