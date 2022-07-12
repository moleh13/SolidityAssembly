// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Switch {
    function _switch() public pure {
        assembly {
            let x := 0
            switch calldataload(4)
            case 0 {
                x := calldataload(0x24)
            }
            default {
                x := calldataload(0x44)
            }
            mstore(0, div(x, 2))
        }

        assembly {
            let x := 34

            switch lt(x, 30)
            case true {
                // do something
            }
            case false {
                // do something
            }
            default {
                // not allowed
            }
        }
    }
}