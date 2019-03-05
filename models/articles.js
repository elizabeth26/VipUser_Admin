let db = require('../configDb');


module.exports.arriver = function(callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT VIP_NUMERO,VIP_NOM,VIP_PRENOM from vip where VIP_NUMERO in (select VIP_NUMERO from apoursujet) order by VIP_NOM";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};

module.exports.article = function(numero,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT VIP_NOM,VIP_PRENOM,ARTICLE_TITRE,ARTICLE_RESUME " +
                "from vip join apoursujet on vip.VIP_NUMERO = apoursujet.VIP_NUMERO " +
                "join article on apoursujet.ARTICLE_NUMERO = article.ARTICLE_NUMERO  WHERE vip.VIP_NUMERO = "+numero;
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
