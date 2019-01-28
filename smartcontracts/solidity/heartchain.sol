pragma solidity ^0.4.22;
/// @title heartChain contract

/* import ./damahub-community-goverance.sol */

contract heartChain {

  address genesis;
  bool live;
  address proposedDatatype
  struct dataTypeList {
    string name,
    time dateAccepted
  }

  mapping(address => uint) public liveDataTypelist;
  address dataTypeContract;

  // Constructor
   constructor() public {
    genesis = msg.sender;
  }

  /**
   * symbolic check contract is there
   */
  function liveChain () public returns(bool successful) {
  	live = true;
  	return true;
  }

  /**
   * @return true if contract is live
   */
  function getHCstatus() public constant returns(bool) {
     return live;
  }

  /**
   * @dev Setup governance & voting for heartChain
   * @param
   * @dev need import a template governance contract
   * @return true bool if the contract address setup.
   */
  function dataType () public returns(bool successful) {
  	/* setup governance smart contract */
  	return true;
  }

  /**
   * @dev
   * @param template DataType contract address
   * @dev This will be current template contract consensus has been aggreed upon
   * @dev Need to keep a log of the version and decision making history
   * @return true bool if all the contract address is saved.
   */
  function dataType (address _dataTypeContract, byte32 _version) public returns(bool successful) {
  	proposedDatatype = _dataTypeContract;
  	return true;
  }

  /**
   * @dev  list of all accepted DataType i.e. pass governance and accepted
   * @param string name of dataType
   * @param address Smart Contract address for the dataType
   * @param time the date the consensus vote accepted
   * @dev also need to keep account of version
   * @return true bool if all the contract address is saved.
   */
  function dataType (string _name, address _dataTypeContract, time _dateAccepted) public returns(bool successful) {
  	liveDataTypelist[_dataTypeContract].name = _name;
    liveDataTypelist[_dataTypeContract].name = _dateAccepted;
  	return true;
  }

  function remove() private {
    if (msg.sender == genesis){
      selfdestruct(genesis);
    }
  }

}
