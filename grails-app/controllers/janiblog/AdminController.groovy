package janiblog

class AdminController {

    def index() {
    }

    def saveUser(){
        User u = new User();
        u.nombre = params.nombre;
        u.apellido = params.apellido;
        u.edad = Integer.parseInt(params.edad);
        u.user = params.user;
        u.password = params.password;
        if(user == null){
            redirect(controller: 'admin', action: 'login');
        }

    }

    def lista(){
        User u = new User();
        def listaUsuarios = u.findAll();
        if(user == null){
            redirect(controller: 'admin', action: 'login');
        }
        [listaUsuarios:listaUsuarios];
    }

    def delete(){
        User u = User.get(params.id);
        if(user == null){
            redirect(controller: 'admin', action: 'login');
        }
        u.delete(flush:true);
        redirect(controller:'admin',action:'lista');

    }

    def getUser(){
        def user = User.get(params.id);
        if(user == null){
            redirect(controller: 'admin', action: 'login');
        }
        [user : user];
    }

    def updateUser(){
        def user = User.get(params.id);
        user.nombre = params.nombre;
        user.apellido = params.apellido;
        user.edad = Integer.parseInt(params.edad);
        if(user == null){
            redirect(controller: 'admin', action: 'login');
        }
        user.save(flush:true);
        redirect(controller:'admin', action:'lista');
    }

    def doLogin(){
        def user = User.findByNombre(params.user);
        if(user != null && params.user.equalsIgnorecase(user.user) && params.password.equalsIgnorecase(user.password)){
            session['user'] = user;
            redirect(controller: 'admin', action:'lista');
        }else{
            redirect(controller: 'admin', action: 'login');
        }
    }

    def login(){
        render(view: 'login');
    }

    def addPost(){
        render(view:'addPost');
    }

    def newPost(){
        render(view:'newPost');
    }

}
