BackboneSebone.Views.Microposts || = {}

class BackboneSebone.Views.Microposts.MicropostView extends Backbone.View
  template: JST["micropost/microposts"]
  className: "micropost"
  constructor: (options) ->
    super()
    @micropost = options.micropost

  render: ->
    @$el.html @template(micropost: @micropost)
    return @