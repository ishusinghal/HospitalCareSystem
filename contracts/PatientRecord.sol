pragma solidity >=0.8.9;

contract PatientRecord {

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner allowed");
        _;
    }
    

    struct Patient {
        uint id;
        string name;
        uint age;
        string[] diseases;
    }   

    struct Doctor {
        uint id;
        string name;
        string qualification;
        string hospitalAddress;
    }

    struct Medicine{
        uint id;
        string name;
        string expiryDate;
        uint dose;
        uint price;
    }

    uint256 private docotorCount;
    uint256 private patientCount;
    uint256 private medicineCount;

    mapping(uint256 => Doctor) private doctors;
    mapping(uint => Patient) public patients;
    mapping(uint => Medicine) public medicines;
    mapping(address => address) public patientsAddress;
    mapping(address => uint[]) public prescribedMedicines;

    Doctor[] doctorsList;
    Patient[] patientList;

    function registerPatient(string memory _name, uint _age) public {
        patientList.push(Patient(_name, _age));
    }

    function addNewDisease(string disease) public {
        for(uint i=0;i<patientList.length;i++){
            patientList.pop();
        }
    }

    function registerDoctor(uint key, string memory _name, string memory _qualification, string memory _workPlaceAddr) public {
        doctors[key].name = _name;
        doctors[key].qualification = _qualification;
        doctors[key].name = _workPlaceAddr;

        doctorsList.push(Doctor(key, _name, _qualification, _workPlaceAddr));


    }


     
    function getPatientRecord(uint key) public view returns (string memory, uint, string[] memory) {
        return (patients[key].name, patients[key].age, patients[key].disease);
    }


    // function addMedicine(uint _id, string _name, string _expiryDate, uint _dose, uint _price){
    //     medicines[_id]._id = _id;
    // } 
    //   patients[key].disease = new string[](_disease.length);
    //     for (uint i = 0; i<_disease.length; i++) 
    //     patients[key].disease[i] = _disease[i];


}