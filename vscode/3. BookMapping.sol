// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

contract BookCont {
    // mapping
    mapping(uint => string) public names; // 어떤 번호에다가 문자열을 한다 
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;

    struct Book {
        string title;
        string author;
    }

    constructor() public {
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