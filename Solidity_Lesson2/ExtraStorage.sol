//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {
    // +5
    // override : Tells the compiler that we are changing an already existing function of the parent
    // virtual : Defined in the parent and enables a function to be overridden

    function store(uint256 _favoritenumber) public override {
        favoriteNumber = _favoritenumber + 5;
    }

}
