import { Marca } from './Marca';
import { Tipo } from './Tipo';

export class Producto{
    public idproducto: number;
	public cantidad:number;
	public codigo:string;
	public descripcion:string;
	public marca:Marca;
    public tipo:Tipo;
    
    constructor(idproducto: number, cantidad:number , codigo:string,
        descripcion:string, marca:Marca, tipo:Tipo
        ){
            this.idproducto = idproducto;
            this.cantidad= cantidad;
            this.codigo= codigo;
            this.descripcion= descripcion;
            this.marca= marca;
            this.tipo= tipo;
        }
}