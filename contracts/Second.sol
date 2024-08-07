pragma solidity >=0.8.9;

contract test {
    uint256 storedData = 10;

    function getResult() public view returns (uint256) {
        uint256 a = 10;
        uint256 b = 20;
        uint256 result = a + b+ storedData;
        return result;
    }
}
