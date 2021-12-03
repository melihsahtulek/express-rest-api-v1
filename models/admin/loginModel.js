const db_connect = require("../../db_connect");

module.exports = {
  get: (adminMail, adminPassword, f) => {
    db_connect.query(`SELECT * FROM admin WHERE email = "${adminMail}" AND password ="${adminPassword}"`, (err, rows) => {
      if (err || rows.length === 0) {
        f({ error: true, data: null });
      } else {
        f({ error: false, data: rows });
      }
    });
  },
};
