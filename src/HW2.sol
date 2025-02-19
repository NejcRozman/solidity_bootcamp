// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract HW2 {

    uint256[] public items;

    constructor() {
        for (uint i = 0; i < 12; i++) {
            items.push(i);
        }
    }
    
    function deleteAtIndex(uint index) public {
        require(index < items.length, "index out of range");

        items[index] = items[items.length - 1];
        items.pop();
    }

    function getArray() public view returns (uint256[] memory) {
        return items;
    }

    function getLength() public view returns (uint256) {
        return items.length;
    }
}