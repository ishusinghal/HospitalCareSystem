// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HealthcareSystem {
    struct Doctor {
        uint256 id;
        string name;
        string qualification;
        string workPlace;
    }

    struct Patient {
        uint256 id;
        string name;
        uint256 age;
        string[] diseases;
    }

    struct Medicine {
        uint256 id;
        string name;
        uint256 expiryDate;
        string dose;
        uint256 price;
    }

    uint256 private doctorCount;
    uint256 private patientCount;
    uint256 private medicineCount;

    mapping(uint256 => Doctor) private doctors;
    mapping(address => uint256) private doctorIds;

    mapping(uint256 => Patient) private patients;
    mapping(address => uint256) private patientIds;

    mapping(uint256 => Medicine) private medicines;
    mapping(address => uint256[]) private patientMedicines;

    // Register a new doctor
    function registerDoctor(string memory _name, string memory _qualification, string memory _workPlace) public {
        doctorCount++;
        doctors[doctorCount] = Doctor(doctorCount, _name, _qualification, _workPlace);
        doctorIds[msg.sender] = doctorCount;
    }

    // Register a new patient
    function registerPatient(string memory _name, uint256 _age) public {
        patientCount++;
        patients[patientCount] = Patient(patientCount, _name, _age, new string[](0));
        patientIds[msg.sender] = patientCount;
    }

    // Add a patient's disease
    function addDisease(string memory _disease) public {
        uint256 patientId = patientIds[msg.sender];
        patients[patientId].diseases.push(_disease);
    }

    // Add medicine
    function addMedicine(string memory _name, uint256 _expiryDate, string memory _dose, uint256 _price) public {
        medicineCount++;
        medicines[medicineCount] = Medicine(medicineCount, _name, _expiryDate, _dose, _price);
    }

    // Prescribe medicine to a patient
    function prescribeMedicine(uint256 _id, address _patient) public {
        uint256 patientId = patientIds[_patient];
        patientMedicines[_patient].push(_id);
    }

    // Update patient details by patient
    function updatePatientAge(uint256 _age) public {
        uint256 patientId = patientIds[msg.sender];
        patients[patientId].age = _age;
    }

    // View patient data
    function viewPatientData() public view returns (uint256 id, uint256 age, string memory name, string[] memory disease) {
        uint256 patientId = patientIds[msg.sender];
        Patient storage patient = patients[patientId];
        return (patient.id, patient.age, patient.name, patient.diseases);
    }

    // View medicine details
    function viewMedicineDetails(uint256 _id) public view returns (string memory name, uint256 expiryDate, string memory dose, uint256 price) {
        Medicine storage med = medicines[_id];
        return (med.name, med.expiryDate, med.dose, med.price);
    }

    // View patient data by a doctor
    function viewPatientDataByDoctor(uint256 _id) public view returns (uint256 id, uint256 age, string memory name, string[] memory disease) {
        Patient storage patient = patients[_id];
        return (patient.id, patient.age, patient.name, patient.diseases);
    }

    // View prescribed medicines to the patient
    function viewPrescribedMedicines(address _patient) public view returns (uint256[] memory ids) {
        return patientMedicines[_patient];
    }

    // View doctor details
    function viewDoctorDetails(uint256 _id) public view returns (uint256 id, string memory name, string memory qualification, string memory add) {
        Doctor storage doc = doctors[_id];
        return (doc.id, doc.name, doc.qualification, doc.workPlace);
    }
}
