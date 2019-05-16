import {Component, OnInit} from '@angular/core';
import {UsuariosService} from '../../services/usuarios.service';
import {AppComponent} from '../../app.component';
import swal from 'sweetalert2';
import {Person} from '../../models/person';

export class Dominio {
    dominio: string;
    cantidad: number;
}

@Component({
    selector: 'app-login',
    templateUrl: './login.component.html',
    styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

    personasAll: Person[] = [];
    page = 1;
    pageSize = 20;
    collectionSize = 0;

    dominios: Dominio[] = [];


    constructor(private usuariosService: UsuariosService,
                private app: AppComponent) {
    }

    get personas(): Person[] {
        this.collectionSize = this.personasAll.length;
        return this.personasAll
            .map((country, i) => ({id: i + 1, ...country}))
            .slice((this.page - 1) * this.pageSize, (this.page - 1) * this.pageSize + this.pageSize);
    }

    ngOnInit() {
    }

    getData() {
        this.app.showLoading();
        this.usuariosService.getPerson().subscribe(res => {
            this.personasAll = [];
            Array.prototype.push.apply(this.personasAll, res['result']);
            for (const p of this.personasAll) {
                p.dominio = p.email.split('@')[1];
            }
            this.app.dynamicSortAsc(this.personasAll, 'dominio');
            this.dominios = [];
            for (const p of this.personasAll) {
                const dominio = new Dominio();
                dominio.dominio = p.dominio;
                dominio.cantidad = this.personasAll.filter(x => x.dominio === p.dominio).length;
                this.dominios.push(dominio);
            }
            this.app.hidenLoading();
        });
    }

    clearData() {
        this.personasAll = [];
    }

    calcularDominio() {
        const dominioMayor = new Dominio();
        dominioMayor.cantidad = 0;
        for (const d of this.dominios) {
            if (d.cantidad > dominioMayor.cantidad) {
                dominioMayor.cantidad = d.cantidad;
                dominioMayor.dominio = d.dominio;
            }
        }
        swal({
            title: dominioMayor.dominio + '\n' + dominioMayor.cantidad
        });
    }

    calcularEdadMujeres() {
        this.app.showLoading();
        this.usuariosService.getPromedioMugeres().subscribe(res => {
            this.app.hidenLoading();
            swal({
                title: res['result']
            });
        });
    }

    cargoMenosComun() {
        this.app.showLoading();
        let cantCargo = 99999999;
        let cargo = '';
        for (const p of this.personasAll) {
            const cant = this.personasAll.filter(x => x.job_title === p.job_title).length;
            if (cant < cantCargo) {
                cantCargo = cant;
                cargo = p.job_title;
            }
        }
        this.app.hidenLoading();
        swal({
                title: cargo + '\n' + cantCargo
            }
        );
    }

    calcularMasEmpleados() {
        let compania = '';
        let canEmpleados = 0;
        for (const p of this.personasAll) {
            const cant = this.personasAll.filter(x => x.company === p.company).length;
            if (cant > canEmpleados) {
                canEmpleados = cant;
                compania = p.company;
            }
        }
        swal({
            title: compania + '\n' + canEmpleados
        });
    }

    mesHombres() {
        this.app.showLoading();
        this.usuariosService.getHombres().subscribe(res => {
            this.app.hidenLoading();
            swal({
                title: res['result']
            });
        });
    }

    cargarJson() {
        this.app.showLoading();
        this.usuariosService.cargarJson().subscribe(res => {
            this.app.hidenLoading();
        });
    }
}
