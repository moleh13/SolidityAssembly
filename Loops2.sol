// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Loops {
    function loops() public pure {
        assembly {
            let x := 0
            for { let i := 0 } lt(i, 0x100) { i := add(i, 0x20) } {
                x := add(x, mload(i))
            }
        }

        assembly {
            let x := 0
            let i := 0
            for { } lt(i, 0x100) { } { // while(i < 0x100)
                x := add(x, mload(i))
                i := add(i, 0x20)
            } 
        }
    }
}