
exports.index = (req, res) ->
  res.render 'index', title: 'Express'

exports.list = (req, res) ->
  res.send 'respond with a resource'
