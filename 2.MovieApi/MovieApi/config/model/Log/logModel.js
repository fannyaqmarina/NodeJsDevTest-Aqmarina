const Sequelize = require('sequelize');
const db = require('../../database/database');

const table = db.define('log_access',
	{
		id: { 
            type: Sequelize.STRING, 
            primaryKey: true },
		endpoint: Sequelize.STRING,
		params: Sequelize.STRING,
		created_date: Sequelize.DATE
	},{
		freezeTableName: true,
		timestamps: false,
	}
);

module.exports = table;