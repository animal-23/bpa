//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract DataTypes {
    bool public boolean= true;
    int32 public integer=-453;
    string public str="CHANU";
    bytes1 public b="a";
    enum my_enum {chan_,chanu} 
    function Enum() public pure returns(my_enum){
        return my_enum.chan_;
    }

}
