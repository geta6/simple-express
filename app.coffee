http = require 'http'
path = require 'path'
express = require 'express'
routes = require path.resolve 'routes'

app = express()

app.set 'port', process.env.PORT || 3000
app.set 'views', path.resolve 'views'
app.set 'view engine', 'jade'
app.use express.favicon()
app.use express.logger 'dev'
app.use express.bodyParser()
app.use express.methodOverride()
app.use (require 'connect-assets') buildDir: 'public'
app.use app.router
app.use express.static path.resolve 'public'

if app.get 'env' is 'development'
  app.use express.errorHandler()

app.get '/', routes.index

http.createServer(app).listen (app.get 'port'), ->
  console.log "Express server listening on port #{app.get 'port'}"
