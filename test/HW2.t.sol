// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/HW2.sol";

contract HW2Test is Test {

    HW2 hw2;

    function setUp() public {
        hw2 = new HW2();
    }

    function testDeleteValidIndex() public {
        uint256 initialLength = hw2.getLength();
        hw2.deleteAtIndex(2); // Delete index 2

        uint256 newLength = hw2.getLength();
        assertEq(newLength, initialLength - 1, "Length should decrease by 1");
    }

    function testDeleteLastElement() public {
        uint256 lastIndex = hw2.getLength() - 1;
        hw2.deleteAtIndex(lastIndex); // Deleting the last element

        uint256 newLength = hw2.getLength();
        assertEq(newLength, lastIndex, "Deleting last element should reduce length");
    }

    function testOutOfBoundsDeletion() public {
        uint256 lastIndex = hw2.getLength() - 1;

        // Delete last element
        hw2.deleteAtIndex(lastIndex);

        // Expect an out-of-bounds revert when trying to delete an invalid index
        vm.expectRevert("index out of range");
        hw2.deleteAtIndex(lastIndex); // ❌ Should fail because it's now out of bounds
    }

    function testAccessDeletedElement() public {
        hw2.deleteAtIndex(2);

        // Expect revert when accessing out-of-bounds index
        uint256 lengthAfterDeletion = hw2.getLength();        
        uint256 [] memory arr = hw2.getArray();
        vm.expectRevert(); // We don't need a specific message, any revert is expected
        arr[lengthAfterDeletion]; // ❌ Should fail because it's now out of bounds
    }
}