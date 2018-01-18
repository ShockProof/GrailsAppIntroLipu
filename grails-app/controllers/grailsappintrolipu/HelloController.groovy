package grailsappintrolipu

import java.text.SimpleDateFormat

class HelloController {

    def index() { 
        def person = Person.list()
        [person:person]
    }
    
    def insert() {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd")
        Person x = new Person( params.name , params.email , format.parse(params.joiningDay) , params.post  )
        x.save()
        render "<tr class=" + "info" + "> <td>${x.name}</td> <td>${x.email}</td> <td>${params.joiningDay}</td> <td>${x.post}</td> </tr>"
    }
}
