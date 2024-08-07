//Abstract
pragma solidity >=0.8.9; //Specifiying the Compiler version
    //Parent Contract
abstract contract AbstractContract {
        function getstr(string memory _str) public view virtual returns(string memory);
        function setValue(uint _in1, uint _in2) public virtual ;

        function add() public virtual returns(uint);
}

contract derivedContract is AbstractContract {
    uint private num1;
    uint private num2;
    
    function getstr(string memory _strin) public view override returns(string memory){
        return _strin;
    }

    function setValue(uint _in1, uint _in2) public override{
        num1 =_in1;
        num2 = _in2;
        
    }

    function add() public view override returns (uint){
        return (num1 + num2);
    }
}