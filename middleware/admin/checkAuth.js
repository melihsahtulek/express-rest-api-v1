const jwt = require("jsonwebtoken");

module.exports = (req, res, next) => {
  const response = () => {
    res.status(401).json({ errorStatus: 401, errorText: "unauthorized access!" });
  };

  if (req.headers["authorization"]) {
    const token = req.headers["authorization"]?.split(" ")[1];
    jwt.verify(token, process.env.API_KEY_SECRET_KEY, (err, user) => {
      if (err) {
        response();
      } else {
        req.user = user;
        next();
      }
    });
  } else {
    response();
  }
};
