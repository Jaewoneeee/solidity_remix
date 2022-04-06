// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

contract ArrCont {
    // Arrays
    uint[] public uintArr = [1, 2, 3];
    string[] public strArr = ["Lionel Messi", "Christiano Ronaldo", "Kevin De Bruyne", "Son"];
    string[] public values;
    uint[][] public arr2d = [
        [10, 20, 30],
        [40, 50, 60]
    ];

    function addValue(string memory _value) public {
        values.push(_value);
    }

    function valueCount() public view returns(uint) {
        return values.length;
    }
}