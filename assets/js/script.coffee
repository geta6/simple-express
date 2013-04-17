throw new Error 'jQuery not installed' unless jQuery?
throw new Error 'underscore not installed' unless _?
throw new Error 'underscore.string not installed' unless _.str?

$ ->
  console.log 'coffee enabled'