// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract Level5Template {
    // Give an overflow-free method for computing the average, rounding up, of 2 signed integers, (a + b) / 2 
    // Your function will take 2 values (a,b) and return the average of these values
    // Keep in mind that you will be rounding the average up (ceil) NOT rounding down (floor)
    // Floor -> rounding towards zero
    // Ceil -> rounding away from zero
    function solution(int256 a, int256 b) external pure returns (int256) {
        int256 halfA = a / 2;
        int256 halfB = b / 2;
        int256 remainderA = a % 2;
        int256 remainderB = b % 2;
        
        return halfA + halfB + ((remainderA + remainderB + 1) / 2);
    }
}