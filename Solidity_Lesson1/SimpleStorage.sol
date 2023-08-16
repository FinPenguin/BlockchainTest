// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;  // hehehhe

// EVM - Ethereum Virtual Machine
// Avalanche, Fantom, Polygon   <-- EVM Compatible

contract SimpleStorage {

    // boolean, uint, int, address, bytes 
    /*
    bool hasFavNum = true;
    uint256 favNum = 5; //it can go from 8 to 256 bits (uint8-uint256) - default vaue is 256  PS: Same with int
    int256 favInt = -5;
    string favNumInText = "Five";
    address myAddress = 0x10888960320E43DF1977A6E624F519109b1A9e54;
    bytes32 favBytes = "cat"; //bytes8 to bytes32
    */

    //This gets initialized to 0
    uint256 favouriteNumber;

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    //view, pure expend 0 gas

    // view is used to view some value on the blockchain
    // functions can be declared view in which case they promise not to modify the state

    //if a gas calling function calls a view or pure function - only then will it cost gas

    function retrieve() public view returns(uint256){
        return favouriteNumber;
    }


    struct People {
        uint256 favouriteNumber;
        string name;
    }
  
    //People public person = People({favouriteNumber:5, name:"Gaurang"});


    // uint256[5] public favouriteNumberList;    <-- Static Array
    People[] public person;         // <-- Dynamic Array
    mapping(string => uint256) public nameToFavouriteNumber;

    function addPerson(string memory _name, uint256 _favouriteNumber) public {

        // People memory newPerson = People({name: _name, favouriteNumber: _favouriteNumber});
        // person.push(newPerson);

        person.push(People(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;

    }

    // calldata, memory, storage
    // calldata and memory is used when we won't use the variable anywhere else whereas MEMORY means we can use the variables else where as well
    // calldata means that you cannot change the value of that variable in its lifetime

    // specification like memory is required for arrays, structs and mappings
    // string is like an array of bytes therefore we need to specify memory for it, the compiler already knows where uint256 will be stored


    // 0xd9145CCE52D386f254917e481eB44e9943F39138
}
