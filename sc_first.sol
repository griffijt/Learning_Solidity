pragma solidity ^0.8.1;

// SPDX-License-Identifier: UNLICENSED

// source is dApp University: https://www.youtube.com/watch?v=ipwxYa-F1uY
// updated to current solidity version:
// - Solidity 0.5.0 introduced mandatory explicit data location declaration for all variables of struct, array or mapping types
//   For this contract: add memory keyword for string parameter
// - Solidity 0.6.8 introduces SPDX license identifiers so developers can specify the license the contract uses
// - Visibility (public/external) is not needed for constructors anymore (starting Solidity 0.7.5): To prevent a contract from being created, it can be marked abstract 

// Purpose: read and write value to the blockchain

contract MyContract {
    string value; //variable will be stored on the blockchain in the contract
    
    //STEP 1: Sets the value variable when contract deployed from the blockchain
    //might want to declare classes or call functions on startup
    //to do this when the contract is called, we use a constructor function
    constructor() {
        value = "DefaultValue";
    }
    
    //STEP 2: Read value from the blockchain
    //public means available to anyone on blockchain
    //returns a string value
    function get() public view returns(string memory) {
        return value;
    }
    
    //STEP 3: Create value from value on blockchain
    //value is variable stored to blockchain
    //_value is an input variable into the function set
    function set(string memory _value) public {
        value = _value;
    }
} 
