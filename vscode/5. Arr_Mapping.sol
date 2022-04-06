 // SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

// array와 mapping의 차이를 알아보자
// array는 0부터, mapping은 1부터 

contract ArrMapping {
    // Arrays
    uint[] public uintArr = [1, 2, 3];
    string[] public strArr = ["Lionel Messi", "Christiano Ronaldo", "Kevin De Bruyne", "Son"];
    string[] public values;
    uint[][] public arr2d = [
        [10, 20, 30],
        [40, 50, 60]
    ];

    function addValue(string memory _value) public {
        values.push(_value);
    }

    function valueCount() public view returns(uint) {
        return values.length;
    }

    // mapping
    mapping(uint => string) public names; // 어떤 번호에다가 문자열을 한다 
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;

    struct Book {
        string title;
        string author;
    }

    constructor() public {
        // key       value
        names[1] = "Lionel Messi";
        names[2] = "Christiano Ronaldo";
        names[3] = "Kevin De Bruyne";
    }

    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }

    function addMyBook(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
}