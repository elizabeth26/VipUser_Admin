let model = require("../models/articles.js");
let async = require('async');
// ///////////////////////// R E P E R T O I R E    D E S     S T A R S

module.exports.Repertoire = function (request, response) {
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
module.exports.articleCorrespondantduStar = function (request, response) {
    var data = request.params.numero;
    response.title = 'Répertoire des articles';

    async.parallel([
        function (callback) {
            model.arriver(function (err, result) { callback(null, result) });
        },
        function (callback) {
            model.article(data, function (err2, result2) {
                callback(null, result2)
            })
        }
    ],
        function (err, result) {
            if (err) {
                console.log(err);
                return;
            }
            response.allvips = result[0];
            response.article = result[1];
            response.render('article', response);
            
        }
    );
}
