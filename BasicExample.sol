// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract BasicExample {
    function power() public pure {
        assembly {
            function power(base, exponent) -> result
            {
                switch exponent
                case 0 { result := 1 }
                case 1 { result := base }
                default {
                    result := power(mul(base, base), div(exponent, 2))
                    switch mod(exponent, 2)
                        case 1 { result := mul(base, result) }
                }
            }
        }
    }

    function _power() public pure {
        assembly {
            function power(base, exponent) -> result
            {
                result := 1
                for { let i := 0 } lt(i, exponent) { i := add(i, 1) }
                {
                    result := mul(result, base)
                }
            }
        }
    }
}