// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MatrixTranspose {
    
    // Function to transpose a matrix
    function transpose(uint[][] memory matrix) public pure returns (uint[][] memory) {
        // Get the dimensions of the input matrix
        uint rows = matrix.length;
        uint cols = matrix[0].length;
        
        // Create a new matrix for the transposed result
        uint[][] memory result = new uint[][](cols);
        for (uint i = 0; i < cols; i++) {
            result[i] = new uint[](rows);
        }
        
        // Perform the transposition
        for (uint i = 0; i < rows; i++) {
            for (uint j = 0; j < cols; j++) {
                result[j][i] = matrix[i][j];
            }
        }
        
        return result;
    }
}
