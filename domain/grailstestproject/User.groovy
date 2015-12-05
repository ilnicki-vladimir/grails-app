package grailstestproject

class User {
    String login;
    String password;
    String name;
    String role;
    static constraints = {
        login(unique: true)
        password(password: true)
        role (inList: ["User","Admin"])
    }
}
