// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Dappazon {
    address public owner;
    struct Item {
        uint256 id;
        string name;
        string category;
        string image;
        uint256 cost;
        uint256 rating;
        uint256 stock;
    }
    mapping(uint256 => Item) public items;
    event List(string name, uint256 cost, uint256 quantity);

    constructor() {
        owner = msg.sender;
    }

    //list products
    function list(
        uint256 _id,
        string memory _name,
        string memory _category,
        string memory _image,
        uint256 _cost,
        uint256 _rating,
        uint256 _stock
    ) public {
        require(msg.sender == owner);
        //create struct
        Item memory item = Item(
            _id,
            _name,
            _category,
            _image,
            _cost,
            _rating,
            _stock
        );
        //list struct
        items[_id] = item;

        emit List(_name, _cost, _stock);
    }

    //buy products
    //withdraw
}
