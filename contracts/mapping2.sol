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

        mapping (uint => Participant) public SLParticipant;

        function addParticipant(uint key, string memory _name, uint _page, uint _pphoneNo, string memory pemail,
         string memory _courseenrolled, bool _feepaid) public {
                SLParticipant[key].Pname = _name;
                SLParticipant[key].Page = _page;
                SLParticipant[key].PphoneNo = _pphoneNo;
                SLParticipant[key].Pemail = pemail;
                SLParticipant[key].courseEnrolled = _courseenrolled;
                SLParticipant[key].feePaid = _feepaid;
        }
        
        function getparticipant(uint key) public view returns(Participant memory){
                return SLParticipant[key];
        }

        function getparticipant2(uint key) public view returns(string memory , uint , uint , string memory ,
         string memory , bool){
                return (SLParticipant[key].Pname, SLParticipant[key].Page, SLParticipant[key].PphoneNo,
                SLParticipant[key].Pemail, SLParticipant[key].courseEnrolled , SLParticipant[key].feePaid);
        }


}
