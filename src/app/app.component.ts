import {Component} from '@angular/core';

@Component({
    selector: 'app-root',
    templateUrl: './app.component.html',
    styleUrls: ['./app.component.css']
})
export class AppComponent {
    title = 'TOOLBOXCENTER';
    loading = false;

    dynamicSortAsc(array, property) {
        let sortOrder = 1;
        if (property[0] === '-') {
            sortOrder = -1;
            property = property.substr(1);
        }
        array.sort(function (a, b) {
            const result = (a[property] < b[property]) ? -1 : (a[property] > b[property]) ? 1 : 0;
            return result * sortOrder;
        });
    }

    dynamicSortDes(array, property) {
        let sortOrder = -1;
        if (property[0] === '-') {
            sortOrder = -1;
            property = property.substr(1);
        }
        array.sort(function (a, b) {
            const result = (a[property] < b[property]) ? -1 : (a[property] > b[property]) ? 1 : 0;
            return result * sortOrder;
        });
    }

    constructor() {
    }

    showLoading() {
        this.loading = true;
    }

    hidenLoading() {
        this.loading = false;
    }


}
