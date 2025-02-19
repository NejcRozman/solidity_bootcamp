// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/Examples.sol";

contract ExampleTest is Test {

    Examples examples;

    function setUp() public {
        examples = new Examples();
    }

    function testDynamicArrayMapping() public {
        uint[] memory values = new uint[](3);
        values[0] = 10;
        values[1] = 20;
        values[2] = 30;

        examples.setValues(1, values);

        uint valueAtIndex0 = examples.myMapping(1, 0);

        assertEq(valueAtIndex0, 10);
    }
}