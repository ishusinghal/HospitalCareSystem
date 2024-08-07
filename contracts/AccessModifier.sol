//Private
pragma solidity >=0.8.9; //Specifiying the Compiler version
contract Parent {
    string public name ="Ishu";
    uint private id =32;
    string private qualification="Phd";
    function getId() private view returns (uint){
        return id;
    }
}

contract child is Parent{
    function getName() private view returns(string memory){
        return name;
    }
}

