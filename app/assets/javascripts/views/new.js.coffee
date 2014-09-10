BackboneSebone.Views.Microposts || = {}

class BackboneSebone.Views.Microposts.MicropostView extends Backbone.View
  template: JST["micropost/microposts/new"]
  className: "new-micropost"
  tagName: "form"

  events:
    "click #destroy" : "destroy"

  constructor: (options) ->
    super()
    @microposts = options.microposts
    @micropost  = new Sebone.Models.Micropost()

  render: ->
    @$el.html @template()
    return @

