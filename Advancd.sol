//SPDX-License-Identifier:MIT
pragma solidity ^0.8.25;

import "SimpleStorage.sol";

contract AdvancedStorage is SimpleStorage{
     uint256 public timestamp;
     address public owner;

     modifier onlyOwner(){
        require(msg.sender==owner,"Only owner can access contract");
        _;
     }

     constructor(){
        owner=msg.sender;

     }

     function storeNumber(uint256 _favoriteNumber) public override{
        favoriteNumber=_favoriteNumber;
        timestamp=block.timestamp;
     }

     function getWithTimeStamp() public view returns (uint256,uint256){
        return (favoriteNumber,timestamp);
     }
}
