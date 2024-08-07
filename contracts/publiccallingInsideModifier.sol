//Public + Calling Inside
pragma solidity >=0.8.9; //Specifiying the Compiler version
contract Parent {
    string public name="Ishu";
    uint public id =32;
    string public qualification="Phd";
    
    function getId() public view returns(uint){
        return id;
    }
    
    uint public reply_id= getId();
}

contract Child is Parent{
    function getName() public view returns(string memory){
            return name;
    }

    string public reply_name =getName();


}


contract child1 is Child {
    function getQualification() public view returns(string memory){
        return qualification;
    }
    string public reply_qual= getQualification();
}

