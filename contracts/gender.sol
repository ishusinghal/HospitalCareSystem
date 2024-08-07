pragma solidity >=0.8.9;

contract test {
    enum Gender {
        MALE, FEMALE
        }

        Gender choice;
        Gender defaultChoice= Gender.MALE;

        function setGender() public {
            choice= Gender.FEMALE;
        }
        function getChoice() public view returns (Gender){
            return choice;

        }
        
        function getDefaultOrChoice() public view returns (uint){
            return uint(defaultChoice);
        }
}