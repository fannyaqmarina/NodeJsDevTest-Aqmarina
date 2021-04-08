const model = require('../config/model/index');
const moment = require('moment');
const { v4: uuidv4 } = require('uuid');
const service = {};

service.doCreateLog = async (params, endpoint) => {
    let createdAt = moment(Date.now()).utcOffset(420).format('YYYY-MM-DD HH:mm')
    let result = await model.logModel.create({
        id:uuidv4(),
        endpoint:endpoint,
        params:params,
        created_date:createdAt
    });
    return result;
  };

  module.exports=service