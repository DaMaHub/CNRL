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

  function registerDataType (address ) returns(bool) {

  	return true;
  }

  function returnDataType() public constant returns(bool) {
     return true;
  }

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
