// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library StringLib {
    struct Data {
        string value;
    }

    function set(Data storage self, string memory _value) public {
        self.value = _value;
    }

    function get(Data storage self) public view returns (string memory) {
        return self.value;
    }
}

contract Example {
    using StringLib for StringLib.Data;
    StringLib.Data private myString;

    function setMyString(string memory _myString) public {
        myString.set(_myString);
    }

    function getMyString() public view returns (string memory) {
        return myString.get();
    }
}
