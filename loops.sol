// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

contract array 
{
    uint[3] public arr;
    uint public count;

    function loop() public{
       while(count < arr.length){
       count ++; 
       }
    }

    function forloop() public {
        for(uint i=count;i<arr.length;i++){
          arr[count]=count + 2;
          count ++ ;
        }
    }
}