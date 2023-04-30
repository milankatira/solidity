// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Loops {
    uint256[] public numbers;

    constructor(uint256[] memory _numbers) {
        numbers = _numbers;
    }

    function sumWithForLoop() public view returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }
        return sum;
    }

    function sumWithWhileLoop() public view returns (uint256) {
        uint256 sum = 0;
        uint256 i = 0;
        while (i < numbers.length) {
            sum += numbers[i];
            i++;
        }
        return sum;
    }

    function sumWithDoWhileLoop() public view returns (uint256) {
        uint256 sum = 0;
        uint256 i = 0;
        do {
            sum += numbers[i];
            i++;
        } while (i < numbers.length);
        return sum;
    }
}
