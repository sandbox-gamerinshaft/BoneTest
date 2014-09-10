BackboneSebone.Views.Microposts || = {}

class BackboneSebone.Views.Microposts.MicropostView extends Backbone.View
  template: JST["micropost/microposts"]
  className: "micropost"

  events:
    "click #destroy" : "destroy"

  constructor: (options) ->
    super()
    @micropost = options.micropost

  render: ->
    @$el.html @template(micropost: @micropost)
    return @

  destroy: ->
    if confirm("本当に削除しますか？")
      @micropost.destroy()
      @remove()