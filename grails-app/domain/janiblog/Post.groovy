package janiblog

class Post {

    static hasMany = [comentarios:Comment]

    String titulo;
    String descripcion;

    static constraints = {
    }
}
