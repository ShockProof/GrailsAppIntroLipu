package grailsappintrolipu

class HelloController {

    def index() { 
        def person = Person.list()[0]
        [person:person]
    }
}
