import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpHeaders, HttpClient, HttpEvent, HttpRequest } from '@angular/common/http';
import { Router } from '@angular/router';
import { Global } from './Global';
import { Usuario } from '../models/Usuario';

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
  login(usuario,clave): Observable<any> {
    let headers = new HttpHeaders().set('Content-Type', 'application/json');
    return this.http.get(this.url + 'login/' + usuario + '/'+clave, { headers: headers });
  }

  cambiarContraseña(contraseña, recupcontraseña, idusuario):Observable<any>{
    let headers = new HttpHeaders().set('Content-Type', 'application/json');
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
    let headers = new HttpHeaders().set('Content-Type', 'application/json');
    return this.http.get(this.url + 'validarArchivo', {headers:headers});
  }

  getRol():Observable<any>{
    let headers = new HttpHeaders().set('Content-Type', 'application/json');
    return this.http.get(this.url + 'listaroles',{ headers: headers });
  }

  registroUsuario(usuario:Usuario):Observable<any>{
    let params = JSON.stringify(usuario);
    let headers = new HttpHeaders().set('Content-Type','application/json');
    return this.http.post(this.url+'register', params, {headers: headers});
  }

  exportPlantilla():Observable<any>{
    let headers = new HttpHeaders().set('Content-Type', 'application/json');
    return this.http.post(this.url + 'exporArchivo',{ headers: headers });
  }
}
