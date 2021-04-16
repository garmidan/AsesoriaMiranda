import { Departamento } from "./Departamento";

export class Municipio{

    public idmunicipio:number;
	public municipio:string;
	public codigopostal:string;
	public departamento:Departamento;

    constructor(idmunicipio: number,municipio:string,codigopostal:string,departamento:Departamento
        ){
            this.idmunicipio = idmunicipio;
            this.municipio= municipio;
            this.codigopostal= codigopostal;
            this.departamento= departamento;
        }

}