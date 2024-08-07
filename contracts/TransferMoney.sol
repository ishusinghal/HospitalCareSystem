pragma solidity >=0.8.9;

contract test {
      //Last wallet address
      address mywallet=0xdD870fA1b7C4700F2BD7f44238821C26f7392148; //100 credited a/c 
      function fetchMoney() public payable {}
      function transferMoney() public {
        payable(mywallet).transfer(address(this).balance);
      }
}