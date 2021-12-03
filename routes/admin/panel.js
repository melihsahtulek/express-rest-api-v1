const express = require("express");
const router = express.Router();
const controller = require("../../controllers/admin/panelController.js");
const checkAuth = require("../../middleware/admin/checkAuth");

router.get("/", checkAuth, (req, res) => controller.adminInfo(req, res));

module.exports = router;
