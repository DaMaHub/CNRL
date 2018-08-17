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
    address datatype;
    string structure;
    string source;
    string tidy;
    string resolution;
    string [] proof;
  }

  mapping(address => uint) public hcPeers;
  Device public liveDevice;
  Sensor [] public liveSensor;
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
   * @dev Function to register a hardware device
   * @param deviceID string the mac or unique ID of the hardware.
   * @param deviceFW string the hash of a storage location for the firmware file.
   * @param sensorsIn Array the number of sensor on the hardware device.
   * @return true bool if all the elements are saved.
   */
  function registerDevice (string deviceID, string deviceFW, string [] sensorsIn) public returns(bool successful) {
    liveDevice.identity = deviceID;
    liveDevice.firmware = deviceFW;
    for (uint i = 0; i < sensorsIn.length; i++) {
      liveDevice.sensors.push(sensorsIn[i]);
    }
  	return true;
  }

  /**
   * @dev Function to check hardware data saved
   * @return liveDevice array of all the data.
   */
  function returnDevice() public constant returns(bool) {
     return liveDevice;
  }

  /**
   * @dev Function to reference dataType contract
   * @param dataTypeContract  the contract address of the dataType
   * @dev ideally want to couple this together not human used as link.
   * @dev .
   * @return true bool if all the contract address is saved.
   */
  function dataType (address dataTypeContract) public returns(bool successful) {
  	liveSensor.datatype = dataTypeContract;
  	return true;
  }

  /**
   * @dev Function a data structure and linked to use
   * @param sensorID keep tabs which data sensor is being used for what data structure
   * @dev thinking each visualisation or ML procress need data in a certain format
   * @dev function to keep track of these mappings.
   * @return true bool if all the contract address is saved.
   */
  function dataStructure (string sensorID, string formatRequired) public returns(bool successful) {
  	liveSensor[sensorID].stucture = formatRequired;
  	return true;
  }

  /**
   * @dev Function to state storage platform
   * @param sensorID string  storage base location (need to consider privacy if required)
   * @param storageHash string - hash address of content address
   * @dev Each storage network will have certain properties these should also be linked to some how?
   * @dev .
   * @return true bool if all the contract address is saved.
   */
  function dataSource (string sensorID, string storageHash) public returns(bool successful) {
  	liveSensor[sensorID].source = storageHash;
  	return true;
  }

  /**
   * @dev Function to provide access to coding to clean up or tidy data provided by the firmware on the device
   * @param sensorID string  storage base location (need to consider privacy if required)
   * @param hashTidy string - hash address of content address
   * @dev
   * @dev .
   * @return true bool if all the contract address is saved.
   */
  function dataTidy (string sensorID, string hashTidy) public returns(bool successful) {
  	liveSensor[sensorID].tidy = hashTidy;
  	return true;
  }

  /**
   * @dev Function to log on going compliance with the dataType asserted
   * @param sensorID string  storage base location (need to consider privacy if required)
   * @param Hashtimestamp string - hash address of content address
   * @dev must be possible to include and prove the dataType contract is included in the package hash of the new data added.
   * @dev .
   * @return true bool if all the contract address is saved.
   */
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
