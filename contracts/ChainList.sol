pragma solidity ^0.4.18;

contract ChainList{
    //state variables
    address seller;
    string name;
    string description;
    uint256 price;

    // events
    event LogSellArticle(
        address indexed _seller,
        string _name,
        uint256 price
    );

    //sell an article
    function sellArticle(string _name,string _description,uint256 _price) public{
        seller = msg.sender;
        name = _name;
        description = _description;
        price = _price;

        LogSellArticle(seller,name,price);
    }

    //get an article
    function getArticle() view returns(address,string,string,uint256){
        return (seller,name,description,price);
    }
}