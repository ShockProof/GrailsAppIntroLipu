package grailsappintrolipu

import java.text.SimpleDateFormat

class BootStrap {

    def init = { servletContext ->
        
        if( Person.list().size() > 0 ) return
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        format.parse("2018-03-01");
        new Person( 'Syed Zafrul Bahar Lipu' , 'zafrullipu@gmail.com' , format.parse("2018-03-01") , "Software Engineer" ).save()
    }
    def destroy = {
    }
}
