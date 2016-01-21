package janiblog

class AdminController {

    def index() {
        if(session['user'] == null){
            redirect(controller: 'admin', action:'login');
        }
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
            if(!u.save(flush: true)){
                println u.errors.allErrors.join('\n');
                flash.message = "Error al salvar el usuario";
            }
                redirect(controller: 'admin', action: 'lista');
        }

    }

    def lista(){
        if(session['user'] == null){
            redirect(controller: 'admin', action: 'login');
        }
        User u = new User();
        def listaUsuarios = u.findAll();
        [listaUsuarios:listaUsuarios];
    }

    def delete(){
        if(session['user'] == null){
            redirect(controller: 'admin', action: 'login');
        }
        User u = User.get(params.id);
        if(!u.delete(flush:true)){
            println u.errors.allErrors.join('\n');
            flash.message = "Error al updatear el usuario";
        }

        redirect(controller:'admin',action:'lista');

    }

    def getUser(){
        if(session['user'] == null){
            redirect(controller: 'admin', action: 'login');
        }
        def user = User.get(params.id);
        [user : user];
    }

    def updateUser(){
        if(session['user'] == null){
            redirect(controller: 'admin', action: 'login');
        }
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
        if(session['user'] == null){
            redirect(controller: 'admin', action: 'login');
        }
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
        redirect(controller: 'visitor', action: 'index');
    }

    def demoderateList(){
        if(session['user'] == null){
            redirect(controller: 'admin', action: 'login');
        }
        def listaComments = Comment.findAllByModerated(true);

        [listaComments:listaComments];

    }

    def demoderateComment(){
        if(session['user'] == null){
            redirect(controller: 'admin', action: 'login');
        }
        def comment = Comment.get(params.id);
        comment.moderated = false;
        if(comment.save(flush: true)){
            println comment.errors.allErrors.join('\n')
        }
        redirect(controller: 'admin', action:'demoderateList');
    }


}
