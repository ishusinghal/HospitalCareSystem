pragma solidity >=0.8.9;//Specifiying the Compiler version

import "./Mathlibrary.sol";
contract LibExample {
    
    function addN(int x, int y) external pure returns(int) {
        return MathLibrary.addittion(x,y);
    }
    
    function substraction(uint x, uint y) external pure returns(uint){
        return  MathLibrary.substraction(x,y);
    }
}