// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;
contract LocalVariables {
    function assemblyLocalVarAccess() public pure {
        uint b = 5;

        assembly {                         // defined insinde an assembly block
            let x := add(2, 3)
            let y := 10
            let z := add(x, y)
        }

        assembly {                         // defined outside an assembly block
            let x := add(2, 3)
            let y := mul(x, b)
        }
    }
}