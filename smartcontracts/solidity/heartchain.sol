pragma solidity ^0.4.22;
/// @title heartChain contract
contract heartChain {

  address genesis;
  bool live;
  struct Device {
    string idenity;
    string firmware;
    string [] sensors;
  }
  struct Sensor {
    string datatype;
    string structure;
    string source;
    string tidy;
    string resolution;
    string [] proof;
  }

  mapping(address => uint) public hcPeers;
  Device public liveDevice;
  Sensor [] public liveSensor;

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

  function registerDevice (string deviceID, string deviceFW, string [] sensorsIn) public returns(bool successful) {
    liveDevice.identity = deviceID;
    liveDevice.firmware = deviceFW;
    for (uint i = 0; i < sensorsIn.length; i++) {
      liveDevice.sensors.push(sensorsIn[i]);
    }
  	return true;
  }

  function returnDevice() public constant returns(bool) {
     return liveDevice;
  }

  function dataType (string hashLDfile, string hashTidy) public returns(bool successful) {
  	liveSensor.datatype = hashLDfile;
  	return true;
  }

  function dataStructure (string sensorID, string formatRequired) public returns(bool successful) {
  	liveSensor[sensorID].stucture = formatRequired;
  	return true;
  }

  function dataSource (string sensorID, string storageHash) public returns(bool successful) {
  	liveSensor[sensorID].source = storageHash;
  	return true;
  }

  function dataTidy (string sensorID, string hashTidy) public returns(bool successful) {
  	liveSensor[sensorID].tidy = hashTidy;
  	return true;
  }

  function dataResolution (string sensorID, string protocolupdate) public returns(bool successful) {
  	liveSensor[sensorID].resolution = protocolupdate;
  	return true;
  }

  function proofOfdata (string sensorID, string Hashtimestamp) public returns(bool successful) {
  	liveSensor[sensorID].proof.push(Hashtimestamp);
  	return true;
  }

  function remove() private {
    if (msg.sender == genesis){
      selfdestruct(genesis);
    }
  }

}
