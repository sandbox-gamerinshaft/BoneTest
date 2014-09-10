BackboneSebone.Views.Microposts || = {}

class BackboneSebone.Views.Microposts.NewView extends Backbone.View
  template: JST["micropost/new"]
  className: "new-micropost"
  tagName: "form"

  events:
    "click #destroy" : "destroy"

  constructor: (options) ->
    super()
    @microposts = options.microposts
    @micropost  = new BackboneSebone.Models.Micropost()

  render: ->
    @$el.html @template()
    return @

