
const {hostname} = require('os')
const http = require('http')
const port = 8080

const message = 'Hello, running this api in aws ec2'
const server = http.createServer((req, res) => {
    res.statusCode = 200
    res.setHeader('Content-Type', 'text/plain')
    res.end(message)
})

// @ts-ignore
server.listen(port, hostname, () => {
    console.log(`Server is running at http://${hostname()}:${port}/`)
})