# this script can be run inside iex shell or elixir sh script after option argument
#IO.puts '#{System.argv}';
#IO.puts "test";
#IO.puts ("Test");
#IO.puts """
#t
#""";
#System.Shell "am start -n mark.via.gp/mark.via.Shell -d 'bing.com'";
#a=self();
#a=pid("0.105.0");

#a="bing.com";
#a="exec tcsh -bcft 'am start -n mark.via.gp/mark.via.Shell -d '"<>a<>"'';";
#System.shell a;

#a=System.argv; b=List.to_string a; c="exec tcsh -bcft printf t > /dev/pts/0;";
##System.shell "exec tcsh -bcft echo -n "<>b<>" >> /dev/pts/0;";
#System.shell c;
#System.shell "exec tcsh -bcft '(sleep 10s && echo `pstree -ap` >> /dev/pts/1;&);&'";

#Process.exit self(),:normal; IO.puts self();
#a=Application.loaded_applications; IO.puts Enum.count a; Enum.each a,fn x -> IO.puts Kernel.inspect x; end
