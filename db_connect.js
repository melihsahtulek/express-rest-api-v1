const mysql = require("mysql");

const con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "api_test_db",
  multipleStatements: true,
});

con.connect((err) => {
  err && console.log(`Connection error!`);
  console.log("Connected!");
});

module.exports = con;
