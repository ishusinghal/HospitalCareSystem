pragma solidity >=0.8.9;

library MathLibrary {

    function addittion(int a, int b) external pure returns(int){
        return a+b;
    }
    
    function substraction(uint a, uint b) external pure returns(uint) {
        require(b<=a, "Change the Number");
        return a-b;
    }
}