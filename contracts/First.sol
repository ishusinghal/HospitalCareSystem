pragma solidity ^0.8.0;

contract addittion {
    int256 public a = 20;
    int256 public b = 20;
    int256 public c = a + b;
    int8 public d = 127;
    int16 public e = 32766;
    uint256 public maxint = 5669891649979;

    bool public status1 = true;
    bool public status2 = false;

    string public message = "Hello";
    string public message2 = "bye";
    string public message3 = "Hello How r u?";

    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancelled
    }

    Status public si = Status.Accepted;
    Status public si2 = Status.Pending;
    Status public si3 = Status.Shipped;
    Status public si4 = Status.Rejected;
    Status public si5 = Status.Cancelled;

    //Range of bytes 1-32
    bytes1 public b1 = 0x45;
    bytes2 public b2 = 0x4545;
    bytes3 public b3 = 0x454545;
    bytes4 public b4 = 0x45565587;
    bytes5 public b5 ;
    bytes[] public b6 ;


    address public myaddress=0x044D5B270366219EE0288e4B442c387Dffbd6B08;
}
