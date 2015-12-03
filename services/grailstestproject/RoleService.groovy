package grailstestproject

import grails.transaction.Transactional

@Transactional
class RoleService {

    static def map = [
            "null/null":["Admin","User"],
            "user/login":["Admin","User"],
            "user/logout":["Admin","User"],
            "user/*":["Admin"],
            "client/*":["Admin","User"]
    ]
    static public boolean isValid(String c, String a, String code){
        String page = c+"/"+a
        if(map.containsKey(page))
            if(map[page].contains(code)){
                return true
            }
        if(map[c+"/*"].contains(code)){
            return true
        }
        return false
    }
}
