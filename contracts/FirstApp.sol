// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract App {
    // Creat an APP that increase and decrease the count stored in this contract.
    uint256 count;

    function getCount() public view returns(uint256){
        return count;
    }

    function increaseCount() public {
        count++;
    }

    function decreaseCount() public {
        count--;
    }
    
}