// const { spawn } = require('child_process')
const { exec } = require('child_process');
const path = require('path');
const appDir = path.dirname(require.main.filename);
const entrypoint = `${appDir}/public/index.html`

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