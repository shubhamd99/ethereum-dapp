contract Project1 {
    
    struct Instructor {
        uint age;
        string fname;
        string lname;
    }
    
    mapping (address => Instructor) instructors;
    address[] public InstructorAccounts;
    
    function setInstructor(address _address, uint _age, string _fname, string _lname) public {
        var instructor = instructors[_address];
        
        instructor.age = _age;
        instructor.fname = _fname;
        instructor.lname = _lname;
        
        InstructorAccounts.push(_address) -1;
    }
    
    function getInstructor() view public returns(address[]) {
        return InstructorAccounts;
    }
    
    function getInstructor(address _address) view public returns (uint, string, string) {
        return (instructors[_address].age, instructors[_address].fname, instructors[_address].lname);
    }
    
    function countInstructor() view public returns (uint) {
        return InstructorAccounts.length;
    }
    
}