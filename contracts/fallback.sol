pragma solidity ^0.8.0;

contract FallbackExample {

    event log(string message);
    fallback() external payable {
        emit log("Fallback function Executed");
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

}

contract test {
    address payable scaddress;
    constructor(address payable _addr){
        scaddress = _addr;
    }

    //Function to call fallback function
    function callFF() public payable {
        (bool status, ) = scaddress.call{value: msg.value}("Sending Ethers");
        require(status, "Fallback Function call Failed");
    }

}