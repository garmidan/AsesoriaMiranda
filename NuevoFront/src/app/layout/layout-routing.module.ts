import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LayoutComponent } from './layout.component';
import { DashboardComponent } from './dashboard/dashboard.component';
import { ClienteComponent } from './cliente/cliente.component';
import { ServiciosComponent } from './servicios/servicios.component';
import { VentasComponent } from './ventas/ventas.component';
import { AuthGuard } from '../shared';
import { FacturaComponent } from './factura/factura.component';


const routes: Routes = [
    {
        path: '',
        component: LayoutComponent,
        children: [
            { path: '', redirectTo: 'dashboardAdmin', pathMatch: 'prefix' },
            {
                path: 'dashboardAdmin',
                component: DashboardComponent,
            },
            {
                path: 'Clientes',
                component: ClienteComponent,
                canActivate: [AuthGuard]
            },
            {
                path: 'Productos',
                component: ServiciosComponent,
                canActivate: [AuthGuard]
            },
            {
                path: 'Ventas',
                component: VentasComponent,
                canActivate: [AuthGuard]
            },
            {
                path: 'Facturas',
                component: FacturaComponent,
                canActivate: [AuthGuard]
            },
            { path: 'charts', loadChildren: () => import('./charts/charts.module').then((m) => m.ChartsModule) },
            { path: 'tables', loadChildren: () => import('./tables/tables.module').then((m) => m.TablesModule) },
            { path: 'forms', loadChildren: () => import('./form/form.module').then((m) => m.FormModule) },
            {
                path: 'bs-element',
                loadChildren: () => import('./bs-element/bs-element.module').then((m) => m.BsElementModule)
            },
            { path: 'grid', loadChildren: () => import('./grid/grid.module').then((m) => m.GridModule) },
            {
                path: 'components',
                loadChildren: () => import('./bs-component/bs-component.module').then((m) => m.BsComponentModule)
            },
            {
                path: 'blank-page',
                loadChildren: () => import('./blank-page/blank-page.module').then((m) => m.BlankPageModule)
            }
        ]
    }
];

@NgModule({
    imports: [RouterModule.forChild(routes)],
    exports: [RouterModule]
})
export class LayoutRoutingModule {}
