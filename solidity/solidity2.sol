// Only the specific account can edit the set instructor..

contract Shubham {
    
    
    string fname;
    uint age;
    address owner;

    function Shubham() public {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    
    event Instructor(
        string name,
        uint age
    );
    
    function setInstructor(string _fname, uint _age) onlyOwner public {
        fname = _fname;
        age = _age;
        Instructor(_fname, _age);
    }
    
    function getInstructor() view public returns (string, uint) {
        return (fname, age);
    }
    
}