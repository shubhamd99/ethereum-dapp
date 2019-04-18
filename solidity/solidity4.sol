contract Owned {
    address owner;
    
    function Owned() public {
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}

contract Project1 is Owned {
    
    struct Instructor {
        uint age;
        bytes16 fname;
        bytes16 lname;
    }
    
    mapping (address => Instructor) instructors;
    address[] public InstructorAccounts;
    
    event instructorInfo(
        bytes16 fname,
        bytes16 lname,
        uint age
    );
    
    function setInstructor(address _address, uint _age, bytes16 _fname, bytes16 _lname) onlyOwner public {
        var instructor = instructors[_address];
        
        instructor.age = _age;
        instructor.fname = _fname;
        instructor.lname = _lname;
        
        InstructorAccounts.push(_address) -1;
        instructorInfo(_fname, _lname, _age);
    }
    
    function getInstructor() view public returns(address[]) {
        return InstructorAccounts;
    }
    
    function getInstructor(address _address) view public returns (uint, bytes16, bytes16) {
        return (instructors[_address].age, instructors[_address].fname, instructors[_address].lname);
    }
    
    function countInstructor() view public returns (uint) {
        return InstructorAccounts.length;
    }
    
}