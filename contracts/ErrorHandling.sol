//Internal
pragma solidity >=0.8.9; //Specifiying the Compiler version
contract ErrorHandling {
     uint public balance=100;
     function withdrawmoney(uint _amount) public returns(uint){
        require(_amount<100, "Not allowed below 100");
        balance = balance - _amount;
     }

}

contract ErrorHandlingB {
     uint public balance=100;
     function withdrawmoney(uint _amount) public returns(uint){
        if(_amount<balance){
        
        balance = balance - _amount;
        }else{
            revert("Revert Not allowed below 100");
        }
        return balance;
     }

}
