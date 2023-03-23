// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.15; 

contract payableSample { 
    
    address payable public Owner;
 
    constructor () { 
        Owner = payable (msg.sender);
    } 
    
    receive() external payable{}
    function withdraw (uint _amount) external{ 
        require(msg.sender == Owner, "caller is not owner");
        payable(msg.sender).transfer(_amount);
       
    }

     
    function TransferEthe(address payable _to, uint _amount) external payable { 
        _to.transfer(_amount);
    
    }


    function getbalance() external view returns(uint) {
        return address(this).balance;
    }



}