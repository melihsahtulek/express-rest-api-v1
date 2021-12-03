const express = require("express");
require("dotenv").config();

const app = express();
app.use(express.json());

const homeRouter = require("./routes/cities");
const singleCityRouter = require("./routes/singleCity");
const placeRouter = require("./routes/place");
const loginRouter = require("./routes/admin/login");
const panelRouter = require("./routes/admin/panel");

app.use("/", homeRouter);
app.use("/city", singleCityRouter);
app.use("/city/:city_id/place", placeRouter);
app.use("/login", loginRouter);
app.use("/panel", panelRouter);

app.listen(3000);
