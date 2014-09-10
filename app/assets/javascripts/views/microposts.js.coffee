BackboneSebone.Views.Microposts || = {}

class Sebone.Views.Microposts extends Backbone.View
  template: JST["micropost/microposts"]
  className: "micropost"

  render: ->
    @$el.html @template()
    return @