// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage {
    bool public hasFavoriteNumber;
    uint256 public favoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    Person[] public people;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        hasFavoriteNumber = true;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function retrievePeople() public view returns (Person[] memory) {
        return people;
    }


    // datalocation 
    // it can only specified for array,struct or mapping

    // callData, memory, storage

    // callData - temprary veriable that cannot modified
    // memory - temprary veriable that can modified
    // storage - permenat veriable that can modified

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
