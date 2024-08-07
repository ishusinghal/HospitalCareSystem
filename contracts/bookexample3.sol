pragma solidity >=0.8.9; //Specifiying the Compiler version
contract test {
		struct Book{
			string title;
			string author;
			uint8 book_id;
			string publisher;
		}
        Book book;

        function setBook() public {
            book = Book("Solidity", "Author", 12, "Benth");
        }

        function getBook_id() public view returns(uint) {
            return book.book_id;
        }


        function getBookTitle() public view returns (string memory){
           return book.title;
        }
        
        function getAllDetails() public view returns(Book memory){
                return book;
        }
}
 
