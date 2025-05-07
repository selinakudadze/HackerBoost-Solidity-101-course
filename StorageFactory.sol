// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public storageContracts;
    address public owner;

    modifier onlyOwner(){
        require(msg.sender==owner,"Only owner can deploy");
        _;
    }

    constructor(){
        owner=msg.sender;
    }


    function deploySimpleStorage() public onlyOwner{
        SimpleStorage newStorage = new SimpleStorage();
        storageContracts.push(newStorage);
    }

    function setStorageData(uint256 index,uint256 _data) public{
        SimpleStorage storageInstance = storageContracts[index];
        storageInstance.storeNumber(_data);
    }

    function getStorageData(uint256 index) public view returns(uint256){
        return storageContracts[index].getFavoriteNumber();
    }

    function getDeployedContractsCount() public view returns(uint256){
        return storageContracts.length;
    }

}