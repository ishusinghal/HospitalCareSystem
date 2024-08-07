pragma solidity >=0.8.9;

contract test {
        struct Participant {
            string Pname;
            uint Page;
            uint PphoneNo;
            string Pemail;
            string courseEnrolled;
            bool feePaid;
        }

        mapping (address => Participant) public SLParticipant;

        function addParticipant(uint key, string memory _name, uint _page, uint _pphoneNo, string memory pemail,
         string memory _courseenrolled, bool _feepaid) public {
                SLParticipant[msg.sender] = Participant(_name, _page, _pphoneNo, pemail, _courseenrolled, _feepaid);
         
        }
        
        function getparticipant(uint key) public view returns(Participant memory){
                return SLParticipant[msg.sender];
        }


}
