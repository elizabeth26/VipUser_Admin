let db = require('../configDb');


module.exports.getFirstPhoto = function(numero,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT vip.VIP_NUMERO as vip, photo.PHOTO_ADRESSE as addr" +
                " from vip join photo on photo.VIP_NUMERO=vip.VIP_NUMERO WHERE photo.PHOTO_NUMERO=1 order by vip.VIP_NOM limit "+numero*12+" ,12 " ;
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};

module.exports.nbPhoto = function(callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT COUNT(*) as nb from vip join photo on photo.VIP_NUMERO=vip.VIP_NUMERO WHERE photo.PHOTO_NUMERO=1 ";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};

module.exports.getPhotoPrecise = function(vumVip,numPhoto,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT vip.VIP_NUMERO as vip, photo.PHOTO_ADRESSE as addr, photo.PHOTO_COMMENTAIRE as comm" +
                " from vip join photo on photo.VIP_NUMERO=vip.VIP_NUMERO WHERE photo.PHOTO_NUMERO= "+ numPhoto + " and vip.VIP_NUMERO = "+vumVip;
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.getNbPhotoVip = function(vumVip,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT count(*) as nb from vip join photo on photo.VIP_NUMERO=vip.VIP_NUMERO WHERE vip.VIP_NUMERO = "+vumVip;
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};