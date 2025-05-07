// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public storageContracts;

    function deploySimpleStorage() public {
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
}