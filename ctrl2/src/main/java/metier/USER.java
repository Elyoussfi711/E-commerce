package metier;

public class USER implements java.io.Serializable {
	
	private String login ;
	private String mdp ;
	
	
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getMdp() {
		return mdp;
	}
	public void setMdp(String mdp) {
		this.mdp = mdp;
	}
	public USER() {
		super();
		// TODO Auto-generated constructor stub
	}
	public USER(String login, String mdp) {
		super();
		this.login = login;
		this.mdp = mdp;
	}
	
	
	

}
