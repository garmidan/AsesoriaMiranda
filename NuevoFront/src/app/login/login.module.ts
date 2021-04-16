import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { TranslateModule } from '@ngx-translate/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { LoginRoutingModule } from '../login/login-routing.module';
import { LoginComponent } from '../login/login.component';

@NgModule({
    imports: [CommonModule, TranslateModule, LoginRoutingModule, ReactiveFormsModule,FormsModule],
    declarations: [LoginComponent]
})
export class LoginModule {}
