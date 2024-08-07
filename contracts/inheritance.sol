pragma solidity >=0.8.9;

contract Parent {
    uint age=34;
    uint noOfHouse=0;
    string public name="Ishu Singhal";
    function getHouse() public  view returns (uint){
            return noOfHouse;
    }
    function getName() public view returns(string memory){
        return name;
    }
    
}

contract Child is Parent{
    string qualification;
    function getQualification() public view returns (string memory){
        return qualification;
    }
}

contract temp {
    string public message="Welcome";
    function getmessage() public view returns(string memory){
        return message;
    }
}

contract temp1 is temp, Parent{
    string public status = "success";
}
    