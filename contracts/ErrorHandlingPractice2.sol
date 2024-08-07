//Internal
pragma solidity >=0.8.9; //Specifiying the Compiler version
contract ErrorHandling {
    uint public balance=100;
    function withdrawMoney(uint _amount) public returns (uint){
        require(_amount>100, "Not allowed");
        balance = balance- _amount;
        return balance;
    }
}


contract ErrorHandlingB {
    uint public balance=100;
    function withdrawMoney(uint _amount) public returns (uint){
        if(_amount>balance){
            revert("revert not allowed");
        }else{
            balance = balance - _amount;    
        }
       
        return balance;
    }
}
