var ChainList = artifacts.require("./ChainList.sol");

//test suite
contract(ChainList,function (accounts) {
    var chainListInstance;
    var seller = accounts[1];
    var article = "article 1";
    var description = "Description for article";
    var articlePrice = 10;

    it("should be initialized with empty values",function () {
        return ChainList.deployed().then(function (instance) {
            return instance.getArticle();
        }).then(function (data) {
            assert.equal(data[0],0x0,"seller must be empty");
            assert.equal(data[1],"","article name must be empty");
            assert.equal(data[2],"","article description must be empty");
            assert.equal(data[3].toNumber(),0,"article price must be zero");
        })
    });

    it("should sell an article",function () {
        return ChainList.deployed().then(function (instance) {
            chainListInstance = instance;
            return chainListInstance.sellArticle(article,description,web3.toWei(articlePrice,"ether"),{ from : seller}).then(function () {
                return chainListInstance.getArticle();
            }).then(function (data) {
                assert.equal(data[0],seller,"seller must be "+seller);
                assert.equal(data[1],article,"article name must be "+article);
                assert.equal(data[2],description,"article description must be "+description);
                assert.equal(data[3].toNumber(),web3.toWei(articlePrice,"ether"),"article price must be "+articlePrice);
            })
        })
    });
});
