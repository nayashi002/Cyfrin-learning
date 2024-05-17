// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {Simplestorage} from "./Simplestorage.sol";
contract StorageFactory{
       Simplestorage[] public  listOfSimpleStorageContracts;
    function createSimpleStorageContract() public{
  Simplestorage newSimpleStorageContract = new Simplestorage();
  listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }
    function sfStore(uint256 _simplestorageIndex,uint256  _newSimpleStoragenumber) public{
      //listOfSimpleStorageContracts[_simplestorageIndex].store(_newSimpleStoragenumber);
    }
   function sfGet(uint256 _simplestorageIndex) public view returns(uint256){
          
         return listOfSimpleStorageContracts[_simplestorageIndex].retrieve();
          
   }
}
