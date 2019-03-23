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
module.exports.SuppVipPhoto = function(numVip,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "Delete from photo where VIP_NUMERO = "+numVip+" ;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.SuppVipComporte = function(numVip,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "Delete from comporte where VIP_NUMERO = "+numVip+" ;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.SuppVipAPourSujet = function(numVip,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "Delete from apoursujet where VIP_NUMERO = "+numVip+" ;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};

module.exports.SuppVipDefileDans = function(numVip,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "Delete from defiledans where VIP_NUMERO = "+numVip+" ;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.SuppVipDefile = function(numVip,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "Delete from defile where VIP_NUMERO = "+numVip+" ;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.SuppVipAPourAgence = function(numVip,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "Delete from apouragence where VIP_NUMERO = "+numVip+" ;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.SuppVipMannequin = function(numVip,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "Delete from mannequin where VIP_NUMERO = "+numVip+" ;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.SuppVipLiason = function(numVip,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "Delete from liaison where VIP_NUMERO = "+numVip+" ;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.SuppVipLiason2 = function(numVip,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "Delete from liaison where VIP_VIP_NUMERO = "+numVip+" ;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.SuppVipMariage = function(numVip,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "Delete from mariage where VIP_NUMERO = "+numVip+" ;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.SuppVipMariage2 = function(numVip,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "Delete from mariage where VIP_VIP_NUMERO = "+numVip+" ;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.SuppVipRealisateur = function(numVip,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "Delete from realisateur where VIP_NUMERO = "+numVip+" ;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.SuppVipFilm = function(numVip,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "Delete from film where VIP_NUMERO = "+numVip+" ;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.SuppVipActeur = function(numVip,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "Delete from acteur where VIP_NUMERO = "+numVip+" ;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.SuppVipJoue = function(numVip,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "Delete from joue where VIP_NUMERO = "+numVip+" ;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.SuppVipComposer = function(numVip,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "Delete from composer where VIP_NUMERO = "+numVip+" ;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.SuppVipChanteur = function(numVip,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "Delete from chanteur where VIP_NUMERO = "+numVip+" ;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.SuppVip = function(numVip,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "Delete from vip where VIP_NUMERO = "+numVip+" ;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};