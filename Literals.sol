// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Literals {
    function literals() public pure {
        assembly {
            let a := 0x123            // Hexadecimal
            let b := 42               // Decimal
            let c := "hello world"    // String

            let d //:= "very long string more than 32 bytes" // Error
        }
    }
}