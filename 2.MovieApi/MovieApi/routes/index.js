var express = require('express');
var router = express.Router();
const controller = require('../controllers/index');

router.get('/searchMovie', controller.movie.getSearch);
router.get('/detailMovie', controller.movie.getDetail);
router.get('/detailMovie/:movieId', controller.movie.getDetailParams);

module.exports = router;
