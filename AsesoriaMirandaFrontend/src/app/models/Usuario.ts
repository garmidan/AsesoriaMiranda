import { Rol } from './Rol';

export class Usuario{
    constructor(
        public idusuario: number,
        public nombres:string,
        public apellidos:string,
        public celular:string,
        public telefono:string,
        public direccion:string,
        public correo:string,
        public clave:string,
        public rol:Rol
    ){

    }
}