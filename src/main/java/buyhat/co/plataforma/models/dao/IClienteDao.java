package buyhat.co.plataforma.models.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import buyhat.co.plataforma.models.entites.Ciudad;
import buyhat.co.plataforma.models.entites.Cliente;


public interface IClienteDao extends CrudRepository<Cliente,Long>{
	
	@Query("from Ciudad")
	public List<Ciudad> findAllCiudades();

}
