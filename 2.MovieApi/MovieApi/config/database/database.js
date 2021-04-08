require('dotenv').config();
const Sequelize = require('sequelize');
const db = new Sequelize('heroku_c200a41c740d9f7', 'b46117844dfcb6', 'fecc71fc', {
	dialect: 'mysql',
	host: 'us-cdbr-east-03.cleardb.com',
	pool: {
		max: 5,
		min: 0,
		idle: 1000,
	}
});

module.exports = db;
