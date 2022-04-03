// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

struct Students{
    uint roll;
    string name;
}

contract demo 
{
    Students public s1;

    constructor(uint _roll,string memory _name){
        s1.roll=_roll;
        s1.name=_name;
    }
    
    function change(uint _roll,string memory _name)public{
    Students memory new_student=Students({
       roll: _roll,
       name: _name
    });
       s1=new_student;
    }

}