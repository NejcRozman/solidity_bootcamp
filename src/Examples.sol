// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Examples {
    uint private score = 5;
    address owner;

    mapping(uint => uint[]) public myMapping;
    mapping(uint => uint[3]) public myFixedMapping;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    function setValues(uint key, uint [] memory values) public {
        myMapping[key] = values;
    }

    function setFixedValues(uint key, uint [3] memory values) public {
        myMapping[key] = values;
    }

    function getScore() public view returns (uint) {
        return score;
    }

    function setScore(uint _score) public onlyOwner {
        score = _score;
    }
}
