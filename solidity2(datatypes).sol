// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Mycontract{
    int public myint1=1;
    int256 public myint2=2;
    int64 public myint3=-9;

    uint public myuint=3;
    uint8 public myuint8=4;
    uint256 public myint256=5;


    string public mystring="helllo karthik ";
    bytes32 public mybytes32 = "hello karthik ";



    address public mywallet = 0x8dF762Dbc433DA36218A8616a2e6A85293ef3C06;


    struct mystruct{
        uint256 age;
        string name;

    }

    mystruct public age_name= mystruct(21,"karthik");

}





////////////////////////////////////////////
// // SPDX-License-Identifier: GPL-3.0

// pragma solidity ^0.8.0 ;

// contract Mappying{
//     // mapping
//     mapping (string => uint) public names;
//     constructor (){
//         names["karthik"]=11334;
//         names["rgv"]=12345;
//         names["Krishna"]=143143;
//     }
//     function addbook(uint _id , string memory _dep ,uint _year) public  {
//         book[_id] =Book(_dep,_year);
//     }
//     mapping (uint => Book) public book ;
//     struct Book {
//         string dep;
//         uint year;

//     } 
//     // nestled mapping 
//     mapping (address => mapping(uint => Book))public karthik;

//     function karthik(uint _id,string memory _dep,uint _year)public{
//         karthik[msg.sender][_id]=Book(_dep,_year);
//     }

    
    
    
// }

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0 ;

contract Mycontract{
    mapping (uint => string )public names;
    mapping (uint => Book ) public books;
    mapping (address => mapping (uint => Book)) public myBooks;
    struct Book {
        string title;
        string author;
    }

    constructor()  {
        names[1]="karthik";
        names[2]="rgv";
        names[3]="Krishna";

    }
    function addBook(
        uint _id, string memory _title, string memory  _author
    ) public {
        books[_id]= Book(_title,_author);
    }

    function addMyBook( uint _id, string memory _title, string memory _author)
    public{
        myBooks[msg.sender][_id]=Book(_title,_author);
    }


}
