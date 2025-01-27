// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/access/Ownable.sol";

contract RhoToken is ERC20, Ownable {

 constructor() ERC20("rhotoken", "ROT") {
_mint (owner(), 1000 * 10**uint(decimals()));
}




// Function for owner to mint new tokens
function mint(address _to, uint256 _amount) public onlyOwner {
_mint(_to, _amount);
}

// Function for any user to burn tokens
function burn(uint256 _amount) public {
_burn(msg.sender, _amount);
}

// transfer the amount of tokens from the sender to the receiver
function _Transfer(address to, uint256 _amount)public {
 _transfer(msg.sender, to, _amount);
}
}
