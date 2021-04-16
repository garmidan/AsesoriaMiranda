export class Departamento{
    
    public iddepartamento:number;
	public departamento:string;
	public codigopostal:string;

    constructor(iddepartamento: number,departamento:string,codigopostal:string
        ){
            this.iddepartamento = iddepartamento;
            this.departamento= departamento;
            this.codigopostal= codigopostal;
        }

}