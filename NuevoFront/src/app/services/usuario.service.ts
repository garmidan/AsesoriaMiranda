import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpHeaders, HttpClient, HttpEvent, HttpRequest, HttpParams } from '@angular/common/http';
import { Router } from '@angular/router';
import { Global } from './Global';
import { Usuario } from '../models/Usuario';
import { map } from 'rxjs/operators';
import { Inicio } from '../models/Inicio';
import { Movimiento } from '../models/Movimiento';
import { Cliente } from '../models/Cliente';
@Injectable({
  providedIn: 'root'
})
export class UsuarioService {

  public url: string;

  constructor(
    private http: HttpClient, private router: Router
  ) {
    /*Url del backend*/
    this.url = Global.url;
  }

  /*Consumiendo Servicios*/
  login(datos:Inicio): Observable<any> {
    let params = JSON.stringify(datos);
    let headers = new HttpHeaders().set('Content-Type', 'application/json');
    return this.http.post(this.url+'login', params,{headers:headers});
  }

  isUserLoggedIn() {
    let user = sessionStorage.getItem('username')
    console.log(!(user === null))
    return !(user === null)
  }

  cambiarContraseña(contraseña, recupcontraseña, idusuario, token:string):Observable<any>{
    let headers = new HttpHeaders({
      "Authorization":token
    });
    return this.http.get(this.url + 'cambiocontraseña/'+contraseña+'/'+recupcontraseña+'/'
    +idusuario, {headers:headers});
  }

  recuperarContraseña(correoOusuario):Observable<any>{
    let headers = new HttpHeaders().set('Content-Type', 'application/json');
    return this.http.get(this.url + 'recuperarcontraseña/'+correoOusuario, {headers:headers});
  }

  importArchivo(file: File): Observable<HttpEvent<{}>> {
    const data: FormData = new FormData();
    data.append('file', file);
    const newRequest = new HttpRequest('POST', this.url+'importArchivo', data, {
      reportProgress: true,
      responseType: 'text'
    });
    return this.http.request(newRequest);
  }

  validarArchivo():Observable<any>{
    let headers = new HttpHeaders({
      "Authorization":"Bearer eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiJzb2Z0dGVrSldUIiwic3ViIjoiZGFuZ2FyOTMiLCJhdXRob3JpdGllcyI6WyJST0xFX1VTRVIiXSwiaWF0IjoxNjA0MDAzNDIzLCJleHAiOjE2MDQwMDQwMjN9.GrH5zDTepzpDZA6GtYl9f8eU0YLHaiuqNk5S5pn8s_jZ3YgkiglWAqSqw-E8OrrWHWrMEDHraJficlR7d1z17g"
    });
    return this.http.get(this.url + 'validarArchivo', {headers:headers});
  }

  getRol(token:string):Observable<any>{
    let headers = new HttpHeaders({
      "Authorization":token
    });
    return this.http.get(this.url + 'listaroles',{ headers: headers });
  }

  registroUsuario(usuario:Usuario,token:string):Observable<any>{
    let params = JSON.stringify(usuario);
    let headers = new HttpHeaders({
      "Content-Type": "application/json",
      "Authorization":token
    });
    return this.http.post(this.url+'register', params, {headers: headers});
  }

  exportPlantilla():Observable<any>{
    let headers = new HttpHeaders({
      "Authorization":"Bearer eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiJzb2Z0dGVrSldUIiwic3ViIjoiZGFuZ2FyOTMiLCJhdXRob3JpdGllcyI6WyJST0xFX1VTRVIiXSwiaWF0IjoxNjA0MDAzNDIzLCJleHAiOjE2MDQwMDQwMjN9.GrH5zDTepzpDZA6GtYl9f8eU0YLHaiuqNk5S5pn8s_jZ3YgkiglWAqSqw-E8OrrWHWrMEDHraJficlR7d1z17g"
    });
    return this.http.post(this.url + 'exporArchivo',{ headers: headers });
  }

  recuperarToken():Observable<any>{
    return this.http.get(this.url+'recuperDatos');
  }

