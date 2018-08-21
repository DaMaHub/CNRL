pragma solidity ^0.4.22;
/// @title dataType - heartChain
contract dataType {

  address genesis;
  bool live;
  address chainType;
  address dataTypelink;
  mapping(address => uint) public hcPeers;
  mapping(address => uint) public liveChains;

  // Constructor
   constructor() public {
    genesis = msg.sender;
  }

  function liveChain () public returns(bool successful) {
  	live = true;
  	return true;
  }

  function getHCstatus() public constant returns(bool) {
     return live;
  }

  /**
   * @dev Function goverance over upgrading dataType version
   * @param
   * @param
   * @dev List and min. no. of sign offs before upgrade function called for the datatype.
   * @dev When upgraded a crypto tying of version are guaranteed and sovlable.
   * @return true bool if all the contract address is saved.
   */
  function hcGoverannce (address ) returns(bool) {

  	return true;
  }

  /**
   * @dev Function capture in JSON LD dataType and links to sources
   * @param
   * @param
   * @dev .
   * @dev .
   * @return true bool if all the contract address is saved.
   */
  function registerDataType (address ) returns(bool) {

  	return true;
  }

  function returnDataType() public constant returns(bool) {
     return true;
  }

  /**
   * @dev Function to link to other Resolve connection to other scienceChains or other dataType within same Chain
   * @param
   * @param
   * @dev .
   * @dev .
   * @return true bool if all the contract address is saved.
   */
  function dataResolution (address chainConnection) public returns(bool successful) {
  	liveChains[] = chainConnection
  	return true;
  }

  function remove() private {
    if (msg.sender == genesis){
      selfdestruct(genesis);
    }
  }

}
