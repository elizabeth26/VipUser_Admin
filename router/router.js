let HomeController = require('./../controllers/HomeController');
let VipController = require('./../controllers/VipController');
let AlbumController = require('./../controllers/AlbumController');
let TestController = require('./../controllers/TestController');
let ArticleController = require('./../controllers/ArticleController');


// Routes
module.exports = function(app){

  // tests à supprimer
    app.get('/test', TestController.Test);

// Main Routes
    app.get('/', HomeController.Index);
    app.get('/accueil', HomeController.Index);

// VIP
    app.get('/repertoire', VipController.Repertoire);
    app.get('/repertoire/:lettre', VipController.starCorrespondant);
    app.get('/repertoire/:lettre/:numero', VipController.StarInfo);
 // albums
   app.get('/album', AlbumController.ListerAlbum);

//article
    app.get('/articles',ArticleController.Repertoire);
    app.get('/articles/:numero',ArticleController.articleCorrespondantduStar);
    
// tout le reste
    app.get('*', HomeController.NotFound);
    app.post('*', HomeController.NotFound);

};
