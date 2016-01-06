package janiblog

class Comment {

    String contenido;
    static belongsTo = [post:Post];

    static constraints = {
    }
}
