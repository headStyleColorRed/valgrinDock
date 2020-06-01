
const express = require("express")
const app = express();
const puerto = parseInt(process.env.PORT, 10) || 8050;
const bodyParser = require("body-parser")
const Cors = require("cors")
const shell = require('shelljs')
const multer = require('multer');
const forms = multer();

// Modules
const valgrindManager = require("./valgrindManager.js")

// Middlewares
app.use(Cors());
app.use(bodyParser.json());
app.use(forms.array()); 
app.use(bodyParser.urlencoded({extended: false}))

// Open port
app.listen(puerto, () => console.log("Listening port " + puerto))

// ++++++++++++++++ HTTP METHODS +++++++++++++++++++ //

app.get("/", (req, res) => {
	res.send("We are up and going!!")
})

app.get("/compile", (req, res) => {


	valgrindManager.compileFile().then((answer) => {
		console.log(answer);
		res.send(answer)
	})
})
