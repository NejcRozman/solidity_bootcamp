// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract HW4Ordered {

    struct payments {
        
        uint256 amount;
        uint256 finalAmount;
        uint256 initialAmount;
        address receiver;  
        address sender; 
        bool valid;        
        uint8 paymentType;              
        bool checked;        
    }
    uint256 public number;    
    mapping (address=>uint256) balances;
    payments[8] topPayments;
    address admin;
    address admin2;    
    uint8 index;    
    bool flag1;
    bool flag2;    
    bool flag3;
    


    constructor(){

    }


    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}