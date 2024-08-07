//Private + Calling Inside
pragma solidity >=0.8.9; //Specifiying the Compiler version
contract Parent {
    string private name="Ishu";
    uint private id =32;
    string private qualification="PhD";
    uint salary=1000;
    uint increment=500;


    function getid() private view returns (uint){
        return id;
    }

    function gets1() private returns(uint){
        return salary+100;
    }

    function gets2() private returns(uint){
        return gets1();
    }   

    uint public answer = gets2()+ increment;
}

