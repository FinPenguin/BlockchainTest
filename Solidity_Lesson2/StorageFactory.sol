//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);

    }

    // Address
    // ABI - Application Binary Interface (Every contract has one) <- Go to Compilation Details
    // The above 2 parameters helps us interact with contracts in code/solidity

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) view public returns(uint256) {
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }

}
