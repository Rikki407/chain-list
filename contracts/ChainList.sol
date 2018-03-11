pragma solidity ^0.4.18;

contract ChainList{
    //state variables
    address seller;
    address buyer;
    string name;
    string description;
    uint256 price;

    // events
    event LogSellArticle(
        address indexed _seller,
        string _name,
        uint256 price
    );
    event LogBuyArticle(
        address indexed _seller,
        address indexed _buyer,
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
    function getArticle() public view returns(address,address,string,string,uint256){
        return (seller,buyer,name,description,price);
    }

    //buy an article
    function buyArticle() payable public{
        //we check if there is an article for sale
        require(seller!=0x0);
        //we check that article has not already been sold
        require(buyer == 0x0);
        require(msg.sender!=seller);
        require(msg.value == price);
        buyer = msg.sender;
        seller.transfer(msg.value);
         LogBuyArticle(seller,buyer,name,price);

        
    }
}