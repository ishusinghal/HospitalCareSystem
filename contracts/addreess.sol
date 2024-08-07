pragma solidity >=0.8.9;

contract test {
    string ins_name;
    bool registered;
    string[] name;
    uint[] age;
    
    function setInstitutionDetails(string memory ins_name, bool _registered)
    public {
        ins_name = ins_name;
        registered = _registered;
    }

    function setStudentDetails(string memory _name, uint _age)
    public {
        name.push(_name);
        age.push(_age);

    }

    function getStudentDetails(uint _index)
    public view returns( string memory, uint){
        return (name[_index], age[_index]);
    }
}
