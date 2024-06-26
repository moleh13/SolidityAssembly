// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Switch {
    function _switch() public {
        assembly {
            let x := 0
            switch calldataload(4)
            case 0 {
                x := calldataload(0x24)
            }
            default {
                x := calldataload(0x44)
            }
            sstore(0, div(x, 2))
        }
    }
}