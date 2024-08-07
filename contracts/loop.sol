pragma solidity >=0.8.9;

contract test {
        uint public sum;

        function publishSum(uint _sum) public {
            for(uint i=0;i<_sum;i++){
                sum=_sum+i;
            }
        }
}