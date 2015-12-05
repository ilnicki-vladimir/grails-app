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
                    flash.message ="Password incorrect"
                }
            }
            else {
                flash.message ="User not found"
            }
        }
    }
    def logout ={
        session.invalidate()
        redirect(action:"login")
    }
}
