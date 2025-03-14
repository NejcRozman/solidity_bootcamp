// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Level3Template {
    function solution(bytes memory packed) external pure returns (uint16 a, bool b, bytes6 c) {
        assembly {
            // Load the first two bytes (uint16 a)
            a := shr(240, mload(add(packed, 0x20)))

            // Load the third byte (bool b)
            b := byte(2, mload(add(packed, 0x20)))

            // Load the next six bytes (bytes6 c)
            let fullWord := mload(add(packed, 0x23)) // Load 32 bytes from offset 3
            c := and(fullWord, 0xffffffffffff0000000000000000000000000000000000000000000000000000) // Mask to keep only first 6 bytes
        }
    }

}