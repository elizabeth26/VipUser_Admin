let db = require('../configDb');

module.exports.connection = function(callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT login ,PASSWD FROM parametres;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
