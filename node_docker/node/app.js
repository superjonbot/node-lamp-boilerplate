const express = require('express')
const app = express()
var project_router = require('./project');

app.use('/project', project_router)

app.get('/', function (req, res) {
    res.send('Hello World!')
})

app.post('/', function (req, res) {
    res.send('Got a POST request')
})

app.use(express.static('myapp/public'))

app.listen(3000, function () {
    console.log('Node app listening on port 3000, wordpress lamp on port 8080')
})