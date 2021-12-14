package buyhat.co.plataforma.models.services;

import buyhat.co.plataforma.models.entites.Usuario;

public interface IUsuarioService {

	public Usuario findByUsername(String username);
	
	public void delete(Usuario Usuario);
}
