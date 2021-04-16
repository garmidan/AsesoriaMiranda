import { Rol } from './Rol';

export class Usuario{
    public idusuario: number;
    public nombres:string;
    public apellidos:string;
    public celular:string;
    public telefono:string;
    public direccion:string;
    public correo:string;
    public usuario:string;
    public clave:string;
    public recupcontraseña:number;
    public rol:Rol;
    constructor(idusuario: number,nombres:string,apellidos:string,celular:string,telefono:string,
        direccion:string,correo:string,usuario:string,clave:string,recupcontraseña:number,rol:Rol
    ){
        this.idusuario = idusuario;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.celular = celular;
        this.telefono = telefono;
        this.direccion = direccion;
        this.correo = correo;
        this.usuario = usuario;
        this.clave = clave;
        this.recupcontraseña = recupcontraseña;
        this.rol = rol;
    }

    
}