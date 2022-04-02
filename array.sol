// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;
contract array
{
    //initialize array
     uint[4] public arr=[10,20,30,40];
     
    //setter function
    function setter(uint index,uint value)public{
        arr[index]=value;
    } 

    //get length of array 
    function length() public view returns(uint){
        return arr.length;
    }
}