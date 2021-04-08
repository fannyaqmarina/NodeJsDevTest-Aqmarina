const Sequelize = require('sequelize');
const db = require('../../database/database');

const table = db.define('log_access',
	{
		id: { 
            type: Sequelize.INTEGER, 
            primaryKey: true, 
            autoIncrement:true },
		endpoint: Sequelize.STRING,
		params: Sequelize.STRING,
		created_date: Sequelize.DATE
	}
);

module.exports = table;



// module.exports = (sequelize, Sequelize) => {
//     const Tutorial = sequelize.define("tutorial", {
//       title: {
//         type: Sequelize.STRING
//       },
//       description: {
//         type: Sequelize.STRING
//       },
//       published: {
//         type: Sequelize.BOOLEAN
//       }
//     });
  
//     return Tutorial;
//   };