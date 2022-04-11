defprotocol ExDeploySpecs.Hot do
  def can_reload?(mod)
  def on_reload_start(mod)
  def on_reload_finished(mod)
end
