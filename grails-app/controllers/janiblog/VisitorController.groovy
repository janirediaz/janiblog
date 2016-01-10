package janiblog

class VisitorController {

    def index() {
       Post p = new Post();
        def listaPost = p.findAll();
        [listaPost : listaPost];
    }

    def detallePost(){
        Post p = Post.get(params.id);
        [p : p];
    }

    def saveComment() {
        Post p = Post.get(params.id);
        Comment c = new Comment();
        c.contenido = params.descripcion;
        p.addToComentarios(c);
        if(!p.save(flush:true)){
            println(p.errors.allErrors.join('\n'));
        }
        redirect(controller: 'visitor', action: 'detallePost', params: [id: params.id]);
    }


}
