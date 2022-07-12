// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Let {
    function _let() public pure {
        assembly {
            let x := 2 // x = 2
        }

        assembly {
            let x  // initialisation, x = 0
            x := 5 // x is now 5
        }

        assembly {
            let x := 7
            let y := add(x, 3)
            let z := add(keccak256(0x0, 0x20), div(1, 32))

            let n  // an initial empty 0 value is assigned
        }
    }
}