//Pure
pragma solidity >=0.8.9; //Specifiying the Compiler version
contract Parent {
    string public name="Dr Ishu";
    uint private id =32;
    string public qualification="PhD";
    //Read Function
    function getid() public view returns(uint){
        return id;
    }
}


contract child is Parent{
    function getName() public view returns(string memory){

    }

    //function x 
    function add(uint _a, uint _b) public pure returns(uint) {
        return _a+_b;
    }

    //function Y
    function happy() public pure returns (string memory)  {
        return "happy";
    }
}

