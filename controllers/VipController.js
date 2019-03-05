
let model = require("../models/vip.js");
let async = require('async');
// ///////////////////////// R E P E R T O I R E    D E S     S T A R S

module.exports.Repertoire = 	function(request, response){
     // response.render('repertoireVips', response);
      model.premiereLettreStar(
          function (err, result) {
              if (err) {
                  console.log(err);
                  return;
              }
              response.lettre = result;
              response.title = 'Répertoire des stars';
              response.render('repertoireVips', response); // appel la vue Handlebars qui va afficher le résultat
          }
      )
  } ;
module.exports.starCorrespondant= 	function(request, response){
    // response.render('repertoireVips', response);
    var data = request.params.lettre;
    response.title = 'Répertoire des stars';
    async.parallel([
        function (callback){
            model.premiereLettreStar(function (err, result) {callback(null,result)});
        },
        function (callback) {
            model.StarCorrespondantaLettre(data,function (err2,result2) {
                callback(null,result2)
            })
        }
   ],
        function (err, result) {
            if (err) {
                console.log(err);
                return;
            }

            response.lettre = result[0];
            response.star = result[1];
            response.render('repertoireVips', response);
        }
        );
   /* model.StarCorrespondantaLettre(
        request.params.lettre,function (err, result) {
            if (err) {
                console.log(err);
                return;
            }
            response.star = result;
            response.title = 'Répertoire des stars';
            response.render('repertoireVips', response); // appel la vue Handlebars qui va afficher le résultat
        }
    )*/
} ;
module.exports.StarInfo= 	function(request, response){
    var data = request.params.numero;
    response.title = 'Répertoire des stars';
    async.parallel([
            function (callback){
                model.premiereLettreStar(function (err, result) {callback(null,result)});
            },
            function (callback) {
                model.DetailStar(data ,function (err, result) {callback(null,result)} )
            },
            function (callback) {
                model.MariageActeur(data ,function (err, result) {callback(null,result)} )
            },
            function (callback) {
                model.liaision(data ,function (err, result) {callback(null,result)} )
            },
            function (callback) {
                model.EstActeur(data ,function (err, result) {callback(null,result)} )
            },
            function (callback) {
                model.EstChanteur(data ,function (err, result) {callback(null,result)} )
            },
            function (callback) {
                model.EstMannequin(data ,function (err, result) {callback(null,result)} )
            },
            function (callback) {
                model.EstRealisateur(data ,function (err, result) {callback(null,result)} )
            },
            function (callback) {
                model.EstCouturier(data ,function (err, result) {callback(null,result)} )
            },
            function (callback) {
                model.listeImage(data ,function (err, result) {callback(null,result)} )
            },
        ],
        function (err, result) {
            if (err) {
                console.log(err);
                return;
            }

            response.lettre = result[0];
            response.infoStar = result[1];
            response.infoMariage = result[2];
            response.infoLiaison = result[3];
            response.InfoActeur = result[4];
            response.InfoChanteur = result[5];
            response.InfoMannequin = result[6];
            response.infoRealisateur = result[7];
            response.infoCouturier = result[8];
            response.listeImage = result[9];
            response.premiereImage = result[9][0];
            //console.log(data);
            request.session.vipNum = data;
            console.log(request.session.vipNum);
            response.render('repertoireVips', response);
        }
    );

} ;