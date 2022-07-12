// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract BlocksAndScope {
    function blocksAndScope() public pure {
        assembly {
            let x := 3       // x is visible everywhere

            // Scope 1
            {
                let y := x    // ok
            }                 // y is "deallocated" here

            // Scope 2
            {
                let z // := y // Error 
            }                 // z is "deallocated" here
        }
    }
}