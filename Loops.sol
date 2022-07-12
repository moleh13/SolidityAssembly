// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Loops {
    function forLoopSolidity(uint n, uint value) public pure returns (uint) {
        for (uint i = 0; i < n; i++) {
            value = 2 * value;
        }

        return value;
    }

    function forLoopAssembly(uint n, uint value) public pure returns (uint) {
        assembly {
            for {let i := 0} lt(i, n) {i := add(i, 1)} {
                value := mul(2, value)
            }
            
            mstore(0x0, value)
            return(0x0, 32)
        }
    }

    function whileLoopAssembly(uint n, uint value) public pure returns (uint) {
        assembly {
            let x := 0
            let i := 0
            for {} lt(i, 0x100) {} { // while (i < 256), 100 (hex) = 256
                x := add(x, mload(i))
                i := add(i ,0x20)
            }    
        }
    }
}

