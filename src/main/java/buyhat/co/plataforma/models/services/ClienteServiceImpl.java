package buyhat.co.plataforma.models.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import buyhat.co.plataforma.models.dao.IClienteDao;
import buyhat.co.plataforma.models.dao.IPedidoDao;
import buyhat.co.plataforma.models.dao.IProductoDao;
import buyhat.co.plataforma.models.entites.Cliente;
import buyhat.co.plataforma.models.entites.Pedido;
import buyhat.co.plataforma.models.entites.Producto;

import buyhat.co.plataforma.models.entites.Ciudad;


@Service
public class ClienteServiceImpl implements IClienteService{
 
	@Autowired
	private IClienteDao clienteDao;
	
	@Autowired
	private IPedidoDao pedidoDao;
	
	@Autowired
	private IProductoDao productoDao;
	
	@Override
	@Transactional(readOnly=true)
	public List<Cliente> findAll() {		
		return (List<Cliente>) clienteDao.findAll();
	}

	@Override
	@Transactional(readOnly=true)
	public Cliente findById(Long id) {
		return  clienteDao.findById(id).orElse(null);
	}

	@Override
	@Transactional
	public Cliente save(Cliente cliente) {
	   return clienteDao.save(cliente);
		
	}

	@Override
	@Transactional
	public void delete(Cliente cliente) {
		clienteDao.delete(cliente);
		
	}
	
	@Override
	@Transactional(readOnly = true)
	public List<Ciudad> findAllCiudades() {
		return clienteDao.findAllCiudades();
	}

	@Override
	@Transactional(readOnly=true)
	public Pedido findPedidoById(Long id) {
		return pedidoDao.findById(id).orElse(null);
		
	}

	@Override
	@Transactional
	public Pedido savePedido(Pedido pedido) {
		return pedidoDao.save(pedido);
	}

	@Override
	@Transactional
	public void deletePedidoById(Long id) {
		pedidoDao.deleteById(id);
		
	}

	@Override
	@Transactional(readOnly = true)
	public List<Producto> findProductoByNombre(String term) {
		return productoDao.findByNombreContainingIgnoreCase(term);
	}

	@Override
	public List<Pedido> findPedidoAll() {
		 return (List<Pedido>) pedidoDao.findAll();
	}
}
