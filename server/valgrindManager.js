
const shell = require('shelljs');
const fs = require("fs")
const file = `${__dirname}/logs/log.txt`;

async function compileFile() {
	let promise = new Promise((resolve, reject) => {
		// shell.exec(`gcc -g executables/main.c`)
		// shell.exec("mv *.out executables/")
		setTimeout(() => {
			// shell.exec(`valgrind executables/./a.out  > log.txt 2>&1`)
			// shell.exec("mv *.txt server/logs")

			var fileContents;
			try {
				fileContents = fs.readFileSync(file, 'utf8')
				resolve(fileContents)
			} catch (err) {
				resolve(err)
			}
		}, 500);
	})

	shell.exec(`echo ' ' > ${file}`)
	let result = await promise
	return result
}

module.exports = {
	compileFile
}