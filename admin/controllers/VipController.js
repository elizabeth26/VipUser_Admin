
let model = require("../models/vip.js");
let async = require('async');
// ///////////////////////// R E P E R T O I R E    D E S     S T A R S

module.exports.ajouter = 	function(request, response){
     // response.render('repertoireVips', response);
     //  model.premiereLettreStar(
     //      function (err, result) {
     //          if (err) {
     //              console.log(err);
     //              return;
     //          }
     //          response.lettre = result;
              response.title = 'Répertoire des stars';
              response.render('Vip', response); // appel la vue Handlebars qui va afficher le résultat
      //     }
    //       // )
  } ;
module.exports.modifier = function(request, response){
    // response.render('repertoireVips', response);
    //  model.premiereLettreStar(
    //      function (err, result) {
    //          if (err) {
    //              console.log(err);
    //              return;
    //          }
    //          response.lettre = result;
    response.title = 'Répertoire des stars';
    response.render('Vip', response); // appel la vue Handlebars qui va afficher le résultat
    //     }
    //       // )
};
module.exports.supprimer = function(request, response){
    let vipNum = request.body.vip;
    //  model.premiereLettreStar(
    //      function (err, result) {
    //          if (err) {
    //              console.log(err);
    //              return;
    //          }
    //          response.lettre = result;
    response.title = 'Répertoire des stars';
    response.render('Vip', response); // appel la vue Handlebars qui va afficher le résultat
    //     }
    //       // )
};
module.exports.getAllVip = function(request, response){
    // response.render('repertoireVips', response);
      model.getAllVip(
         function (err, result) {
             if (err) {
                 console.log(err);
                 return;
             }
             response.vip = result;
             response.title = 'Répertoire des stars';
             response.render('supprimer', response); // appel la vue Handlebars qui va afficher le résultat
 })};
