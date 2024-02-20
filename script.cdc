import Authentication from 0x05

pub fun main(studentId:UInt64): Authentication.schoolProfiles {
    return Authentication.schoolProfile[studentId]!
}
