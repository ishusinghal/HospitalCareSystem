pragma solidity >=0.8.20;//Specifiying the Compiler version

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20Example is ERC20 {

        constructor (uint initialSupply) ERC20("Simpli", "SMP") {
            _mint(msg.sender, initialSupply);
        }

}