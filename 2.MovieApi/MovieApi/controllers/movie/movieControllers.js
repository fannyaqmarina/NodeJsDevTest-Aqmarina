const controller = {};
const status = require('../../helpers/status_helper');
const service = require('../../service/service');

controller.getSearch = async function (req, res) {
    let keyword = req.query.keyword;
    try {
        let listMovie = await service.movieService.getSearch(keyword);
        if (listMovie.length > 0) {
            let rs = status.successMessage("Data berhasil ditampilkan", listMovie);
            res.status(status.statusCode.success).json(rs);
          } else {
            res.status(status.statusCode.success).json(status.emptyMessage([]));
          }
    } catch (error) {
        res.status(status.statusCode.error).json(status.errorMessage(error));
    }
}

controller.getDetail = async function (req, res) {
    let movieId = req.query.movieId;
    try {
        let detailMovie = await service.movieService.getDetail(movieId);
        console.log(detailMovie)
        if (detailMovie) {
            let rs = status.successMessage("Data berhasil ditampilkan", detailMovie);
            res.status(status.statusCode.success).json(rs);
          } else {
            res.status(status.statusCode.success).json(status.emptyMessage([]));
          }
    } catch (error) {
        res.status(status.statusCode.error).json(status.errorMessage(error));
    }
}




module.exports=controller;