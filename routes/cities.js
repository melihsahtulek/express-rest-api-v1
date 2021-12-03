const express = require("express");
const router = express.Router();
const controller = require("../controllers/citiesController");
const checkApiKey = require("../middleware/checkApiKey");

router.get("/", checkApiKey, (req, res) => controller.get(req, res));
router.post("/", checkApiKey, (req, res) => controller.post(req, res));
router.delete("/", checkApiKey, (req, res) => controller.delete(req, res));

module.exports = router;
