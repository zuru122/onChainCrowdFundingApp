// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {CrowdFunding} from "./CrowdFunding.sol";

contract CrowdFundingFactory {
    address public owner;
    bool public paused;

    struct Campaign{
        address campaignAddresss;
        address owner;
        string name;
        uint256 creationTime;
    }

    Campaign[] public campaigns;
    mapping(address => Campaign[]) public userCampaigns;

    modifier onlyOwner(){
        require(msg.sender == owner, "Not owner");
        _;
    }

    modifier notPaused(){
        require(!paused, "Factory is paused");
        _;
    }

    
}
