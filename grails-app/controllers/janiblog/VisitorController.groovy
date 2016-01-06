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

    def saveComment(){

    }


}
