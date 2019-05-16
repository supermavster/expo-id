import {BrowserModule} from '@angular/platform-browser';
import {NgModule} from '@angular/core';
import {AppRoutingModule} from './app-routing.module';
import {AppComponent} from './app.component';
import {RouterModule, Routes} from '@angular/router';
import {LoginComponent} from './components/login/login.component';
import {HttpClientModule} from '@angular/common/http';
import {FormsModule} from '@angular/forms';
import {NgxCurrencyModule} from 'ngx-currency';
import {NgbModule} from '@ng-bootstrap/ng-bootstrap';

const appRutes: Routes = [
    {path: '', component: LoginComponent},
    {path: '**', redirectTo: ''}
];

export const customCurrencyMaskConfig = {
    align: 'right',
    allowNegative: false,
    allowZero: true,
    decimal: '.',
    precision: 0,
    prefix: '$ ',
    suffix: '',
    thousands: ',',
    nullable: true
};

@NgModule({
    declarations: [
        AppComponent,
        LoginComponent,
    ],
    imports: [
        BrowserModule,
        FormsModule,
        AppRoutingModule,
        RouterModule.forRoot(appRutes),
        HttpClientModule,
        NgxCurrencyModule.forRoot(customCurrencyMaskConfig),
        NgbModule
    ],
    providers: [],
    bootstrap: [AppComponent]
})
export class AppModule {
}
