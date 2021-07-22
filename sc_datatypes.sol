pragma solidity ^0.8.1;

// SPDX-License-Identifier: UNLICENSED

// source is dApp University: https://www.youtube.com/watch?v=ipwxYa-F1uY
// updated to current solidity version:
// - Solidity 0.6.8 introduces SPDX license identifiers so developers can specify the license the contract uses

// Purpose: introduce and describe basic data types in Solidity

contract MyContract {
    //variable will be stored on the blockchain in the contract
    string public value = "myString"; 
    bool public myBool = true; //declare boolean variable named myBool and set default to true
    //integers can be:
    // - signed: + or -
    // - unsigned: >=0
    int public myInt = -1; //declare signed integer variable named myInt and set default to 1
    uint public myUint = 1; //declare unsigned integer... cannot be negative
    uint8 public myUint8 = 8; //declare unsigned integer of memory 8 bits
    uint256 public myUint256 = 99999; //declare unsigned integer of memory 256 bits
    }
