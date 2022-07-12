// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Add {
    function add(uint x, uint y) public pure returns(uint) {
        assembly {
            let result := add(x, y)  // x + y
            mstore(0x0, result)      // store result in memory
            return(0x0, 32)          // return 32 bytes from memory
        }
    }
}