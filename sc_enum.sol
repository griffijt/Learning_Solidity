pragma solidity ^0.8.1;

// SPDX-License-Identifier: UNLICENSED

// source is dApp University: https://www.youtube.com/watch?v=ipwxYa-F1uY
// updated to current solidity version:
// - Solidity 0.6.8 introduces SPDX license identifiers so developers can specify the license the contract uses
// - Solidity 0.7.5 stopped requiring visibility (public/external) for constructors. To prevent a contract from being created, it can be marked abstract

// Purpose: introduce concept of enumerated list to create states for a contract

// This code:
// - creates a three state contract: Waiting, Ready and Active
// - sets the default state to Waiting using a constructor function
// - creates a function to set the state to Active
// - creates a function to check and see if the state is Active

contract MyContract {
    
    //Enumerated list or enum
    //allows us to keep track of a list of things in our contract
    
    //create three different "States" the contract could be in
    enum State { Waiting, Ready, Active}
    State public state; //declare a public State variable called state 
    
    //set the default state to waiting on initiation
    constructor() {
        state = State.Waiting;
    }
    
    //create a function we can call to convert the state to Active
    function activate() public {
        state = State.Active;
    }
    
    //function to check if the state is Active
    function isActive() public view returns(bool) {
        return state == State.Active; //if state = State.Active then set bool = 1
    }
    
}
