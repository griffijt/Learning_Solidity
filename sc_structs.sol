pragma solidity ^0.8.1;

// SPDX-License-Identifier: UNLICENSED

// Source is dApp University (22:00-42:00): https://www.youtube.com/watch?v=ipwxYa-F1uY
// Updated to current solidity version:
// - Solidity 0.6.8 introduces SPDX license identifiers so developers can specify the license the contract uses
// - Solidity 0.7.5 stopped requiring visibility (public/external) for constructors
//      To prevent a contract from being created, it can be marked abstract

// Purpose: contract with admin who can create people

// This code:
// - creates a variable to maintain a count of people
// - maps an index number to each Person
// - declare an owner address variable
// - create a custom function modifier that checks owner of contract is user who is calling function
// - define the "Person" struct, or custom data type
// - runs a constructor declaring the owner of the contract the address who deploys it
// - create addPerson function that only the owner can call
// - create incrementCount function to add one to the total count each time a Person is added

contract MyContract {

    //Define array that stores Person structs defined below, public and stored in people variable 
    //Reference elements of array by index number starting at 0, 1, 2, etc.
    //Person[] public people;
    
    //introduce variable to count elements of people array, default value is zero
    uint256 public peopleCount=0;
    
    //define mapping or key-value pair (in this case, uint-Person), similar to a database
    //maps integer (like an ID) to Person struct (like a record), creating a lookup table
    mapping(uint => Person) public people;
    
    //declare address data type for owner of contract
    address owner;
    
    //function to authenticate owner of contract
    modifier onlyOwner(){
        //msg is Solidity's global key-word for metadata passed into the contract when called
        //.sender is the address property of msg
        //Solidity require function returns 1 if true and an error if false
        require(msg.sender == owner);
        _;
    }

    //structs
    //allows us to define custom data structures in Solidity, like a person
    struct Person {
        uint _id;
        string _fName;
        string _lName;
    }
    
    //set owner of contract
    constructor() {
        owner = msg.sender; //in this case, .sender is the account who deploys the contract
    }
    
    
    //function that creates a new "Person" (could be a user, club member, etc.) and tracks them in a list
    function addPerson(
        string memory _fName, 
        string memory _lName
    ) 
        public 
        onlyOwner
    
    {
        //.push is a Solidity function we can use to add a new instance of the struct (data type) to an array
        //people.push(Person(_fName, _lName));
        
        incrementCount(); //call function to increase peopleCount
    
        //add function inputs into people mapping
        people[peopleCount] = Person(peopleCount, _fName, _lName);
    }
    
    //demonstrate internal function to increment peopleCount
    function incrementCount() internal {
        peopleCount += 1;
    }
}
