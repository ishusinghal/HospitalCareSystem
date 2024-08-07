pragma solidity ^0.8.0;

contract Funding {
    address public owner;
    struct Transfer {
        address payable recipient;
        uint amount;
    }

    Transfer[] public transfers;
    constructor(){
        owner= msg.sender;
    }

    function receive() public payable{}
    function addTransfer(address payable recipient, uint amount) public{
        require( msg.sender == owner, "only owner of the contract");
        transfers.push(Transfer(recipient, amount));        
    }

    function executeTransfer() public {
        for(uint i=0; i<transfers.length;i++) {
             transfers[i].recipient.transfer(transfers[i].amount);   
        }
    }
    
    function checkcontractbalance() public view returns(uint) {
        return address(this).balance;
    }

}