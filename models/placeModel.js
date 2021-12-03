const db_connect = require("../db_connect");

module.exports = {
  get: (id, f) => {
    db_connect.query(`SELECT * FROM places_to_visit_info WHERE place_id=${id}`, (err, rows) => {
      if (err) {
        f({ error: true, data: null });
      } else {
        f({ error: false, data: rows });
      }
    });
  },
};
