content = "Now is the time"

lp = with {:ok, file}   = File.open("/etc/passwd"), # Tuple pattern match return from File.open function
          content       = IO.read(file, :all), # specific atom :all argument, uses file from "with" Expression
          :ok           = File.close(file), # file from "with" Expression
          [_, uid, gid] = Regex.run(~r{lp:.*?:(\d+):(\d+)}, content) # pattern match results from regex expression
     do
          "Group: #{gid}, User: #{uid}"
     end

IO.puts lp #=> Group: 26, User: 26
IO.puts content #=> Now is the time
