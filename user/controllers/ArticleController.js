let model = require("../models/articles.js");
let async = require('async');
// ///////////////////////// R E P E R T O I R E    D E S     S T A R S

module.exports.Repertoire = function (request, response) {
    model.vip_info(
        function (err, result) {
            if (err) {
                console.log(err);
                return;
            }
            response.vip = result;
            response.render('article', response); // appel la vue Handlebars qui va afficher le résultat
        }
    )
}
module.exports.articleCorrespondantduStar = function (request, response) {
    var data = request.params.numero;
    
    async.parallel([
        function (callback) {
            model.vip_info(function (err, result) { callback(null, result) });
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
            response.numero_vip =request.params.numero;
            response.vip = result[0];
            response.article = result[1];
            response.render('article', response);
            console.log(response.numero_vip);

        }
    );
}