  gettipomovimiento(token:string):Observable<any>{
    let headers = new HttpHeaders({
      "Authorization":token
    });
    return this.http.get(this.url + 'gettipomovimiento',{ headers: headers });
  }

  registermovimientoentrada(movimiento:Movimiento,token:string):Observable<any>{
    let params = JSON.stringify(movimiento);
    let headers = new HttpHeaders({
      "Content-Type": "application/json",
      "Authorization":token
    });
    return this.http.post(this.url+'registermovimientoentrada', params, {headers: headers});
  }

  gettipo(token:string):Observable<any>{
    let headers = new HttpHeaders({
      "Authorization":token
    });
    return this.http.get(this.url + 'gettipo',{ headers: headers });
  }

  getmarca(token:string):Observable<any>{
    let headers = new HttpHeaders({
      "Authorization":token
    });
    return this.http.get(this.url + 'getmarca',{ headers: headers });
  }

    datosUsuario(token: string): Observable<any>{
    let headers = new HttpHeaders({
      "Authorization":token
    });
    return this.http.get(this.url + 'datosUsuario',{ headers: headers });
  }

  
  getmovimiento(token:string):Observable<any>{
    let headers = new HttpHeaders({
      "Authorization":token
    });
    return this.http.get(this.url + 'getmovimientos',{ headers: headers });
  }

  getproductos(token:string):Observable<any>{
    let headers = new HttpHeaders({
      "Authorization":token
    });
    return this.http.get(this.url + 'getproductos',{ headers: headers });
  }

  getMovimientosEntrada(token:string, idtipomovimiento:number):Observable<any>{
    let headers = new HttpHeaders({
      "Authorization":token
    });
    return this.http.get(this.url + 'getMovimientosEntrada'+'/'+idtipomovimiento,{ headers: headers });
  }

  registermovimientosalida(movimientLista:Movimiento[] = [],token:string):Observable<any>{
    let params = JSON.stringify(movimientLista);
    let headers = new HttpHeaders({
      "Content-Type": "application/json",
      "Authorization":token
    });
    return this.http.post(this.url+'registrosMovimientosSalida', params, {headers: headers});
  }

  validarCodigoExistente(token:string, codigo:string):Observable<any>{
    let headers = new HttpHeaders({
      "Authorization":token
    });
    return this.http.get(this.url + 'validarCodigoExistente/'+codigo,{ headers: headers });
  }

  getvalidarCedulaoNit(token:string, nitocedula:string):Observable<any>{
  let headers = new HttpHeaders({
      "Authorization":token
    });
    return this.http.get(this.url + 'getCliente/'+nitocedula,{ headers: headers });
  }

  getTipoPago(token:string):Observable<any>{
    let headers = new HttpHeaders({
        "Authorization":token
      });
      return this.http.get(this.url + 'getTipoPago/',{ headers: headers });
    }

  getMunicipio(token:string):Observable<any>{
    let headers = new HttpHeaders({
      "Authorization":token
    });
    return this.http.get(this.url + 'getMunicipio/',{ headers: headers });
  }

  getTipoCliente(token:string):Observable<any>{
    let headers = new HttpHeaders({
      "Authorization":token
    });
    return this.http.get(this.url + 'getTipoCliente/',{ headers: headers });
  }

  registrarClienteMovimiento(clienteMov:Cliente,token:string):Observable<any>{
    let params = JSON.stringify(clienteMov);
    let headers = new HttpHeaders({
      "Content-Type": "application/json",
      "Authorization":token
    });
    return this.http.post(this.url+'registrarClienteMovimiento', params, {headers: headers});
  }
  
  getFactura(token:string):Observable<any>{
    let headers = new HttpHeaders({
      "Authorization":token
    });
    return this.http.get(this.url + 'getFactura/',{ headers: headers });
  }

  getFacturaID(idfactura:number,token:string):Observable<any>{
    let headers = new HttpHeaders({
      "Authorization":token
    });
    return this.http.get(this.url+'getFacturaID/'+idfactura, {headers: headers});
  }

}
