const express = require("express");
const path = require("path");

const app = express();
const PORT = 8085;

// Serve only the static files form the dist directory
app.use(express.static(path.join(__dirname, "/build")));

app.get("/*", function (req, res) {
    console.log("Express Req : ", req);
    res.sendFile(path.join(__dirname + "/index.html"));
});

// Start the app by listening on the default Heroku port
app.listen(process.env.PORT || PORT, () => {
    console.log("Connected App to ", PORT);
});