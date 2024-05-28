// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Factorial {
    
    // Function to calculate factorial of a number
    function factorial(uint n) public pure returns (uint) {
        if (n == 0 || n == 1) {
            return 1;
        } else {
            uint result = 1;
            for (uint i = 2; i <= n; i++) {
                result *= i;
            }
            return result;
        }
    }
}
