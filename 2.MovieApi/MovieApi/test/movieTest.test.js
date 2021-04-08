const service = require('../service/service');
const request = require('supertest');
const server = require('../bin/www');

describe("Testing LogService", () => {
    it("Test Insert to Log access", async () => {
        const result = await service.logService.doCreateLog('test','http://www.omdbapi.com/');
        expect(result.success);
    });
});

describe("Testing Movie Service", () => {
    it("Test Search Movie by title and found it!", async () => {
        const result = await service.movieService.getSearch('avengers');
        expect(result).toEqual(expect.any(Array))
    });
    it("Test Search Movie by title and NOT found", async () => {
        const result = await service.movieService.getSearch('test1');
        expect.not.arrayContaining(result)
    });
    it("Test Detail Movie by movieId and found it!", async () => {
        const result = await service.movieService.getDetail('tt0118661');
        expect(result).toEqual(expect.any(Object))
    });
    it("Test Detail Movie by movieId and NOT found", async () => {
        const result = await service.movieService.getDetail('test1');
        expect.not.objectContaining(result)
    });

});
