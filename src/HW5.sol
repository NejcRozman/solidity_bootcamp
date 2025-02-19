// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract HW5 {

    function yulTest() public pure {
        assembly {
            let result := add(0x07, 0x08)
            let freeMem := mload(0x40)
            mstore(freeMem, result)
            mstore(0x40, add(freeMem, 0x20)) //Update the free memory pointer (increment by 32 bytes)
        }
    }    
}