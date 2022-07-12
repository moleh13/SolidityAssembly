// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Let {
    function _if(uint x) public pure {
        assembly {
            if slt(x, 0) {x := sub(0, x)}    // Ok
            if eq(x, 0) {}                   // revert(0, 0) // Error, curly braces needed        
        }
    }
}