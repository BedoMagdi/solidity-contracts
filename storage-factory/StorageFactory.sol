// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory is SimpleStorage{

    SimpleStorage[] public simpleStorageArr;

    function createSimpleStorageContract() public{
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArr.push(simpleStorage);
    }

    function sFStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
        //to interact with a contract, we need:
        //Address, ABI (application binary interface 
        return SimpleStorage(address(simpleStorageArr[_simpleStorageIndex])).store(_simpleStorageNumber);
    }

    //retreive the number of a storage
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        return SimpleStorage(address(simpleStorageArr[_simpleStorageIndex])).retrieve();
    }
}