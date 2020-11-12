import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpHeaders, HttpClient, HttpEvent, HttpRequest, HttpParams } from '@angular/common/http';
import { Router } from '@angular/router';
import { Global } from './Global';
import { Usuario } from '../models/Usuario';
import { map } from 'rxjs/operators';
import { Inicio } from '../models/Inicio';
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

  cambiarContraseña(contraseña, recupcontraseña, idusuario):Observable<any>{
    let headers = new HttpHeaders({
      "Authorization":"Bearer eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiJzb2Z0dGVrSldUIiwic3ViIjoiZGFuZ2FyOTMiLCJhdXRob3JpdGllcyI6WyJST0xFX1VTRVIiXSwiaWF0IjoxNjA0MDAzNDIzLCJleHAiOjE2MDQwMDQwMjN9.GrH5zDTepzpDZA6GtYl9f8eU0YLHaiuqNk5S5pn8s_jZ3YgkiglWAqSqw-E8OrrWHWrMEDHraJficlR7d1z17g"
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

  registroUsuario(usuario:Usuario):Observable<any>{
    let params = JSON.stringify(usuario);
    let headers = new HttpHeaders({
      "Authorization":"Bearer eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiJzb2Z0dGVrSldUIiwic3ViIjoiZGFuZ2FyOTMiLCJhdXRob3JpdGllcyI6WyJST0xFX1VTRVIiXSwiaWF0IjoxNjA0MDAzNDIzLCJleHAiOjE2MDQwMDQwMjN9.GrH5zDTepzpDZA6GtYl9f8eU0YLHaiuqNk5S5pn8s_jZ3YgkiglWAqSqw-E8OrrWHWrMEDHraJficlR7d1z17g"
    });
    headers.set("Authorization","Bearer eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiJzb2Z0dGVrSldUIiwic3ViIjoiZGFuZ2FyOTMiLCJhdXRob3JpdGllcyI6WyJST0xFX1VTRVIiXSwiaWF0IjoxNjAyODcwODE0LCJleHAiOjE2MDI4NzE0MTR9.xYqqF7mC6wE8dfk8TLjoK2tIb7csRBUXYHDjvhRDcy78e1GonkFtUim-A1c5F7GVlrasyZK0fboHM1PtSiOKuA");
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
}
