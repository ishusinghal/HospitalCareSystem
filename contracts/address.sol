pragma solidity >=0.8.9;

contract test {
    address public addblock;
    
    function setaddress(address _addBlock) public {
        addblock = _addBlock;
    }
    
    function getbalance() public virtual returns(uint){
        return addblock;
    }
}