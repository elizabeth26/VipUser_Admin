let admin = require('./../models/admin');
let Cryptr = require('cryptr');
let cryptr = new Cryptr('MaSuperCléDeChiffrementDeouF'); // clé de chiffrement. Ne pas la modifier
module.exports.connextion = function(request, response){
    let log = request.body.log;
    let mdp = request.body.mdp;
    admin.connection(function (err, result) {
        if (err) {
            console.log(err);
            return;
        }
        let decrypt = cryptr.decrypt(result[0].PASSWD);
        if (log == result[0].login && mdp  == decrypt){
            request.session.connecter = result[0].login;
            console.log("oui");
        }else {
            console.log(decrypt);
            console.log(mdp);
        }
        console.log("oui");
        response.title = "Bienvenue sur le site de SIXVOIX (IUT du Limousin).";
        response.render('Vip', response);
    })
};
module.exports.deconnexion = function(request, response){
    request.session.connecter = undefined;
    response.title = "Bienvenue sur le site de SIXVOIX (IUT du Limousin).";
    response.render('Vip', response);
};

module.exports.NotFound = function(request, response){
    response.title = "Bienvenue sur le site de SIXVOIX (IUT du Limousin).";
    response.render('notFound', response);
};
