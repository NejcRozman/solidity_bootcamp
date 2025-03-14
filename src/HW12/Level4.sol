// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract Level4Template {
    // stdin: 1                     stdout: 1 or 2**0
    // stdin: 10                    stdout: 8 or 2**3
    // stdin: 21                    stdout: 16 or 2**4
    // stdin: 2048                  stdout: 2048 or 2**11
    // stdin: 9223372036854775808   stdout: 9223372036854775808 or 2**63
    // stdin: 0xffffffff            stdout: 2147483648 or 0x80000000 or 2**31
    function solution(uint256 number) external pure returns (uint256) {
        number |= number >> 1;
        number |= number >> 2;
        number |= number >> 4;
        number |= number >> 8;
        number |= number >> 16;
        number |= number >> 32;
        number |= number >> 64;
        number |= number >> 128;

        
        if (number == type(uint256).max) {
            return type(uint256).max/2;
        }

        return (number + 1) >> 1;
    }
}