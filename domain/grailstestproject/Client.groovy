package grailstestproject

class Client {
    String name;
    String email;
    String street;
    String zip;
    double latitude = 0.0;
    double longitude = 0.0;

    static constraints = {
        email blank:false
    }
}
