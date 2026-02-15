// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Class {
    mapping ( address => uint256 ) public balances;
   
//    You just cannot assign values to it directly outside a function or constructor.
   function transfer()public {
    balances[address(0)] = 1000;
   }
}