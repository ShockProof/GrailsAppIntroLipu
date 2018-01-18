package grailsappintrolipu

class Person {
    String name
    String email
    Date joiningDay
    String post
    Person(){}
    Person( String name , String email , Date joiningDay , String post ) {
        this.name = name
        this.email = email
        this.joiningDay = joiningDay
        this.post = post
    }
}
