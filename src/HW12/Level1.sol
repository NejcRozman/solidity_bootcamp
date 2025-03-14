// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract Level1Template {

    function solution(uint256[2][3] calldata x, uint256[2][3] calldata y) external pure returns (uint256[2][3] memory finalArray) {
      for (uint i = 0; i < 3; ++i) {
            for(uint j =0 ; j < 2;++j){
                finalArray[i][j]=x[i][j]+y[i][j];
            }
        }

    }
}