package janiblog

class VisitorController {

    def index() {

        def user = User.get(14);

        def pagina = 0;
        if(params.pagina == null){
            pagina = 1;
            println("pasa" + pagina);
        }else{
            pagina = Integer.parseInt(params.pagina);
            println("pasaelse" + pagina);
        }

        def listaTotal = Post.findAll();

        def listaPost = Post.findAll([max: 5, offset: (pagina -1) * 5]);
        [listaPost : listaPost, user: user, listaTotal: listaTotal];

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


}
