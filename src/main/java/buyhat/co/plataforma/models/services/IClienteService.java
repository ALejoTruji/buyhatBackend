package buyhat.co.plataforma.models.services;

import java.util.List;

import buyhat.co.plataforma.models.entites.Cliente;
import buyhat.co.plataforma.models.entites.Pedido;
import buyhat.co.plataforma.models.entites.Producto;
import buyhat.co.plataforma.models.entites.Ciudad;

public interface IClienteService {

	public List<Cliente> findAll();
	
	public Cliente findById(Long id);
	
	public Cliente save(Cliente cliente);
	
	public void delete(Cliente cliente);
	
	public List<Ciudad> findAllCiudades();
	
	public Pedido findPedidoById(Long id);
	
	public List<Pedido> findPedidoAll();
	
	public Pedido savePedido(Pedido factura);
	
	public void deletePedidoById(Long id);
	
	public List<Producto> findProductoByNombre(String term);
	
}
