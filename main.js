console.log(process.env)
console.log(require(process.env.GITHUB_EVENT_PATH || '.'))