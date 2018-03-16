pragma solidity ^0.4.4;

contract Ownership {
  function Ownership() public {
    // constructor
    owner = msg.sender;
  }

  address public owner ;
  address public farmer;
  address public wholesaler ;
  address public truckingcompany ;
  address public retailer ;
  address public customer ;

  bool isHarvested = false ;

function readytoHarvest(bool tomatoState) internal {
  if (tomatoState) {
    isHarvested = true;
  }  else {
    isHarvested = false;
  }
}

modifier onlyOwner(){
    if (owner == msg.sender ) {
      _;
    }    else {
      revert();
    }
  }

  

}
