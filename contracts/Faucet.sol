// SPDX-License-Identifier: MIT
// faucet 
pragma solidity ^0.6.6;

contract Faucet {
  function withdraw(uint withdraw_amount) public {
    require(withdraw_amount <= 100000000000000000);
    msg.sender.transfer(withdraw_amount);
  }

  receive() external payable {}
}