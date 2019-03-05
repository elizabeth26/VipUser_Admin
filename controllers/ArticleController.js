let model = require("../models/articles.js");
let async = require('async');
// ///////////////////////// R E P E R T O I R E    D E S     S T A R S

module.exports.Repertoire = 	function(request, response){
    model.arriver(
        function (err, result) {
            if (err) {
                console.log(err);
                return;
            }
            response.vip = result;
            response.title = 'Répertoire des articles';
            response.render('article', response); // appel la vue Handlebars qui va afficher le résultat
        }
    )
}

module.exports.article = 	function(request, response){
    model.arriver(
        function (err, result) {
            if (err) {
                console.log(err);
                return;
            }
            response.vip = result;
            response.title = 'Répertoire des articles';
            response.render('article', response); // appel la vue Handlebars qui va afficher le résultat
        }
    )
}