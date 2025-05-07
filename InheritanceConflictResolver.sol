//SPDX-License-Identifier:MIT
pragma solidity ^0.8.25;

contract A{
    function greet() public pure virtual returns (string memory){
        return "Hello from contract A";
    }
    
}

contract B{
    function greet() public pure virtual returns(string memory){
        return "Hello from Contract B";
    }
}

contract C is A,B{
    function greet() public pure override(A,B) returns(string memory){
        return string(abi.encodePacked(A.greet()," and",B.greet()));
    }
}

contract Parent{
    uint256 public value;

    constructor(uint256 _value){
        value=_value;
    }
}
contract Child is Parent{
    constructor(uint256 _childvalue) Parent(_childvalue){

    }
    
}