import grailstestproject.User

class BootStrap {

    def init = { servletContext ->
        def admin = new User(login:"admin", password:"admin",role:"Admin")
        admin.save()
    }
    def destroy = {
    }
}
