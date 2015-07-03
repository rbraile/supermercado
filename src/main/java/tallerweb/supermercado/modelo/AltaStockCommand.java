package tallerweb.supermercado.modelo;

public class AltaStockCommand {
	private String nombre;
	private Integer cantidad;
	
	public String getNombre() {
        return this.nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public Integer getCantidad() {
        return this.cantidad;
    }
    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }

}
