pragma solidity ^0.4.22;
/// @title dataType-flow - an implementation for each peer to use
contract dataType-flow {

  address genesis;
  staring public dataProof[]

  // Constructor
   constructor() public {
    genesis = msg.sender;
  }

  /**
   * @return true if contract is live
   */
  function getDflowstatus() public constant returns(bool) {
     return live;
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
   * @dev Function to provide access to coding to clean up or tidy data provided by the firmware on the device
   * @param dataSource string  storage base location (need to consider privacy if required)
   * @param hashTidy string - hash address of content address
   * @dev
   * @dev .
   * @return true bool if all the contract address is saved.
   */
  function dataTidy (string _dataSource, string _hashTidy) public returns(bool successful) {

  	return true;
  }

  /**
   * @dev Function to log on going compliance with the dataType asserted
   * @param _dataHash string - hash address of content address
   * @dev must be possible to include and prove the dataType contract is included in the package hash of the new data added.
   * @dev .
   * @return true bool if all the contract address is saved.
   */
  function proofOfdata (string _dataHash) public returns(bool successful) {
  	dataProof.push(Hashtimestamp);
  	return true;
  }

  function remove() private {
    if (msg.sender == genesis){
      selfdestruct(genesis);
    }
  }

}
