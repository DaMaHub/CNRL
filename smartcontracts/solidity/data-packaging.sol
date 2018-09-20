pragma solidity ^0.4.22;
/// @title dataPackaging - heartChain
contract dataPackaging {

  address genesis;
  bool live;
  struct dataPackaging {

  }

  // Constructor
   constructor() public {
    genesis = msg.sender;
  }

  function livePackaging () private returns(bool successful) {
  	live = true;
  	return true;
  }

  function getDataPackagingStatus() private constant returns(bool) {
     return live;
  }

  /**
   * @dev Set the Packaging 'rules'
   * @param
   * @param
   * @dev
   * @dev
   * @return
   */
  function packagingStructure () private returns(bool) {

  }

  function remove() private {
    if (msg.sender == genesis){
      selfdestruct(genesis);
    }
  }

}
