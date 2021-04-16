import { Municipio } from "./Municipio";
import { TipoCliente } from "./TipoCliente";

export class Cliente{

    public idcliente:number;
	public nombresapellidosoempresa:string;
	public telefono:string;
	public celular:string;
	public correo:string;
	public direccion:string;
	public nitocedula:string;
	public tipocliente:TipoCliente;
	public municipio:Municipio;

    constructor(idcliente: number, nombresapellidosoempresa:string, telefono:string, 
        celular:string, correo:string, direccion:string,
        nitocedula:string, tipocliente:TipoCliente, municipio:Municipio
        ){
            this.idcliente = idcliente;
            this.nombresapellidosoempresa= nombresapellidosoempresa;
            this.telefono= telefono;
            this.celular= celular;
            this.correo= correo;
            this.direccion= direccion;
            this.nitocedula= nitocedula;
            this.tipocliente= tipocliente;
            this.municipio= municipio;
        }
}