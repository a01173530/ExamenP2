
const db = require('../util/database');

module.exports = class Tipo_incidente {

    /*//Constructor de la clase. Sirve para crear un nuevo objeto, y en él se definen las propiedades del modelo
    constructor(tipoIncidente, lugarIncidente) {
        this.tipoIncidente= tipoIncidente;
        this.lugarIncidente= lugarIncidente;

    }

    //Este método servirá para guardar de manera persistente el nuevo objeto. 
    save() {

      return db.execute('INSERT INTO incidente (tipoIncidente,lugarIncidente) VALUES (?,?)',
        [this.tipoIncidente,this.lugarIncidente]
        );
        
    }*/

    //Este método servirá para devolver los objetos del almacenamiento persistente.
    static fetchAll() {
        return db.execute('SELECT * FROM tipo_incidente')
          
        //return personas;
        
    }


}