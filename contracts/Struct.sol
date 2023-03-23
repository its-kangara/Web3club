//SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract school {

    struct Student {
        string name;
        uint studentId;
        bool completed;
    }

    //
    Student[] students;

    function createStudent(string calldata _name, uint _studentId) public{
        student.push(Student(_name, _studentId, False));
    }

}
