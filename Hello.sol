// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld {
    string greeting;
    constructor(){
        greeting="hello world";
    }

    function sayHello()public  view returns (string memory){
        return greeting;
    }
}