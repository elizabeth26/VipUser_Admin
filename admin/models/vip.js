let db = require('../configDb');


module.exports.ajouter = function(callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT COUNT(*) AS NB FROM vip ;";
              // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.getAllVip = function(callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "select vip.VIP_NUMERO,vip.VIP_NOM,vip.VIP_PRENOM from vip order by vip.VIP_NOM,vip.VIP_PRENOM,Vip.VIP_NUMERO ;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
