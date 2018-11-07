
package Model;

public class User {
    
    private String nomb;
    private String mail;
    private String pass;

    public User(String nomb, String mail, String pass) {
        this.nomb = nomb;
        this.mail = mail;
    }

    public User() {
        throw new UnsupportedOperationException("Not supported yet.");  
    }

    public User(String nomb, String pass) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    public String getNomb() {
        return nomb;
    }

    public void setNomb(String nomb) {
        this.nomb = nomb;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    
    
}
