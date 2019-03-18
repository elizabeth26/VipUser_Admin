
// ////////////////////// L I S T E R     A L B U M S
let model = require("../models/album.js");
let async = require('async');
module.exports.ListerAlbum = 	function(request, response){
    var num = request.params.numero;
    async.parallel([
        function (callback){
            model.getFirstPhoto(num,function (err, result) {callback(null,result)});
        },
        function (callback){
            model.nbPhoto(function (err, result) {callback(null,result)});
        }
        ],
        function (err, result) {
            if (err) {
                console.log(err);
                return;
            }
            response.photoAddr = result[0];
            nbPhoto = result[1][0];
            response.nbPageMax = parseInt(nbPhoto.nb/12);

            if (num < nbPhoto.nb / 12)
                response.next = parseInt(num) + 1;

            if (num >= 1){
                response.previous = parseInt(num) - 1;
                //console.log(response.previous);
            }
            response.num = num;
            response.title = 'Album des stars';
            response.render('listerAlbum', response);
        })
  } ;

module.exports.photoVip = 	function(request, response){
    var num = request.params.numero;
    var vipNum = request.params.vip;
    var photoNum = request.params.numPhoto;
    async.parallel([
            function (callback){
                model.getFirstPhoto(num,function (err, result) {callback(null,result)});
            },
            function (callback){
                model.nbPhoto(function (err, result) {callback(null,result)});
            },
            function (callback){
                model.getPhotoPrecise(vipNum,photoNum,function (err, result) {callback(null,result)});
            },
            function (callback){
                model.getNbPhotoVip(vipNum,function (err, result) {callback(null,result)});
            },
        ],
        function (err, result) {
            if (err) {
                console.log(err);
                return;
            }

            response.photoAddr = result[0];
            nbPhoto = result[1][0];
            response.photoVip = result[2];
            response.nbPageMax = parseInt(nbPhoto.nb/12);
            response.numPhoto = photoNum;
            response.vip = vipNum;
            response.photoMax = result[3][0].nb;
            if (photoNum >= 1)
                response.photoPrevious = parseInt(photoNum)-1;
            if (photoNum < response.photoMax)
                response.photoNext =  parseInt(photoNum)+1;
            if (num < nbPhoto.nb / 12)
                response.next = parseInt(num) + 1;

            if (num >= 1){
                response.previous = parseInt(num) - 1;
                //console.log(response.previous);
            }
            response.num = num;
            response.title = 'Album des stars';
            response.render('listerAlbum', response);
        })
} ;
