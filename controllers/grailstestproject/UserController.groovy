package grailstestproject

class UserController {

    def scaffold = User
    def login= {
        if(request.get) render(view:"login")
        else{
            def workuser = User.findByLogin(params.login)
            if (workuser){
                if(workuser.password==params.password){
                    session.user = workuser
                    redirect(uri:"/")
                }
                else{
                    render(view:"login", model:[message:"Password incorrect"])
                }
            }
            else {
                render(view:"login", model:[message:"User not found"])
            }
        }
    }
    def logout ={
        log.info "User agent:" +request.getHeader("User-Agent")
        session.invalidate()
        redirect(action:"login")
    }
}
