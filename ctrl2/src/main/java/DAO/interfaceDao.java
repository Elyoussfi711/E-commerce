package DAO;

import java.util.List;

import metier.USER;


public interface interfaceDao {
	
	
	
	
	public void ajouter( USER  L ) ;
    public List<USER> lister();
    public void supprimer( String login) ;
	public void modifier(USER u,String ancienLogin);
	public USER getLogin(String login); 

}
