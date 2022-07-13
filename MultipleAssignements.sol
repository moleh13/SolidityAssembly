// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract MultipleAssignements {
    function multipleAssignements() public pure {
        assembly {
            let v := 0
            // re-assign v
            v := 2
            let t := add(v, 2)
            function f() -> a, b { }
            // assign multiple values
            v, t := f()
            
        }
    }
}