package grailsappintrolipu

class HelloController {

    def index() { 
        def person = Person.list()
        [person:person]
    }
}
