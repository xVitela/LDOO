

public final class Modelao7 {
    private String usuario;
    private String contrasena;
    
    public Modelao7(String usuario, String contrasena){
        setUsuario(usuario);
        setContrasena(contrasena);
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContrasena() {
        return contrasena;
    }
    
    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }
}