// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract If {
    function _if() public pure {
        assembly {
            if lt(calldatasize(), 4) { revert(0,0) }
        }
    }
}