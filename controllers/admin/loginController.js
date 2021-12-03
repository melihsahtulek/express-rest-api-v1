const model = require("../../models/admin/loginModel");
const jwt = require("jsonwebtoken");

module.exports = {
  login: (req, res) => {
    let { adminMail, adminPassword } = req.body;

    const f = (result) => {
      if (result.error) {
        res.status(401).json({ errorStatus: 401, errorText: "Please check your email or password..." });
      } else {
        const token = jwt.sign({ adminMail, adminPassword }, process.env.API_KEY_SECRET_KEY, { expiresIn: "1m" });
        res.status(200).json({ yourToken: token, status: "ok" });
      }
    };

    model.get(adminMail, adminPassword, f);
  },
};
