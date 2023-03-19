// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(
        uint256 _simpleStorageIndex,
        uint256 _simpleStorageNumber
    ) public {
        //to interact with a smart contract you are going to need 2 things
        // Address and the ABI (application binary interface) list of all the inputs/outputs to interact

        //  SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        //  simpleStorage.store(_simpleStorageNumber);

        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        // SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        // return simpleStorage.retrieve();
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}
