const jwt = require("jsonwebtoken");

module.exports = {
  adminInfo: (req, res) => {
    res.status(200).json({
      admin_info: req.user,
      message: "welcome admin panel!",
      status: "ok",
    });
  },
};
