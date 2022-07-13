// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Functions {
    function functions() public pure {
        assembly {
            function allocate(length) -> pos {
                pos := mload(0x40)
                mstore(0x40, add(pos, length))
            }

            let free_memory_pointer := allocate(64)
        }

        assembly {
            function my_assembly_function(param1, param2) {
                // assembly code here
            }
        }

        assembly {
            function my_assembly_function(param1, param2) -> my_result {
                // param2 - (4 * param1)
                my_result := sub(param2, mul(4, param1))
            }

            let some_value := my_assembly_function(4, 9)  // 4 - (9 * 4) = 32
        }
    }
}