// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract Level2Template{
        
    function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray){
        sortedArray = unsortedArray;
        for(uint i = 0; i<9; i++) {
            for(uint j=0; j<9; j++) {
                if(sortedArray[j] > sortedArray[j+1]) {
                    (sortedArray[j], sortedArray[j+1]) = (sortedArray[j+1], sortedArray[j]);
                }
            }
        }
    }
}