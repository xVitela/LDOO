
class LoginBean {
    
    private String nomb, pass;
    
    public String getNomb(){
        return nomb;
    }
    
    public void setNomb(String nomb){
        this.nomb = nomb;
    }
    
    public String getPass(){
        return pass;
    }
    
    public void setPass(String pass){
        this.pass = pass;
    }
    
    public boolean validate(){
        if(pass.equals("vitela")){
            return true;
        }else{
            return false;
        }
    }
      

}
    

