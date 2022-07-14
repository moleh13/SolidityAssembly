// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract VariableDeclaration {

    function variableDeclaration() public {
        
        assembly {
            let zero := 0
            let v := calldataload(zero)
            {
                let y := add(sload(v), 1)
                v := y
            } // y is "deallocated" here
            sstore(v, zero)
        }   // v and zero are "deallocated" here

        assembly {
            // this will not compile (u32 and u256 type not implemented yet)
            let zero:u32 := 0:u32
            let v:u256, t:u32 := 3:u256, 5:u32
            let x, y:= 5, 6
        }
    }   
}