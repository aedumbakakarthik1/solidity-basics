
// SPDX-License-Identifier: GPL-3.0


pragma solidity  ^0.8.0;

// contract MyCondition{
//     uint[] public number=[1,2,3,4,5,6,7,8,9,10];
//     function isEven(uint _number) public  view returns (bool){
//         if (_number % 2 ==0){
//             return true;
//         }
//         else{
//             return false ;
//         }
//     }
// }

contract MyCondition{


    uint[] public number =[1,2,3,4,5,6,7,8,9,10];
    address  public owner;
    constructor(){
        owner = msg.sender;
    }
    function countEvenNumber() public view returns (uint){
        uint count=0;
        for (uint i=0 ; i<number.length ; i++){
            if (isEven(number[i])){
                count++;
            }
        }
        return count;
    }
    function isEven(uint256 _number) public view returns(bool){
        if (_number % 2 ==0){
            return true;
        }
        else{
            return false;
        }
    }

    function isOwer() public view returns(bool){
        return (msg.sender == owner);
    }
}