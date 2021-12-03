const express = require("express");
const router = express.Router();
const controller = require("../../controllers/admin/loginController");

router.post("/", (req, res) => controller.login(req, res));

module.exports = router;
