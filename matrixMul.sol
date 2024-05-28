// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MatrixMultiplication {
    
    // Function to multiply two matrices
    function multiply(uint[][] memory matrixA, uint[][] memory matrixB) public pure returns (uint[][] memory) {
        // Get the dimensions of the input matrices
        uint rowsA = matrixA.length;
        uint colsA = matrixA[0].length;
        uint rowsB = matrixB.length;
        uint colsB = matrixB[0].length;
        
        // Check if the matrices can be multiplied
        require(colsA == rowsB, "Matrix dimensions do not match for multiplication");

        // Create a new matrix for the multiplication result
        uint[][] memory result = new uint[][](rowsA);
        for (uint i = 0; i < rowsA; i++) {
            result[i] = new uint[](colsB);
        }

        // Perform the multiplication
        for (uint i = 0; i < rowsA; i++) {
            for (uint j = 0; j < colsB; j++) {
                uint sum = 0;
                for (uint k = 0; k < colsA; k++) {
                    sum += matrixA[i][k] * matrixB[k][j];
                }
                result[i][j] = sum;
            }
        }
        
        return result;
    }
}
