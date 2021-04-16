import { Factura } from './Factura';
import { Producto } from './Producto';
import { TipoMovimiento } from './TipoMovimiento';
import { TipoPago } from './TipoPago';
import { Usuario } from './Usuario';

export class Movimiento{
    public idmovimiento: number;
    public cantidad: number;
    public fecha: Date;
    public precioentrada: any;
    public preciosalida: string;
    public observacion:string;
    public producto:Producto;
    public usuario:Usuario;
    public tipomovimiento:TipoMovimiento;
    public idfactura:Factura;
	public cliente:string;
	public idtipopago:TipoPago;
	public cuotas:string;

    constructor(idmovimiento: number, cantidad:number , fecha: Date,
        precioentrada: any, preciosalida: string, observacion:string,
        producto:Producto, usuario:Usuario, tipomovimiento:TipoMovimiento,idfactura:Factura,cliente:string,idtipopago:TipoPago,cuotas:string
        ){
            this.idmovimiento = idmovimiento;
            this.cantidad= cantidad;
            this.fecha= fecha;
            this.precioentrada= precioentrada;
            this.preciosalida= preciosalida;
            this.observacion= observacion;
            this.producto= producto;
            this.usuario= usuario;
            this.tipomovimiento= tipomovimiento;
            this.idfactura = idfactura;
            this.cliente = cliente;
            this.idtipopago = idtipopago;
            this.cuotas = cuotas;
        }
}