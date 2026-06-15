File.cd "/data/data/com.termux/files/usr/local/Elixir/viaBrowserProject/";
Application.load :viabrowser;
a=Viabrowser.f(); IO.puts a; Application.stop :viabrowser; Application.unload :viabrowser; exit :normal;
