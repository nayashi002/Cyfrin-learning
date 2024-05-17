// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;//solidity version
contract Simplestorage{
    uint256 favoriteNumber;
//favourite number is initialzed to zero if no number is given
  //ARRAY
 // uint256 [] myfavoriteNumber;
  struct newPerson{
      string name;
    uint256 myfavoriteNumber;
  
  }
  
  newPerson[] public listOfPeople;//this is a dynamic array(this array can grow or shrink)
  //newPerson[3] public listOfPeople;//this is know as a static array(has a defined number of array)
  //Mapping
  mapping (uint256 => string) public newFavouriteNumberToString;
  
  function score(uint256 _favouriteNumber) public virtual {
    favoriteNumber = _favouriteNumber;
  

 
  }
function retrieve() public view returns(uint256){
  return favoriteNumber;
}
//Memory,Calldata,Storage
 function addPerson(string memory _name,uint256 _newFavouriteNumber) public {
  listOfPeople.push(newPerson(_name, _newFavouriteNumber));
  newFavouriteNumberToString[_newFavouriteNumber] = _name;
 }

}









