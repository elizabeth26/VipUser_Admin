let db = require('../configDb');


module.exports.test = function(callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT COUNT(*) AS NB FROM vip ;";
              // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};

module.exports.premiereLettreStar = function(callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "select DISTINCT Substring(VIP_NOM,1,1) as lettre from vip order by 1;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};

module.exports.StarCorrespondantaLettre = function(lettre,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "select VIP_NOM,VIP_PRENOM,PHOTO_ADRESSE,vip.VIP_NUMERO" +
                " from vip join photo on vip.VIP_NUMERO=photo.VIP_NUMERO " +
                "where Substring(VIP_NOM,1,1)="+"'"+lettre+"'"+" and PHOTO_NUMERO=1 order by 1;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};

module.exports.DetailStar = function (numero,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT VIP_NUMERO,VIP_NOM,VIP_PRENOM,VIP_SEXE,VIP_NAISSANCE,VIP_TEXTE,nationalite.NATIONALITE_NOM " +
                "from vip JOIN nationalite on vip.NATIONALITE_NUMERO = nationalite.NATIONALITE_NUMERO " +
                "where VIP_NUMERO="+numero;
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};

module.exports.MariageActeur = function (numero,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT vip.VIP_NUMERO,DATE_EVENEMENT,MARIAGE_LIEU,MARIAGE_FIN,MARIAGE_MOTIFFIN,vip.VIP_NOM,vip.VIP_PRENOM, Substring(VIP_TEXTE,1,50) as txt , PHOTO_ADRESSE " +
                "  FROM mariage join vip on mariage.VIP_VIP_NUMERO=vip.VIP_NUMERO join photo p on mariage.VIP_VIP_NUMERO = p.VIP_NUMERO " +
                " WHERE mariage.VIP_NUMERO=" + numero +" and p.PHOTO_NUMERO = 1 "+
                " UNION SELECT  vip.VIP_NUMERO,DATE_EVENEMENT,MARIAGE_LIEU,MARIAGE_FIN,MARIAGE_MOTIFFIN,vip.VIP_NOM,vip.VIP_PRENOM, Substring(VIP_TEXTE,1,50) as txt , PHOTO_ADRESSE " +
                "  FROM mariage join vip on mariage.VIP_NUMERO=vip.VIP_NUMERO join photo p on mariage.VIP_NUMERO = p.VIP_NUMERO " +
                " WHERE VIP_VIP_NUMERO="+numero + " and p.PHOTO_NUMERO = 1 ";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.liaision = function (numero,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql ="SELECT VIP_PRENOM,VIP_NOM,vip.VIP_NUMERO,DATE_EVENEMENT,LIAISON_MOTIFFIN , Substring(VIP_TEXTE,1,50) as txt , PHOTO_ADRESSE "+
            "FROM liaison join vip on liaison.VIP_VIP_NUMERO  = vip.VIP_NUMERO join photo p on liaison.VIP_VIP_NUMERO = p.VIP_NUMERO "+
            "WHERE liaison.VIP_NUMERO = "+ numero + " and p.PHOTO_NUMERO = 1 "+
          "  UNION "+
            "SELECT  VIP_PRENOM,VIP_NOM,vip.VIP_NUMERO,DATE_EVENEMENT,LIAISON_MOTIFFIN, Substring(VIP_TEXTE,1,50) as txt , PHOTO_ADRESSE "+
            "FROM liaison join vip on liaison.VIP_VIP_NUMERO  = vip.VIP_NUMERO join photo p on liaison.VIP_NUMERO = p.VIP_NUMERO "+
            "WHERE liaison.VIP_VIP_NUMERO = "+numero+" and p.PHOTO_NUMERO = 1 " ;
           //  console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.EstActeur = function (numero,callback) { /*RETOUR NULL SI NON ACTEUR OU TITRE DES FILM JOUER  ET AUTRE INFO*/
    db.getConnection(function(err, connexion) {
        if (!err) {
                let sql = "SELECT FILM_TITRE,FILM_DATEREALISATION ,ROLE_NOM, vip.VIP_NOM,vip.VIP_PRENOM , vip.VIP_NUMERO, Substring(VIP_TEXTE,1,50) as txt , PHOTO_ADRESSE "+
            " FROM film join joue on joue.FILM_NUMERO=film.film_NUMERO join vip on film.VIP_NUMERO = vip.VIP_NUMERO join photo p on vip.VIP_NUMERO = p.VIP_NUMERO "+
            " WHERE p.PHOTO_NUMERO = 1 and joue.VIP_NUMERO="+numero;
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};

module.exports.EstChanteur = function (numero,callback) { /*RETOUR NULL SI NON Chanteur OU TITRE DES album  ET AUTRE INFO*/
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "select CHANTEUR_SPECIALITE,a.ALBUM_TITRE,a.ALBUM_DATE,m.MAISONDISQUE_NOM" +
                " FROM chanteur c join composer co on c.VIP_NUMERO=co.VIP_NUMERO " +
                " join album a on co.ALBUM_NUMERO=a.ALBUM_NUMERO " +
                " join maisondisque m on m.MAISONDISQUE_NUMERO=a.MAISONDISQUE_NUMERO" +
                " where c.VIP_NUMERO="+numero;
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.EstMannequin = function (numero,callback) { /*RETOUR NULL SI NON Chanteur OU TITRE DES album  ET AUTRE INFO*/
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT a.AGENCE_NOM, d.DEFILE_LIEU,d.DEFILE_DATE,v.VIP_NOM , v.VIP_PRENOM , v.VIP_NUMERO , Substring(VIP_TEXTE,1,50) as txt , PHOTO_ADRESSE "+
            " from"+
           " apouragence ap  join agence a on ap.AGENCE_NUMERO=a.AGENCE_NUMERO"+
            " join defiledans dd on dd.VIP_NUMERO=ap.VIP_NUMERO"+
            " join defile d on d.DEFILE_NUMERO=dd.DEFILE_NUMERO"+
            " join couturier c on c.VIP_NUMERO=d.VIP_NUMERO"+
            " join vip v on v.VIP_NUMERO=d.VIP_NUMERO"+
            " join photo p on v.VIP_NUMERO = p.VIP_NUMERO"+
            " where ap.VIP_NUMERO="+numero+" and p.PHOTO_NUMERO = 1 ";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.EstRealisateur = function (numero,callback) { /*RETOUR NULL SI NON real OU TITRE DES film  ET AUTRE INFO*/
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT f.FILM_TITRE , f.FILM_DATEREALISATION" +
                " from film f RIGHT join realisateur r on r.VIP_NUMERO = f.VIP_NUMERO WHERE r.VIP_NUMERO =" +numero;
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.EstCouturier = function (numero,callback) { /*RETOUR NULL SI NON real OU TITRE DES film  ET AUTRE INFO*/
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT defile.DEFILE_LIEU,defile.DEFILE_DATE" +
                " from defile RIGHT join couturier on defile.VIP_NUMERO=couturier.VIP_NUMERO WHERE couturier.VIP_NUMERO=" +numero;
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.listeImage = function (numero,callback) { /*RETOUR NULL SI NON real OU TITRE DES film  ET AUTRE INFO*/
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT PHOTO_ADRESSE,PHOTO_NUMERO,PHOTO_COMMENTAIRE,PHOTO_SUJET from  photo WHERE VIP_NUMERO="+numero +" ORDER BY PHOTO_NUMERO";
             console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};