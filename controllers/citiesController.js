const model = require("../models/citiesModel");

module.exports = {
  get: (req, res) => {
    const f = (result) => {
      if (result.error) {
        res.status(404).json({ errorStatus: 404, errorText: "Not found..." });
      } else {
        res.status(200).json(result.data);
      }
    };
    model.get(f);
  },
  post: (req, res) => {
    const f = (result) => {
      if (result.error) {
        res.status(404).json({ errorStatus: 404, errorText: "Not found..." });
      } else {
        res.status(200).json(result);
      }
    };
    model.set(req.body, f);
  },
  delete: (req, res) => {
    const f = (result) => {
      if (result.error) {
        res.status(404).json({ errorStatus: 404, errorText: "Not found..." });
      } else {
        res.status(200).json(result);
      }
    };
    model.delete(req.body, f);
  },
};
