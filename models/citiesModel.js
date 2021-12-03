const db_connect = require("../db_connect");

module.exports = {
  get: (f) => {
    db_connect.query("SELECT * FROM cities", (err, rows) => {
      if (err) {
        f({ error: true, data: null });
      } else {
        f({ error: false, data: rows });
      }
    });
  },
  set: (json, f) => {
    db_connect.query(`INSERT INTO cities (city_name) VALUES ("${json.cityName}")`, (err, rows) => {
      if (err) {
        f({ error: true, data: null });
      } else {
        f({ error: false, msg: "added new item to database..." });
      }
    });
  },
  delete: (json, f) => {
    db_connect.query(`DELETE FROM cities WHERE id = ${json.id}`, (err, rows) => {
      if (err) {
        f({ error: true, data: null });
      } else {
        f({ error: false, msg: "deleted data from database!" });
      }
    });
  },
};
