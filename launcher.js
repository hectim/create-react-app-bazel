// const { spawn } = require('child_process')
const { exec } = require('child_process');
const path = require('path');
const appDir = path.dirname(require.main.filename);
const entrypoint = `${appDir}/public/index.html`

// Bazel doesn't seem to output to stdout so this WORKS but you don't get
// any feedback in the terminal as to whats happening. Probably this would
// work better if written as as shell script, but I lack the expertise.
exec(`bazel run :parcel ${entrypoint}`, (err, stdout, stderr) => {
  if (err) {
    console.log('Error running the thingy...')
    return;
  }
  console.log(`stdout: ${stdout}`);
  console.log(`stderr: ${stderr}`);
});


// const child = spawn('bazel run :parcel')

// child.stdout.on('data', (chunk) => {
//   console.log(chunk.toString('utf8'))
// })

// child.on('close', (code) => {
//   console.log(`child process exited with code ${code}`);
// });