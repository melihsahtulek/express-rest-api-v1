const express = require("express");
const router = express.Router();
const controller = require("../controllers/placeController");

router.get("/:id", (req, res) => controller.get(req, res));

module.exports = router;
