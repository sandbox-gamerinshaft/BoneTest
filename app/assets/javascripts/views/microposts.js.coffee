BackboneSebone.Views.Microposts || = {}

class BackboneSebone.Views.Microposts extends Backbone.View
  template: JST["micropost/microposts"]
  className: "micropost"

  render: ->
    @$el.html @template()
    return @