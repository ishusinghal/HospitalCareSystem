//Internal
pragma solidity >=0.8.9; //Specifiying the Compiler version
contract Parent {
    string internal name ="Ishu";
    uint internal id =32;
    string internal qualification="Phd";
    function getId() internal view returns (uint){
        return id;
    }
}

contract child is Parent {
    function getName() internal view returns (string memory){
        return name;
    }
}

contract child1 is child {
    function getQualification() internal view returns(string memory){
        return qualification;
    }
}