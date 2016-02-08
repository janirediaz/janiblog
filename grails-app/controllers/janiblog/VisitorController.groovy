package janiblog

class VisitorController {

    def index() {

        def user = User.get(6);

        def pagina = 0;
        if(params.pagina == null){
            pagina = 1;
            println("pasa" + pagina);
        }else{
            pagina = Integer.parseInt(params.pagina);
            println("pasaelse" + pagina);
        }

        def listaTotal = Post.findAll();
        def optionSelected = params.numeroPosts;

        def listaPost = Post.findAll([max: params.numeroPosts, offset: (pagina -1) * (Integer.parseInt(params.numeroPosts))]);
        [listaPost : listaPost, user: user, listaTotal: listaTotal, pagina: pagina, optionSelected: optionSelected];

    }


    def detallePost(){
        Post p = Post.get(params.id);
        [p : p];
    }

    def saveComment() {
        Post p = Post.get(params.id);
        Comment c = new Comment();
        c.contenido = params.descripcion;
        c.moderated = true;
        p.addToComentarios(c);
        if(!p.save(flush:true)){
            println(p.errors.allErrors.join('\n'));
        }
        redirect(controller: 'visitor', action: 'detallePost', params: [id: params.id]);
    }

    def getDetailUserAjax(){
        def user = User.get(6);
        [user: user];
    }


}
