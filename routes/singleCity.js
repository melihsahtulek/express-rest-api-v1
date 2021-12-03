const express = require("express");
const router = express.Router();
const controller = require("../controllers/singleCityController");
const checkApiKey = require("../middleware/checkApiKey");

router.get("/:id", checkApiKey, (req, res) => controller.get(req, res));

module.exports = router;
