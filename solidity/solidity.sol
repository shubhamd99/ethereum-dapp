// Smart Contract
pragma solidity ^0.4.22;

contract Shubham {
    
    
    string fname;
    uint age;
    
    event Instructor(
        string name,
        uint age
    );
    
    function setInstructor(string _fname, uint _age) public {
        fname = _fname;
        age = _age;
        Instructor(_fname, _age);
    }
    
    function getInstructor() view public returns (string, uint) {
        return (fname, age);
    }
    
}