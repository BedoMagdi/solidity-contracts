// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage{
    
    //our number
    uint256 favoriteNumber;

    //struct to represent a person
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavouriteNumber;

    //simple store function
    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }

    //view number
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    //add a new person
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People(_favoriteNumber, _name));
        nameToFavouriteNumber[_name] = _favoriteNumber;
    }
}