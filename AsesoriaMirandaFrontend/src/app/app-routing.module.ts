import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './templates/login/login.component';
import { HomeComponent } from './templates/home/home.component';
import { AcercaComponent } from './templates/acerca/acerca.component';
import { AdministradorComponent } from './templates/administrador/administrador.component';
import { ClienteComponent } from './templates/administrador/cliente/cliente.component';




const routes: Routes = [
  { path: 'login', component: LoginComponent },
  { path: '', component: HomeComponent },
  { path: 'acerca', component: AcercaComponent },
  {path: 'Administrador', component:AdministradorComponent},
  {path: 'cliente', component:ClienteComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
