package janiblog

class AdminController {

    def index() {
    }

    def saveUser(){
        if(session['user'] == null){
            redirect(controller: 'admin', action: 'login');
        }else{
            User u = new User();
            u.nombre = params.nombre;
            u.apellido = params.apellido;
            u.edad = Integer.parseInt(params.edad);
            u.user = params.user;
            u.password = params.password;
            u.save(flush: true);
            redirect(controller: 'admin', action: 'lista');
        }
    }

    def lista(){
        User u = new User();
        def listaUsuarios = u.findAll();
        [listaUsuarios:listaUsuarios];
    }

    def delete(){
        User u = User.get(params.id);
        if(!u.delete(flush:true)){
            println u.errors.allErrors.join('\n');
            flash.message = "Error al updatear el usuario";
        }

        redirect(controller:'admin',action:'lista');

    }

    def getUser(){
        def user = User.get(params.id);
        [user : user];
    }

    def updateUser(){
        def user = User.get(params.id);
        user.nombre = params.nombre;
        user.apellido = params.apellido;
        user.edad = Integer.parseInt(params.edad);
        if(!user.save(flush:true)){
            println user.errors.allErrors.join('\n');

        }

        redirect(controller:'admin', action:'lista');
    }

    def doLogin(){
        def user = User.findByUser(params.user);
        println params.user + 'user';
        if(user != null && params.user.equalsIgnoreCase(user.user) && params.password.equalsIgnoreCase(user.password)){
            session['user'] = user;
            redirect(controller: 'admin', action:'dashBoard');
        }else{
            redirect(controller: 'admin', action: 'login');
        }
    }

    def login(){
        render(view: 'login');
    }



    def newPost(){

    }

    def dashBoard(){
        if(session['user'] == null){
            redirect(controller: 'admin', action: 'login');
        }
    }

    def savePost(){
        println params;
        Post p = new Post();
        p.titulo = params.titulo;
        p.descripcion = params.descripcion;
        if(!p.save(flush:true)){
            println p.errors.allErrors.join('\n');
        }
        redirect(controller: 'admin', action: 'dashBoard');
    }

}
