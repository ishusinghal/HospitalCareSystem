
//Internal + Calling Inside
pragma solidity >=0.8.9; //Specifiying the Compiler version
contract Parent {

    string internal name="Dr Ishu";
    uint internal id =32;
    string internal qualification="PhD";
    uint salary=1000;
    uint increment=500;

    function getid() internal view returns(uint){
        return id;
    }

    function gets1() internal returns(uint){
        return salary+100;
    }


    function gets2() internal returns(uint){
        return salary+ 2000+ gets1();
    }

    uint public answer = gets2()+ increment;
}

contract child is Parent {
    function getqualification() internal view returns (string memory){
        return qualification;
    }
    string public reply_qualification=getqualification();
}


