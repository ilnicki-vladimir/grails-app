import grailstestproject.*

class BootStrap {
    def geocoderService
    def init = { servletContext ->
        def user = new User(login:"admin", password:"admin", name:"adminko" ,role:"Admin")
        user.save()
        def user1 = new User(login:"user", password:"user", name:"userko" ,role:"User")
        user1.save()
        def client = new Client(name:"Post",email:"Post@uk.com",street: "Winchester", zip: "4")
        geocoderService.fillInLatLong(client)
        client.save()
    }
    def destroy = {
    }
}
