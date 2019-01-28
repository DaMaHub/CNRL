pragma solidity ^0.4.22;
/// @title dataType - heartChain
contract dataType {

  address genesis;
  bool live;
  bytes32[] public bridgeData;

  struct dataType {
    string name;
    string spec;
  }

  struct dataLink {
    string name;
    string formatdetail;
  }

  dataType public liveDataType;
  // Constructor
   constructor() public {
    genesis = msg.sender;
  }

  function setStatus () public returns(bool live) {
  	live = false;
  	return live;
  }

  function getDatatypeStatus() public constant returns(bool) {
     return live;
  }

  /**
   * @dev Set the DataType
   * Name
   *   Format
   *   how the dataType will be described
   *  .
   *  true bool if all the contract address is saved.
   */
  function registerDataType (string _name, string _spec) public returns(bool) {
    liveDataType.name = _name;
    liveDataType.spec = _spec;
  	return true;
  }

  /**
   *  Function capture in JSON LD dataType and links to sources
   *
   *
   *  sameAs  semantic implement via a smart contract.
   *  Do we need to check these?
   *  true bool if all the contract address is saved.
   */
  function linkedData (bytes32[] _solidLinks) public returns(bool) {
    bridgeData = _solidLinks;
  	return true;
  }

  function remove() private {
    if (msg.sender == genesis){
      selfdestruct(genesis);
    }
  }

}
