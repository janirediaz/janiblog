package janiblog

class Comment {

    boolean moderated;
    String contenido;
    static belongsTo = [post:Post];


    static constraints = {

    }
}
