let HomeController = require('./../controllers/HomeController');
let VipController = require('./../controllers/VipController');
let AlbumController = require('./../controllers/AlbumController');
let TestController = require('./../controllers/TestController');
let ArticleController = require('./../controllers/ArticleController');


// Routes
module.exports = function(app){



// Main Routes
    app.get('/', HomeController.Index);
    app.get('/accueil', HomeController.Index);

// VIP
    app.get('/repertoire', VipController.Repertoire);
    app.get('/repertoire/:lettre', VipController.starCorrespondant);
    app.get('/repertoire/:lettre/:numero', VipController.StarInfo);
 // albums
   app.get('/album/:numero', AlbumController.ListerAlbum);
    app.get('/album/:numero/:vip/:numPhoto', AlbumController.photoVip);
//article
    app.get('/articles',ArticleController.Repertoire);
    app.get('/articles/:numero',ArticleController.articleCorrespondantduStar);
    
// tout le reste
    app.get('*', HomeController.NotFound);
    app.post('*', HomeController.NotFound);

};
