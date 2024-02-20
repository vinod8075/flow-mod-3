import Authentication from 0x05

transaction(firstName: String, lastName: String, class: String,age: Int, studentId: UInt64){
    
    prepare(signer: AuthAccount){}

    execute{
        Authentication.addProfile(firstName: firstName,lastName:lastName,class:class,age:age,studentId:studentId)
        log("successfully new profile is added!!!!!")

    }
}        
