import {Injectable} from '@angular/core';
import {HttpClient, HttpHeaders} from '@angular/common/http';

@Injectable({
    providedIn: 'root'
})
export class UsuariosService {

    headers = new HttpHeaders({
        'Content-Type': 'application/json',
        'api-key': '044dbfe4fdd593c6e1b5a42d4ed1920832b2e1f14a1f12ea8253a6f51afdb584'
    });

    constructor(private http: HttpClient) {
    }

    getPerson() {
        return this.http.get('http://localhost/maraton/api/public/usuarios/',
            {headers: this.headers});
    }

    getPromedioMugeres() {
        return this.http.get('http://localhost/maraton/api/public/usuarios/mujeres',
            {headers: this.headers});
    }
    getHombres() {
        return this.http.get('http://localhost/maraton/api/public/usuarios/hombres',
            {headers: this.headers});
    }
    cargarJson() {
        return this.http.get('http://192.168.43.44/source/controller/control.php?addData=true',
            {headers: this.headers});
    }
}
