const service = {};
const axios = require('axios').default;
const log = require('./logService');
require('dotenv').config();


service.getSearch = async (query) => {
    let params = '?apikey='+process.env.API_KEY+'&s='+query;
    let endpoint = process.env.API_MOVIE
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
                  console.log(err)
                return err.response;
              });
            return data;
    } catch (error) {
       return[];
    }
}

service.getDetail = async (id) => {
    let params = '?apikey='+process.env.API_KEY+'&i='+id;
    let endpoint = process.env.API_MOVIE
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
        return[];
    }
}

module.exports=service