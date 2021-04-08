require('dotenv').config();
const service = {};
const axios = require('axios').default;
const log = require('./logService');



service.getSearch = async (query) => {
    let params = '?apikey=faf7e5bb&s&s='+query;
    let endpoint = 'http://www.omdbapi.com/'
    try {
        let data = await axios({
            method: 'get',
            url: endpoint+params,
            }).then(async(result) => {
                let createlog = await log.doCreateLog(params,endpoint);
                if(createlog){
                    return result.data.Search;
                }
              }).catch((err) => {
                return err.response;
              });
            return data;
    } catch (error) {
        return [];
    }
}

service.getDetail = async (id) => {
    let params = '?apikey=faf7e5bb&s&i='+id;
    let endpoint = 'http://www.omdbapi.com/'
    try {
        let data = await axios({
            method: 'get',
            url: endpoint+params,
            }).then(async(result) => {
                let createlog = await log.doCreateLog(params,endpoint);
                if(createlog){
                    return result.data;
                }
              }).catch((err) => {
                return err.response;
              });
            return data;
    } catch (error) {
        return [];
    }
}
module.exports=service