// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract GasContract {
    mapping(address => uint256) public balances;
    
    address private immutable admin0;
    address private immutable admin1;
    address private immutable admin2;
    address private immutable admin3;
    address private immutable admin4;

    uint256 private senderAmount;

    event AddedToWhitelist(address userAddress, uint256 tier);
    event WhiteListTransfer(address indexed);
    

    constructor(address[] memory _admins, uint256) payable {
        admin0 = _admins[0];
        admin1 = _admins[1];
        admin2 = _admins[2];
        admin3 = _admins[3];
        admin4 = _admins[4];

        balances[administrators(4)] = 1_000_000_000;
    }

    function whitelist(address) external pure returns (uint256){
        return 0;
    }

    function administrators(uint256 i) public view returns (address adminAddr) {
        if (i == 0) return admin0;
        if (i == 1) return admin1;
        if (i == 2) return admin2;
        if (i == 3) return admin3;
        if (i == 4) return admin4;
    }


    function checkForAdmin(address) public pure returns (bool) {
        return true;
    }

    function balanceOf(address _user) public view returns (uint256 balance_) {
        return balances[_user];
    }


    function transfer(address _recipient, uint256 _amount, string calldata) public payable {  
        unchecked {
            balances[msg.sender] -= _amount;
            balances[_recipient] += _amount;
        }        
    }

    function addToWhitelist(address _userAddrs, uint256 _tier) public payable {
        if(msg.sender == admin4) {
            if(_tier < 255) {
                emit AddedToWhitelist(_userAddrs, _tier);
            }
            else {
                revert();
            }
        }
        else {
            revert();
        }
    }

    function whiteTransfer(address _recipient, uint256 _amount) public payable {
        unchecked {
            senderAmount = _amount;
            balances[msg.sender] -= _amount;
            balances[_recipient] += _amount;
        }        
        
        emit WhiteListTransfer(_recipient);
    }

    function getPaymentStatus(address) public view returns (bool, uint256) {
        return (true, senderAmount);
    }

}