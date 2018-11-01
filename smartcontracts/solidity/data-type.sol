pragma solidity ^0.4.22;
/// @title dataType - heartChain
contract dataType {

  address genesis;
  bool live;
  bytes32[] public bridgeData;

  struct dataType {
    string name,
    string spec
  }

  struct dataLink {
    string name,
    string format
  }

  dataType public liveDataType;
  // Constructor
   constructor() public {
    genesis = msg.sender;
  }

  function setStatus () private returns(bool live) {
  	live = false;
  	return live;
  }

  function getDatatypeStatus() private constant returns(bool) {
     return live;
  }

  /**
   * @dev Set the DataType
   * @param  Name
   * @param  Format
   * @dev  how the dataType will be described
   * @dev .
   * @return true bool if all the contract address is saved.
   */
  function registerDataType (string _name, string _spec) private returns(bool) {
    liveDataType.name = _name;
    liveDataType.spec = _spec
  	return true;
  }

  /**
   * @dev Function capture in JSON LD dataType and links to sources
   * @param
   * @param
   * @dev sameAs  semantic implement via a smart contract.
   * @dev Do we need to check these?
   * @return true bool if all the contract address is saved.
   */
  function linkedData (bytes32[] _solidLinks) private returns(bool) {
    bridgeData = _solidLinks;
  	return true;
  }

  function remove() private {
    if (msg.sender == genesis){
      selfdestruct(genesis);
    }
  }

}
