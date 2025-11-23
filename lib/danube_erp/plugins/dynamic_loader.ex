defmodule DanubeErp.Plugins.DynamicLoader do
  @moduledoc false
  @plugins_dir Path.expand("lib/plugins", File.cwd!())

  def load_plugins do
    if File.exists?(@plugins_dir) do
      @plugins_dir
      |> File.ls!()
      |> Enum.filter(&String.ends_with?(&1, ".ex"))
      |> Enum.each(fn file ->
        Code.compile_file(Path.join(@plugins_dir, file))
      end)
    end
  end
end
