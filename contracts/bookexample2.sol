pragma solidity >=0.8.9; //Specifiying the Compiler version
contract test {
		struct Book{
			string title;
			string author;
			uint8 book_id;
			string publisher;
		}
	Book public book= Book({
			title: "solidity",
            author: "ABC",
            book_id: 12,
            publisher: "benth"
    });
}
 
