// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StringCompare {
    
    // Function to compare two strings
    function compareStrings(string memory a, string memory b) public pure returns (bool) {
        // Compare the hash of the two strings
        return keccak256(abi.encodePacked(a)) == keccak256(abi.encodePacked(b));
    }
    
    // Function to demonstrate string comparison
    function isEqual(string memory a, string memory b) public pure returns (string memory) {
        if (compareStrings(a, b)) {
            return "Strings are equal";
        } else {
            return "Strings are not equal";
        }
    }

  function startsWithA(string memory str) public pure returns (bool) {
        bytes memory strBytes = bytes(str);
        
        // Check if the string is not empty and if the first character is 'A'
        if (strBytes.length > 0 && strBytes[0] == 'A') {
            return true;
        }
        
        return false;
    }
}