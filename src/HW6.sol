// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AssemblyTest2 {
    function getSentETH() external payable returns (uint value) {
        assembly {
            value := callvalue() // Load msg.value into value and return value            
        }
    }
}