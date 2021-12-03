module.exports = (req, res, next) => {
  if (req.headers["api-key"] === process.env.API_KEY) {
    console.log(`${req.method} - ${req.url} - ${res.statusCode}`);
    next();
  } else {
    res.status(401).json({ errorStatus: 401, errorText: "unauthorized access!" });
  }
};
