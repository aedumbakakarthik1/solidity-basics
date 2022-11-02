// SPDX-License-Identify: MIT
pragma solidity ^0.8.0;
contract Counter {
    // Code goes here...
    uint count; //1,2,3,4...

    constructor() public{
        count =0;
    }
    function incrementCount() public {
        count = count +1;
    }

    function getcount() public view returns(uint) {
        return count;

    }
    

} 
