pragma solidity >=0.8.9;

contract test {
    struct Book {
        string title;
        string author;
        uint8 book_id;
        string publisher;
                
    }
    
    Book book;
    //write function
    function setBook() public {
        book = Book('Learn Solidity', 'JK Rowling', 100, 'Emerald');
    }

    //Read function 
    function getBookId() public view returns (uint8){
        return book.book_id;
    }
    
    function getBookName() public view returns(string memory){
        return book.title;
    }
    
    function getBookAuthor() public view returns(string memory){
        return book.author;
    }

    function getBook() public view returns(string memory, string memory){
       return (book.author, book.title);
    }

    function getBookPublisher() public view returns (string memory){
        return book.publisher;
    }
}