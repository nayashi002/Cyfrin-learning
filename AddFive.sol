// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;
//INHERITANCE
import {Simplestorage} from "./Simplestorage.sol";
contract AddFiveStorage is Simplestorage{
  function score(uint256 _newNumber)public override {
 favoriteNumber = _newNumber +5;
}
}

