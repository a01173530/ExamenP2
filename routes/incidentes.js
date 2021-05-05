const express = require('express');
const router = express.Router();
const path = require('path');
const incidentesController = require('../controllers/incidentes_controller');
const isAuth = require('../util/is-auth');


router.get('/incidentes',  /*isAuth,*/ incidentesController.getNuevaIncidente);

router.post('/incidentes',  /*isAuth,*/ incidentesController.postNuevaIncidente);


router.get('/',  /*isAuth,*/ incidentesController.get);


router.post('/eliminar', /*isAuth,*/ incidentesController.postIncidente);

router.post('/buscar',/*isAuth,*/ incidentesController.postBuscar);


module.exports = router;
