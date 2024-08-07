pragma solidity ^0.8.3;

contract Funding2 {

    address public owner;
    struct Transfer {
        address payable sender;
        uint amount;
    }

    Transfer[] public transfers;
    constructor {
        owner = msg.sender;
    }

    //Function to receive eth inside SC
    function receive() public payable {}

    //Function to get Receipient details
    function addTransfer(address payable _receipient ,uint _amount) public {
        require(msg.sender==owner, "Only Owner is allowed to transfer");
        transfers.push(Transfer(_receipient, _amount));
    }
    

    //Function to transfer 
    function executeTransfer() public {
        require(msg.sender==owner, "Only Owner is allowed to transfer");
        for(uint i=0;i<transfers.length;i++){
            transfers[i].receipient.transfer(transfer[i].amount);
        }
    }

    //Function to check the balance
    function checkContractBalance() public view returns(uint) {
        return address(this).balance;
    }

}