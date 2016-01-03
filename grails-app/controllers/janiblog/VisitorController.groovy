package janiblog

class VisitorController {

    def index() {
       Post p = new Post();
        def listaPost = p.findAll();
        [listaPost : listaPost];
    }


}
