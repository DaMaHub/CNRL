pragma solidity ^0.4.22;
/// @title dataType - heartChain
contract dataType {

  address genesis;
  bool live;
  struct dataType {
    string name,
    string format
  }

  struct chainLink {
    string name,
    string format
  }
  address chainType;
  dataType public liveDataType;
  chainLInk public liveChains[]

  // Constructor
   constructor() public {
    genesis = msg.sender;
  }

  function liveDatatype () private returns(bool successful) {
  	live = true;
  	return true;
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
  function registerDataType (string _name, string _format) private returns(bool) {
    liveDataType.name = _name;
    liveDataType.format = _format
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
  function registerDataType (string _samas, string _uriResource) private returns(bool) {

  	return true;
  }

  function returnDataType() private constant returns(bool) {
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
  function dataResolution (address chainConnection) private returns(bool successful) {
  	liveChains[] = chainConnection
  	return true;
  }

  function remove() private {
    if (msg.sender == genesis){
      selfdestruct(genesis);
    }
  }

}
