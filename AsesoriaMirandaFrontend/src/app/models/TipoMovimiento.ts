export class TipoMovimiento{
    public idtipomovimiento: number;
    public tipo:string;
    public valor:string;
    constructor(idtipomovimiento: number,tipo:string, valor:string
    ){
        this.idtipomovimiento = idtipomovimiento;
        this.tipo = tipo;
        this.valor = valor;
    }
}