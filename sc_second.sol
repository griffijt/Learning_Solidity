pragma solidity ^0.8.1;

// SPDX-License-Identifier: UNLICENSED

// source is dApp University: https://www.youtube.com/watch?v=ipwxYa-F1uY
// updated to current solidity version:
// - Solidity 0.5.0 introduced mandatory explicit data location declaration for all variables of struct, array or mapping types
//   For this contract: add memory keyword for string parameter
// - Solidity 0.6.8 introduces SPDX license identifiers so developers can specify the license the contract uses

// Purpose: include minor changes to the first smart contract I wrote found under griffijt/Smart_Contracts/sc_first.sol

// Minor changes to sc_first include:
// - set the default value within Solidity
// - declare variable public in Solidity
// - declare a new variable constant in Solidity 

contract MyContract {
    //variable will be stored on the blockchain in the contract
    string public value = "DefaultValue"; //public means Solidity can recognize variable
    string public constant value2 = "DefaultValue2"; //constant means Solidity will not allow someone calling the function to change the variable
    
    //STEP 1: No longer needed since including = "DefaultValue" after the declaring the value variable
    
    //STEP 2: No longer needed since declaring the variable public allows Solidity to detect it
    
    //STEP 3: Create value from value on blockchain
    //value is variable stored to blockchain
    //_value is an input variable into the function set
    function set(string memory _value) public {
        value = _value;
    }
} 
