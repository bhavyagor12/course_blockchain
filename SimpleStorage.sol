// SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;

contract SimpleStorage {
    //boolean,unit,int,address,bytes
    uint public favouriteNumber; //DEFAULT IS 0

    // bool hasFavoriteNumber = true;
    // string name = "Bhavya";
    // address myAddress = 0xf35239d2c73c1f0e1E5ee8D174E0479a4040c26C;

    //functions
    function store(uint256 _favoriteNumber) public {
        favouriteNumber = _favoriteNumber;
        //0xd9145CCE52D386f254917e481eB44e9943F39138 -- address of contract
    }

    //view function just reads from what is present in the contract, meaning there is no modification of state as a result no gas is spent
    //pure function doesnot allow read / modification of state but instead just performs stuff for the contract that is repeatedly performed like simple math fucntions
    // both the above functions dont spend gas

    //array and struct
    struct People {
        uint256 favouriteNumber;
        string name;
    }

    //map string name mapped to number
    mapping(string => uint256) public nameToFavNumber;

    // uint256[] public favouriteNumberList;
    People[] public people; //dynamic array []

    //static array [3]

    // People public person = People({favouriteNumber:2,name:"bhavya"});

    function addPerson(string memory _name, uint256 _favNumber) public {
        // People memory newPerson = People({favouriteNumber:_favNumber,name: _name});
        people.push(People(_favNumber, _name)); //People object and people is array variable name
        nameToFavNumber[_name] = _favNumber;

        //  people.push(newPerson);
    }
}
