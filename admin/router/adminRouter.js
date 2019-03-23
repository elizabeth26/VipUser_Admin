let HomeController = require('./../controllers/HomeController');
let VipController = require('./../controllers/VipController');
let AlbumController = require('./../controllers/AlbumController');
let ArticleController = require('./../controllers/ArticleController');
let AdminController = require('./../controllers/adminController');

// Routes
module.exports = function(app){

     app.post('/',AdminController.connextion);
     app.get('/',AdminController.deconnexion);

     app.get('/VIPS',VipController.ajouter);
     app.get('/VIPS/Modifier',VipController.modifier);
     app.get('/VIPS/Supprimer',VipController.getAllVip);
     app.post('/VIPS/Supprimer',VipController.supprimer);
// Main Routes
//     app.get('/', AdminController.connextion);
//     app.get('/accueil', AdminController.connextion);

// VIP
//     app.get('/repertoire', VipController.Repertoire);
//     app.get('/repertoire/:lettre', VipController.starCorrespondant);
//     app.get('/repertoire/:lettre/:numero', VipController.StarInfo);
//     // albums
//     app.get('/album/:numero', AlbumController.ListerAlbum);
//     app.get('/album/:numero/:vip/:numPhoto', AlbumController.photoVip);
// //article
//     app.get('/articles',ArticleController.Repertoire);
//     app.get('/articles/:numero',ArticleController.articleCorrespondantduStar);

// tout le reste
    app.get('*', HomeController.NotFound);
    app.post('*', HomeController.NotFound);

};
