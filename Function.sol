// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Functions{
    address owner=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    uint256 myNumber=5;
    function addTwoNumber(uint256 _value)public{
        myNumber+=_value;
    }

    function getNumber() public onlyOwner view returns (uint256){
        return myNumber;
    }

    //middleware
    modifier onlyOwner(){
        require(msg.sender == owner, "you are not a owner");
        _;
    }
}