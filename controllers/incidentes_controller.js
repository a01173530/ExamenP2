
const Incidente = require('../models/incidente');

exports.getNuevaIncidente=(request, response, next) => {

	response.render('form_incidente');

}

exports.postNuevaIncidente=(request, response, next) => {
   console.log(request.body);
   const incidente = new Incidente(request.body.tipoIncidente,request.body.lugarIncidente);
   incidente.save()
      .then(() => {
        //request.session.ultima_persona = request.body.nombreZona;
        response.redirect('/incidentes');
      }).catch( err => {
           console.log(err);
           response.redirect('/incidentes/incidentes');    
      });
}

exports.get=(request, response, next) => {
	response.setHeader('Set-Cookie', 'persona_cookie=Esto es para segiuir al personal; HttpOnly');
	console.log(request.cookies.persona_cookie);

	Incidente.fetchAll()
          .then(([rows, fieldData]) => {
             console.log(rows);

             response.render('incidente', {
              incidentes: rows,
              //ultima_persona: request.session.ultima_persona === undefined ? "No se ha registrado a nadie" : request.session.ultima_persona
            });
          })
          .catch(err => {
                 console.log(err);
          });


    
}




exports.postIncidente = (request, response, next) => {

    console.log("Petición asíncrona reciba");
    console.log(request.body);
    console.log(request.body.incidenteId);
    

    Incidente.delete(request.body.incidenteId)
        .then(() => {
             Incidente.fetchAll()
                .then(([rows, fieldData]) => {
                    return response.status(200).json({incidentes: rows});
                })
                .catch(err => {
                    console.log(err)
                });
            //return response.status(200).json({message: "Zona eliminada"});
        }).catch((err) => {
            console.log(err);
            return response.status(500).json({message: "Internal Server Error"});
        });
    //response.status(200).json({message: "Respuesta asíncrona"});
}

exports.postBuscar =  (request, response, next) => {

    console.log("Petición asíncrona reciba");
    console.log(request.body.criterio);

    Incidente.fetch(request.body.criterio)
        .then(([rows, fieldData]) => {
            return response.status(200).json({incidentes: rows});
        })
        .catch(err => {
            console.log(err)
        });
        
 }