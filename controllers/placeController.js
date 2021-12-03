const model = require("../models/placemodel");

module.exports = {
  get: (req, res) => {
    const f = (result) => {
      if (result.error) {
        res.status(404).json({ errorStatus: 404, errorText: "Not found..." });
      } else {
        res.status(200).json(result.data);
      }
    };
    model.get(req.params.id, f); // id
  },
};
