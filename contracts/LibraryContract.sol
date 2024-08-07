//Internal
pragma solidity >=0.8.9; //Specifiying the Compiler version
contract BookLibrary {
    address public contractOwner;

    constructor() public {
        contractOwner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == contractOwner, "Only Owner");
        _;
    }

    struct Book{
        uint256 id;
        string name;
        string author;
        uint256 price;
    }

    mapping(uint256=> Book) public books;

    function addBook(
        uint256 _bookId,
        string memory _bookName,
        string memory _bookAuthor,
        uint256 _price) public {
            books[_bookId].name = _bookName;
            books[_bookId].author = _bookAuthor;
            books[_bookId].price = _price;
        }
        
        function queryBookById(uint256 _bookId) 
            public view returns(string memory name, string memory author, uint256 price){
                return (books[_bookId].name, books[_bookId].author,books[_bookId].price);
            }
}
