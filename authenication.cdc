pub contract Authentication {
    pub var schoolProfile: {UInt64: schoolProfiles}
    
    pub struct schoolProfiles{
        pub let firstName: String
        pub let lastName: String
        pub let class: String
        pub let age: Int
        pub let studentId: UInt64 
        
        // You have to pass in 4 arguments when creating this Struct.
        init(_firstName: String, _lastName: String, _class: String,_age:Int, _studentId: UInt64) {
            self.firstName = _firstName
            self.lastName = _lastName
            self.class = _class
            self.age=_age
            self.studentId = _studentId
        }
    }

    pub fun addProfile(firstName: String, lastName: String, class: String,age: Int, studentId: UInt64) {
        let newProfile = schoolProfiles(_firstName: firstName, _lastName: lastName, _class: class,_age:age, _studentId: studentId)
        self.schoolProfile[studentId] = newProfile
    }

    init() {
        self.schoolProfile = {}
    }

}
