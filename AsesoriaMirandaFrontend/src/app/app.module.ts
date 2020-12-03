import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {HttpClientModule} from '@angular/common/http';
import {FormsModule, ReactiveFormsModule} from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LoginComponent } from './templates/login/login.component';
import { HomeComponent } from './templates/home/home.component';
import { AcercaComponent } from './templates/acerca/acerca.component';
import { CabezeraComponent } from './templates/cabezera/cabezera.component';
import { AdministradorComponent } from './templates/administrador/administrador.component';
import { ErrorRutaComponent } from './templates/error-ruta/error-ruta.component';
import { ClienteComponent } from './templates/administrador/cliente/cliente.component';
import { LateralComponent } from './templates/administrador/lateral/lateral.component';
import { ProductoComponent } from './templates/producto/producto.component';
import { ServiciosComponent } from './templates/administrador/servicios/servicios.component';
import { VentasComponent } from './templates/administrador/ventas/ventas.component';
import { FontAwesomeModule } from '@fortawesome/angular-fontawesome';
import { NavComponent } from './templates/administrador/nav/nav.component';

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    HomeComponent,
    AcercaComponent,
    CabezeraComponent,
    AdministradorComponent,
    ErrorRutaComponent,
    ClienteComponent,
    LateralComponent,
    ProductoComponent,
    ServiciosComponent,
    VentasComponent,
    NavComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    ReactiveFormsModule,
    FormsModule,
    FontAwesomeModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
