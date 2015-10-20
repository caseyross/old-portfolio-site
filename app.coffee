# node libraries
path = require 'path'

# web server
express = require 'express'
app = express()

# views and templating
app.set 'views', path.join __dirname, 'views'
app.set 'view engine', 'jade'

# stylesheets
stylus = require 'stylus'
app.use stylus.middleware
    src: path.join __dirname, '/public'
    compile: (str, path) ->
        stylus str
        .set 'filename', path
        .set 'compress', true

# static assets path
app.use express.static path.join __dirname, '/public'

# routes
app.get '/', (req, res) ->
    res.render 'index'

# startup
app.listen process.env.PORT
console.log 'Express server started on port %s', process.env.PORT