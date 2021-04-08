const movieService = require('./movieService');
const logService = require('./logService');


const service = {};
service.movieService = movieService;
service.logService = logService;

module.exports=service;