pragma solidity >=0.8.9;

contract test {
    mapping(address => uint) favnumber;
    mapping(address => string) favliteral;
    address public a1= msg.sender;

    function setFavNumber(uint num) public {
        require(num!=13, "change the number");
        favnumber[msg.sender] = num;
    }

    // function setFavLiteral(string memory leng) public {
    //   require((keccak256(abi.encodePacked(leng)) == keccak256(abi.encodePacked("ABC"))), "Change Literal");
    //    favliteral[msg.sender] = leng;
    // }
     
    
    function getFavNumber() public view returns(uint){
        return favnumber[msg.sender];
    }

      
    function getFavLiteral() public view returns(string memory){
        return favliteral[msg.sender];
    }


}