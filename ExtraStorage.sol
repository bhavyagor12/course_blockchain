//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import "./SimpleStorage.sol";

//is used for inheritance
contract ExtraStorage is SimpleStorage {
    // +5 to the stored number

    //override the functions (virtual and override)

    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }
}
