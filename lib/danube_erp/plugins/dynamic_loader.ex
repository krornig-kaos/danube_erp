defmodule DanubeErp.Plugins.DynamicLoader do
  @plugins_dir Path.expand("lib/plugins_dynamic", File.cwd!())

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
