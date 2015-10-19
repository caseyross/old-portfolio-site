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
        
# database
#db_url = 'mongodb://localhost:27017/'
#mongodb = require 'mongodb'
#mongodb.MongoClient.connect db_url, (err, db) ->
    #if err
        #console.log 'Could not connect to MongoDB instance'
    #else
        #console.log 'Connected to MongoDB instance'

# static assets path
app.use express.static path.join __dirname, '/public'

# routes
app.get '/', (req, res) ->
    res.render 'index'

# startup
app.listen process.env.PORT
console.log 'Express server started on port %s', process.env.PORT