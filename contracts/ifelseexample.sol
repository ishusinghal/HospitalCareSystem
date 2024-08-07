pragma solidity >=0.8.9;

contract test {
        
        bool public results;
        function condition(int _num1) public {
    
           results = _num1>10?true:false;
        }
}