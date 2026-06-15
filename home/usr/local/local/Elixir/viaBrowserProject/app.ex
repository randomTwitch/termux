defmodule Viabrowser.App do
  @moduledoc false

  use Application
  @impl true
  def load(_type, _args) do
    File.cd "/data/data/com.termux/files/usr/local/Elixir/viaBrowserProject/";
    Application.load :viabrowser;
  end
  @impl true
  def start(_type, _args) do
    children = [IEx.Config, IEx.Broker, IEx.Pry]
    Supervisor.start_link(children, strategy: :one_for_one, name: IEx.Supervisor)
    Process.sleep 10000
    IO.puts "STARTED"<>Kernel.inspect self();
    Process.sleep 10000
    Viabrowser.f()
  end
  @impl true
  def stop(_type, _args) do
    Application.stop :viabrowser;
  end
  @impl true
  def unload(_type, _args) do
    Application.unload :viabrowser;
  end
end

