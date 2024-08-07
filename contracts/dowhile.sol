pragma solidity >=0.8.9;

contract test {
        
        uint public sum=10;

        function dowhile(uint _sum) public {
            uint i=_sum;
            do{
                 sum=_sum;
                 sum--;
                 i--;
            }while(i>0);
        }
}